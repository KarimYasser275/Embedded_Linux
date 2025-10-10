# Jetson Nano From-Scratch Build Guide (ct-ng toolchain, U-Boot, Tegra Kernel, dash initramfs)

## Requirements
- Build AArch64 cross-compiler using crosstool-ng (musl preferred)
- Build U-Boot for Jetson Nano and flash to eMMC
- Build Linux Image and DTB for Nano
- Build static dash and create initramfs with dash as PID 1
- Put Image, DTB, rootfs.cpio.gz, and extlinux.conf on SD /boot
- Boot & verify: U-Boot → kernel → dash prompt (PID 1, interactive)

## Host prerequisites
```bash
sudo apt update
sudo apt install -y build-essential git gperf bison flex texinfo help2man gawk libtool-bin \
  libncurses5-dev unzip xz-utils curl wget python3 python3-distutils rsync bc kmod cpio \
  libssl-dev device-tree-compiler libelf-dev swig pkg-config cmake qemu-user-static \
  parted dosfstools e2fsprogs mtools u-boot-tools minicom screen picocom
```

---

## 1) Build aarch64 toolchain with crosstool-NG

### Get crosstool-NG
```bash
# Clone the crosstool-NG repository - this is the tool that builds cross-compilation toolchains
git clone https://github.com/crosstool-ng/crosstool-ng.git ~/ct-ng
cd ~/ct-ng

# Use a known-good stable tag to avoid bleeding edge issues
# Version 1.26.0 is well-tested and stable
git checkout crosstool-ng-1.26.0

# Bootstrap the build system (generates configure script)
./bootstrap

# Configure with local installation (no root privileges needed)
# --enable-local builds everything in the source directory
./configure --enable-local

# Compile crosstool-NG itself
make
```

### Configure aarch64 glibc toolchain
```bash
# Create directory for our cross-toolchain output
mkdir -p ~/x-tools

# Set the prefix directory where toolchain will be installed
export CT_PREFIX_DIR=~/x-tools

# Add crosstool-NG to PATH so we can run ct-ng commands
export PATH="$PATH:$(pwd)"

# List available sample configurations to see what's available
ct-ng list-samples | grep -E "aarch64.*glibc"

# Select the aarch64-unknown-linux-gnu configuration
# This creates a 64-bit ARM toolchain targeting Linux with glibc
ct-ng aarch64-unknown-linux-gnu

# Open the configuration menu to customize settings
ct-ng menuconfig
```

**Key `menuconfig` configuration hints:**
- **Paths and misc options** → Set `CT_PREFIX_DIR` to `~/x-tools`
- **C library** → Select `glibc` (most compatible) or `musl` (smaller, embedded-friendly)
- **Kernel headers** → Use same major version as L4T you target:
  - For L4T R32.x: use 4.9.x headers
  - For L4T R35.x: use 5.10.x headers
  - For L4T R36.x: use 5.15.x headers
- **Binutils version** → Pick recent stable version (2.38+ recommended)
- **GCC version** → Use GCC 11.x or 12.x (avoid bleeding edge)
- **Glibc version** → Use 2.35+ for good compatibility
- **Musl version** → Use 1.2.x for good compatibility (if using musl)

**Build the toolchain:**
```bash
# Start the build process - this will take 30-60 minutes depending on your CPU
# The build downloads, configures, and compiles GCC, glibc, binutils, etc.
ct-ng build

# After successful build, set up environment variables for cross-compilation
# This tells make and other build tools where to find our cross-compiler
export CROSS_COMPILE=~/x-tools/aarch64-unknown-linux-gnu/bin/aarch64-unknown-linux-gnu-
export ARCH=arm64

# Verify the toolchain works
aarch64-unknown-linux-gnu-gcc --version
```

---

## 2) Get NVIDIA L4T sources (kernel, dtbs, firmware)

