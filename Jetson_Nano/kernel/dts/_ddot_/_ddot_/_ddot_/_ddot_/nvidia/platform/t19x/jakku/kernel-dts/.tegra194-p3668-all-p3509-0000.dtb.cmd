cmd_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb := mkdir -p arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/ ; /home/karim/x-tools/aarch64-unknown-linux-musl/bin/aarch64-unknown-linux-musl-gcc -E -Wp,-MD,arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.d.pre.tmp -nostdinc -I./nvidia/soc/tegra/kernel-include -I./nvidia/platform/tegra/common/kernel-dts -DLINUX_VERSION=409 -Wno-builtin-macro-redefined -D__FILE__='""' -I./nvidia/soc/t210/kernel-dts -I./nvidia/platform/t210/common/kernel-dts -I./nvidia/platform/t210b01/common/kernel-dts -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t18x/kernel-dts -I./nvidia/platform/t18x/common/kernel-dts -I./nvidia/soc/t19x/kernel-include -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t19x/kernel-dts -I./nvidia/platform/t19x/common/kernel-dts -I./nvidia/soc/t23x/kernel-include -I./nvidia/soc/t23x/kernel-dts -DCONFIG_ANDROID -I./nvidia/platform/t18x/lanai/kernel-dts -I./nvidia/platform/t18x/quill/kernel-dts -I./nvidia/platform/t19x/ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.dts.tmp arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dts ; ./scripts/dtc/dtc -@ -O dtb -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb -b 0 -i arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/ -i ./nvidia/soc/tegra/kernel-include -i ./nvidia/platform/tegra/common/kernel-dts -i ./nvidia/soc/t210/kernel-dts -i ./nvidia/platform/t210/common/kernel-dts -i ./nvidia/platform/t210b01/common/kernel-dts -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t18x/kernel-dts -i ./nvidia/platform/t18x/common/kernel-dts -i ./nvidia/soc/t19x/kernel-include -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t19x/kernel-dts -i ./nvidia/platform/t19x/common/kernel-dts -i ./nvidia/soc/t23x/kernel-include -i ./nvidia/soc/t23x/kernel-dts -i ./nvidia/platform/t18x/lanai/kernel-dts -i ./nvidia/platform/t18x/quill/kernel-dts -i ./nvidia/platform/t19x/ -Wno-unit_address_vs_reg -d arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.d.dtc.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.dts.tmp ; cat arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.d.pre.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.d.dtc.tmp > arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/.tegra194-p3668-all-p3509-0000.dtb.d

source_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb := arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dts

deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb := \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-p3668-common.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/extcon-ids.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/gpio/tegra194-gpio.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/gpio/gpio.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/pwm/pwm.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-cvm.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-base.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/version.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/clock/tegra194-clock.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/reset/tegra194-reset.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-dc.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/interrupt/tegra194-irq.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/arm-gic.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/irq.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/soc/tegra194-powergate.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/memory/tegra-swgroup.h \
  nvidia/soc/t19x/kernel-include/dt-bindings/memory/tegra194-swgroup.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-sata.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-power-domain.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-trusty.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-pcie.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-eqos.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-uart.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-sdhci.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-pin-drive-sdmmc-common.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra-io-pad.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-ufshc.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-spi.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-pwm.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-i2c.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-can.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-audio.dtsi \
  nvidia/soc/t19x/kernel-include/dt-bindings/interrupt-controller/tegra-t19x-agic.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-safety-sce.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-camera.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-actmon.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-disp-imp.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-aon.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-cpus.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-cpuidle.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-thermal.dtsi \
  nvidia/soc/t19x/kernel-include/dt-bindings/thermal/tegra194-thermal.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/soc/tegra-io-pads.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/input.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/linux-event-codes.h \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/mods-simple-bus.dtsi \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-prod.dtsi \
    $(wildcard include/config/0.h) \
    $(wildcard include/config/2/0.h) \
  nvidia/soc/t19x/kernel-dts/tegra194-soc/tegra194-soc-floor-sweeping.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-fixed-regulator-p3668.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-platforms-simple-bus.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-comms.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-platforms-eqos.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-powermon-p3668.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-power-tree-p3668.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-spmic-p3668.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/mfd/max77620.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/regulator/regulator.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/thermal/thermal.h \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-balanced-throttle.dtsi \
  nvidia/soc/t19x/kernel-include/dt-bindings/thermal/nvidia,tegra-thermal-throttle.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-thermal-p3668.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-thermal.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-balanced-throttle.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-pwm-fan.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-thermal-fan-est.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-thermal-userspace-alert.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-no-pll-aon-clock.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-p3668-pcie-plugin-manager.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-plugin-manager-p3668.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-p3509-0000-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-fixed-regulator-p3509-0000-a00.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-p3509-disp.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-panel.h \
    $(wildcard include/config/tegra/nvdisplay.h) \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-hdmi.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-platforms/tegra194-dp.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-audio-p3668.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-dai-links.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-simple-bus.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-enable.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-super-module-e2614-p3509.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-super-module-e2614.dtsi \
  nvidia/platform/t19x/common/kernel-dts/t19x-common-modules/tegra194-super-module-e2614.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-camera-jakku-rbpcv3-imx477.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-camera-rbpcv3-imx477.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-camera-jakku-rbpcv2-imx219.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t19x/jakku/kernel-dts/common/tegra194-camera-rbpcv2-imx219.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/media/camera.h \

arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb: $(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb)

$(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t19x/jakku/kernel-dts/tegra194-p3668-all-p3509-0000.dtb):
