cmd_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb := mkdir -p arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/ ; /home/karim/x-tools/aarch64-unknown-linux-musl/bin/aarch64-unknown-linux-musl-gcc -E -Wp,-MD,arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.d.pre.tmp -nostdinc -I./nvidia/soc/tegra/kernel-include -I./nvidia/platform/tegra/common/kernel-dts -DLINUX_VERSION=409 -Wno-builtin-macro-redefined -D__FILE__='""' -I./nvidia/soc/t210/kernel-dts -I./nvidia/platform/t210/common/kernel-dts -I./nvidia/platform/t210b01/common/kernel-dts -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t18x/kernel-dts -I./nvidia/platform/t18x/common/kernel-dts -I./nvidia/soc/t19x/kernel-include -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t19x/kernel-dts -I./nvidia/platform/t19x/common/kernel-dts -I./nvidia/soc/t23x/kernel-include -I./nvidia/soc/t23x/kernel-dts -DCONFIG_ANDROID -I./nvidia/platform/t18x/lanai/kernel-dts -I./nvidia/platform/t18x/quill/kernel-dts -I./nvidia/platform/t19x/ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.dts.tmp arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dts ; ./scripts/dtc/dtc -@ -O dtb -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb -b 0 -i arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/ -i ./nvidia/soc/tegra/kernel-include -i ./nvidia/platform/tegra/common/kernel-dts -i ./nvidia/soc/t210/kernel-dts -i ./nvidia/platform/t210/common/kernel-dts -i ./nvidia/platform/t210b01/common/kernel-dts -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t18x/kernel-dts -i ./nvidia/platform/t18x/common/kernel-dts -i ./nvidia/soc/t19x/kernel-include -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t19x/kernel-dts -i ./nvidia/platform/t19x/common/kernel-dts -i ./nvidia/soc/t23x/kernel-include -i ./nvidia/soc/t23x/kernel-dts -i ./nvidia/platform/t18x/lanai/kernel-dts -i ./nvidia/platform/t18x/quill/kernel-dts -i ./nvidia/platform/t19x/ -Wno-unit_address_vs_reg -d arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.d.dtc.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.dts.tmp ; cat arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.d.pre.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.d.dtc.tmp > arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/.tegra210-jetson-tx1-imx274-dp-hdmi.dtb.d

source_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb := arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dts

deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb := \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-cv-base-p2597-2180-a00.dts \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-common.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-soc-shield.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-soc-base.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/version.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/arm-gic.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/irq.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/clock/tegra210-car.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/reset/tegra210-car.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/memory/tegra-swgroup.h \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-thermal.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/thermal/tegra124-soctherm.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/thermal/thermal.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/gpio/tegra-gpio.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/gpio/gpio.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/soc/tegra-io-pads.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra-io-pad.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/ata/ahci-tegra.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/soc/tegra210-powergate.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/tegra-t21x-agic.h \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-soc-power-domain.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/memory/tegra210-mc.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/usb/tegra_xhci.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra21x-padctl-uphy.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra.h \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-soc-actmon.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-bthrot-cdev.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/soc/tegra-pmc.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/thermal/tegra210-trips.h \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-prods.dtsi \
    $(wildcard include/config/0.h) \
    $(wildcard include/config/2/0.h) \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-platform-common-padvoltage-default.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-ers-touch-e1937-1000-a00.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/spi/rm31080a_platform.h \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-modem-common.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-trusty.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-soc-sata.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-audio.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-power-tree-p2597-2180-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-pmic-p2180-p2597-a00.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/mfd/max77620.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/regulator/regulator.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-power-fixed-p2180-p2597-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-pinmux-p2597-2180-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-gpio-p2597-2180-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-prods.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-comms-p2530-0930.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-modules.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-imx274-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-imx274-a00.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/media/camera.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/platform/t210/t210.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-imx185-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-imx185-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-e3333-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-e3333-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-e3326-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-e3326-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-e3323-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-e3323-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-pwm-fan-p2530-0930.dtsi \
  nvidia/platform/tegra/common/kernel-dts/panels/panel-a-wuxga-8-0.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-dc.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-panel.h \
    $(wildcard include/config/tegra/nvdisplay.h) \
  nvidia/platform/tegra/common/kernel-dts/panels/panel-a-edp-1080p-14-0.dtsi \
  nvidia/platform/tegra/common/kernel-dts/panels/panel-s-edp-uhdtv-15-6.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-ers-hdmi-e2190-1100-a00.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-sdhci.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-pin-drive-sdmmc-common.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-p2180-common.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-thermal-nct72-p2530.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-thermal-Tboard-Tdiode.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-thermal-fan-est-p2530-0930.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-keys-p2597-2180-a00.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/input.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/linux-event-codes.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/iio/meter/ina3221x.h \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-otg-gpio-detection-extcon.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-emc-p2180-1000-a00.dtsi \
  nvidia/soc/t210/kernel-dts/tegra210-soc/tegra210-edp.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-sysedp.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-thermal-userspace-alert.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-powermon-p2180-1000-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-powermon-p2597.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-cpufreq.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-super-module-e2614.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-plugin-manager/tegra210-jetson-cv-eeprom-manager.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-plugin-manager/tegra210-jetson-cv-camera-plugin-manager.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-plugin-manager/tegra210-jetson-cv-plugin-manager.dtsi \
  nvidia/platform/t210/common/kernel-dts/t210-common-platforms/tegra210-dp.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-jetson-cv-camera-imx274-hdmi.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t210/jetson/kernel-dts/jetson-platforms/tegra210-camera-imx274-hdmi.dtsi \

arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb: $(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb)

$(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t210/jetson/kernel-dts/tegra210-jetson-tx1-imx274-dp-hdmi.dtb):