**Choose an L4T release matching your Nano's bootloader** - check your board's eMMC/SD image version. This example uses L4T R32.7.4 (commonly used for Nano).

```bash
# Create our main working directory
mkdir -p ~/jetson
cd ~/jetson

# Clone NVIDIA's Linux kernel with Tegra support
# The jetson-nano-r32.7.4 branch contains kernel sources specifically for Jetson Nano
# This includes Tegra-specific drivers, device trees, and patches
git clone https://github.com/NVIDIA/linux-nvidia.git -b jetson-nano-r32.7.4 linux-tegra

# Note: Tegra device-tree sources are included within this repository
# They're located in arch/arm64/boot/dts/nvidia/
# Firmware files will be installed later into rootfs
```

**Alternative: Mainline kernel** (advanced users only):
```bash
# If you prefer mainline kernel instead of L4T:
# git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git linux-mainline
# cd linux-mainline
# git checkout v5.15  # or your preferred version
# 
# Note: Mainline requires more manual configuration and may lack some Tegra-specific features
# L4T is strongly recommended for first bring-up
```

---

## 3) Build U-Boot for Jetson Nano

**Understanding the boot process:**
The Nano ships with NVIDIA's proprietary boot chain (CBoot). Community U-Boot support exists, and NVIDIA provides U-Boot within L4T sources. For R32.7.4, we'll build the L4T U-Boot tree.

```bash
cd ~/jetson

# Clone NVIDIA's U-Boot with Tegra support
# This includes Tegra-specific patches and device tree support
git clone https://github.com/NVIDIA/uboot.git -b jetson-nano-r32.7.4 u-boot-tegra
cd u-boot-tegra

# Set up cross-compilation environment
export CROSS_COMPILE  # Should already be set from step 1
export ARCH=arm64

# Configure for Jetson Nano Developer Kit (p3450-0000)
# This configures U-Boot for the specific board layout and features
make p3450-0000_defconfig

# Optional: Customize configuration
# make menuconfig  # Uncomment to modify settings

# Build U-Boot - this creates the bootloader binary
make -j$(nproc)
```

**Build artifacts created:**
- `u-boot.bin` - Raw U-Boot binary
- `u-boot-dtb.bin` - U-Boot with device tree blob
- `u-boot.elf` - ELF format (useful for debugging)

**Important notes about U-Boot flashing:**
- Flashing U-Boot standalone on Nano is typically done via NVIDIA's flash scripts
- For SD-booted Nano, we'll use the board's existing boot loader and focus on kernel+rootfs on SD
- If you need to replace the bootloader, use NVIDIA's L4T BSP flash tools with recovery mode
- **Recovery mode**: Power off, hold REC button, power on to enter recovery mode

---

## 4) Build Tegra kernel and device tree

**Understanding the kernel build:**
The Nano uses a Tegra210 SoC, so we need the appropriate device tree and kernel configuration. For R32.7.x, we'll use `tegra_defconfig` which includes all necessary Tegra drivers.

```bash
cd ~/jetson/linux-tegra

# Set up cross-compilation environment
export CROSS_COMPILE  # Should already be set from step 1
export ARCH=arm64

# Configure kernel for Tegra platform
# This enables all Tegra-specific drivers and features
make tegra_defconfig

# Optional: Customize kernel configuration
# This allows you to enable/disable specific drivers and features
# make menuconfig

# Build the kernel image, modules, and device tree blobs
# Image: The main kernel binary
# modules: Loadable kernel modules (drivers)
# dtbs: Device tree blobs for different board configurations
# KCFLAGS: Disable specific warnings that cause build failures
make -j$(nproc) Image modules dtbs KCFLAGS="-Wno-error=compare-distinct-pointer-types -Wno-error=incompatible-pointer-types -Wno-error=dangling-pointer"
```

**Build artifacts created:**
- **Kernel image**: `arch/arm64/boot/Image` - The main kernel binary
- **Device tree blobs**: `arch/arm64/boot/dts/tegra210-*.dtb` - Hardware configuration files
  - `tegra210-p3448-0000-p3450-0000.dtb` - Jetson Nano Developer Kit
  - `tegra210-p3448-0000-p3449-0000.dtb` - Jetson Nano Module
- **Modules**: Various `.ko` files for drivers (installed later)

**Install modules into staging rootfs:**
```bash
# Install kernel modules into our rootfs directory
# This copies all the .ko files to the appropriate locations
INSTALL_MOD_PATH=~/jetson/rootfs make modules_install
```

---

## 5) Build BusyBox root filesystem

```bash
cd ~/jetson

# Clone BusyBox source code
git clone https://busybox.net/git/busybox.git
cd busybox

# Use default configuration
make defconfig

# Build BusyBox
make -j$(nproc)

# Install BusyBox to rootfs directory
ROOTFS=~/jetson/rootfs
sudo mkdir -p $ROOTFS
make CONFIG_PREFIX=$ROOTFS install

# Create basic directory structure
sudo mkdir -p $ROOTFS/{proc,sys,dev,run,tmp,root,home,boot,lib,lib64,usr/bin,usr/sbin,etc/init.d}
sudo chmod 1777 $ROOTFS/tmp

# Enable static linking for BusyBox
sed -i 's/# CONFIG_STATIC is not set/CONFIG_STATIC=y/' .config
sed -i 's/CONFIG_STATIC=n/CONFIG_STATIC=y/' .config

# Rebuild BusyBox with static linking
make -j$(nproc)
make CONFIG_PREFIX=$ROOTFS install
```

## 6) Build static dash shell

```bash
# Clone and build static dash
cd ~/jetson
git clone https://git.kernel.org/pub/scm/utils/dash/dash.git
cd dash
git checkout dash-0.5.12

# Configure for cross-compilation with static linking
export CC=aarch64-unknown-linux-musl-gcc
export CFLAGS="-static"
export LDFLAGS="-static"
./configure --host=aarch64-unknown-linux-musl

# Build dash
make -j$(nproc)

# Create static dash for initramfs
mkdir -p ~/jetson/static-dash
sudo cp dash ~/jetson/static-dash/dash
sudo chmod +x ~/jetson/static-dash/dash
```

---

## 7) Create initramfs with dash as PID 1

```bash
# Create initramfs directory
INITRAMFS_DIR=~/jetson/initramfs
mkdir -p $INITRAMFS_DIR

# Copy static dash binary
sudo cp ~/jetson/static-dash/dash $INITRAMFS_DIR/dash
sudo chmod +x $INITRAMFS_DIR/dash

# Create /init script that mounts proc/sys and execs dash
cat << 'EOF' | sudo tee $INITRAMFS_DIR/init >/dev/null
#!/bin/dash
# Init script for initramfs - dash as PID 1

# Mount essential filesystems
mount -t proc proc /proc
mount -t sysfs sysfs /sys
mount -t devtmpfs devtmpfs /dev

# Create essential device nodes
mknod /dev/console c 5 1
mknod /dev/null c 1 3
mknod /dev/zero c 1 5
mknod /dev/tty c 5 0

# Set up console
echo "Starting dash as PID 1..."
echo "PID: $$"

# Execute dash as PID 1 with interactive shell
exec /dash -i
EOF

sudo chmod +x $INITRAMFS_DIR/init

# Create initramfs CPIO archive
cd $INITRAMFS_DIR
find . | cpio -o -H newc | gzip > ~/jetson/rootfs.cpio.gz
```

---

## 8) Prepare SD card with boot files

```bash
# Create SD card boot directory
mkdir -p ~/jetson/sd-boot

# Copy kernel image
cp ~/jetson/linux-tegra/arch/arm64/boot/Image ~/jetson/sd-boot/

# Find the correct DTB name first
ls ~/jetson/linux-tegra/arch/arm64/boot/dts/tegra210-*.dtb

# Copy device tree blob (replace with actual DTB name found above)
cp ~/jetson/linux-tegra/arch/arm64/boot/dts/tegra210-p3448-0000-p3450-0000.dtb ~/jetson/sd-boot/

# Copy initramfs
cp ~/jetson/rootfs.cpio.gz ~/jetson/sd-boot/

# Create extlinux directory and configuration
mkdir -p ~/jetson/sd-boot/extlinux
cat << 'EOF' > ~/jetson/sd-boot/extlinux/extlinux.conf
TIMEOUT  30
DEFAULT  primary

MENU TITLE Jetson Nano Boot

LABEL primary
    MENU LABEL primary
    LINUX /Image
    FDT /tegra210-p3448-0000-p3450-0000.dtb
    INITRD /rootfs.cpio.gz
    APPEND console=ttyS0,115200n8 console=tty1
EOF

# Copy files to SD card (replace /dev/sdX with your SD card)
sudo mkfs.vfat -F 32 /dev/sdX1
sudo mount /dev/sdX1 /mnt
sudo cp -r ~/jetson/sd-boot/* /mnt/
sudo umount /mnt
```

---

## 9) Flash U-Boot to eMMC

**Warning: This can brick your board if done incorrectly!**

1. **Enter recovery mode:**
   - Power off the Jetson Nano
   - Press and hold the `REC` button
   - While holding `REC`, power on the board
   - Release `REC` when you see the recovery mode indicator

2. **Download and flash L4T BSP:**
   ```bash
   # Download L4T BSP (example for R32.7.4)
   wget https://developer.nvidia.com/embedded/l4t/r32_release_v7.4/t210/jetson-210_linux_r32.7.4_aarch64.tbz2
   tar -xjf jetson-210_linux_r32.7.4_aarch64.tbz2
   cd Linux_for_Tegra
   
   # Flash U-Boot to eMMC
   sudo ./flash.sh jetson-nano-emmc mmcblk0p1
   ```

---

## 10) Boot and verify

**Hardware setup:**
1. Insert SD card with boot files into Jetson Nano
2. Connect TTL adapter to UART0 header (115200 8N1)
3. Power on the board

**Serial console access:**
```bash
# On your host machine
sudo minicom -D /dev/ttyUSB0 -b 115200
```

**Verification steps:**
```bash
# After boot, verify the following:

# 1. Check that dash is PID 1
echo $$
# Should output: 1

# 2. Check system information
uname -a
# Should show: Linux jetson-nano 4.9.xxx #1 SMP PREEMPT ...

# 3. Check that dash is running as init
ps aux
# Should show: dash as PID 1

# 4. Verify console is working
# You should see an interactive dash prompt
```

---

## 11) Troubleshooting

### Common issues:
- **Kernel doesn't boot**: Check serial console for boot messages
- **No dash prompt**: Verify initramfs was created correctly
- **Serial console not working**: Check TTL connections and baud rate (115200 8N1)
- **U-Boot doesn't load extlinux**: Ensure SD card has FAT32 partition with extlinux.conf

### Debugging:
```bash
# Check kernel messages
dmesg

# Check processes
ps aux

# Check mounted filesystems
mount
```

---

## Next steps

### Enhance the system:
- **Add package manager**: Use Debian debootstrap for full system
- **Integrate NVIDIA libraries**: Add JetPack for CUDA and multimedia
- **Add development tools**: Install compilers and debuggers
- **Configure services**: Set up SSH, NTP, logging

### Automation:
- **Create build scripts**: Automate the build process
- **Version control**: Track customizations
- **CI/CD**: Set up automated builds

### Advanced features:
- **Custom kernel modules**: Add your own drivers
- **Real-time patches**: Apply PREEMPT_RT patches
- **Network boot**: Set up PXE boot for diskless operation
