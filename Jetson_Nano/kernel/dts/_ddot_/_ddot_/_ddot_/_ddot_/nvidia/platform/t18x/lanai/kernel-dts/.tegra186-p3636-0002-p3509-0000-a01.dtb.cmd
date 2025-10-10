cmd_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb := mkdir -p arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/ ; /home/karim/x-tools/aarch64-unknown-linux-musl/bin/aarch64-unknown-linux-musl-gcc -E -Wp,-MD,arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.d.pre.tmp -nostdinc -I./nvidia/soc/tegra/kernel-include -I./nvidia/platform/tegra/common/kernel-dts -DLINUX_VERSION=409 -Wno-builtin-macro-redefined -D__FILE__='""' -I./nvidia/soc/t210/kernel-dts -I./nvidia/platform/t210/common/kernel-dts -I./nvidia/platform/t210b01/common/kernel-dts -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t18x/kernel-dts -I./nvidia/platform/t18x/common/kernel-dts -I./nvidia/soc/t19x/kernel-include -I./nvidia/soc/t18x/kernel-include -I./nvidia/soc/t19x/kernel-dts -I./nvidia/platform/t19x/common/kernel-dts -I./nvidia/soc/t23x/kernel-include -I./nvidia/soc/t23x/kernel-dts -DCONFIG_ANDROID -I./nvidia/platform/t18x/lanai/kernel-dts -I./nvidia/platform/t18x/quill/kernel-dts -I./nvidia/platform/t19x/ -undef -D__DTS__ -x assembler-with-cpp -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.dts.tmp arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dts ; ./scripts/dtc/dtc -@ -O dtb -o arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb -b 0 -i arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/ -i ./nvidia/soc/tegra/kernel-include -i ./nvidia/platform/tegra/common/kernel-dts -i ./nvidia/soc/t210/kernel-dts -i ./nvidia/platform/t210/common/kernel-dts -i ./nvidia/platform/t210b01/common/kernel-dts -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t18x/kernel-dts -i ./nvidia/platform/t18x/common/kernel-dts -i ./nvidia/soc/t19x/kernel-include -i ./nvidia/soc/t18x/kernel-include -i ./nvidia/soc/t19x/kernel-dts -i ./nvidia/platform/t19x/common/kernel-dts -i ./nvidia/soc/t23x/kernel-include -i ./nvidia/soc/t23x/kernel-dts -i ./nvidia/platform/t18x/lanai/kernel-dts -i ./nvidia/platform/t18x/quill/kernel-dts -i ./nvidia/platform/t19x/ -Wno-unit_address_vs_reg -d arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.d.dtc.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.dts.tmp ; cat arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.d.pre.tmp arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.d.dtc.tmp > arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/.tegra186-p3636-0002-p3509-0000-a01.dtb.d

source_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb := arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dts

deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb := \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-common.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/types.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/gpio/tegra186-gpio.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/gpio/gpio.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/audio/tegra186-audio.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-cvm.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-cpus-2D4A.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-a57-cpuidle.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-denver-cpuidle.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-cpus-energy-2D4A.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-base.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/version.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/memory/tegra-swgroup.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-dc.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/clock/tegra186-clock.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/reset/tegra186-reset.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/interrupt/tegra186-irq.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/interrupt-controller/tegra-t18x-agic.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/arm-gic.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/interrupt-controller/irq.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/soc/tegra-io-pads.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-sdhci.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-pin-drive-sdmmc-common.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra-io-pad.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-sata.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra.h \
  nvidia/soc/t18x/kernel-include/dt-bindings/soc/tegra186-powergate.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-ufshc.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-i2c.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-spdif.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-spi.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-pwm.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pinctrl/pinctrl-tegra-padctl.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-uart.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-eqos.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-power-domain.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-trusty.dtsi \
  nvidia/soc/t18x/kernel-include/dt-bindings/hsp/tegra-hsp.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-thermal.dtsi \
  nvidia/soc/t18x/kernel-include/dt-bindings/thermal/tegra186-thermal.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-camera.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-safety-sce.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-actmon.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-disp-imp.dtsi \
  nvidia/soc/t18x/kernel-include/dt-bindings/soc/gp10b-fuse.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/input.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/input/linux-event-codes.h \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-aon.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-prod.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-i2c-prod.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-audio.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/mods-simple-bus.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-platforms/tegra186-platforms-simple-bus.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-platforms/tegra186-thermal-userspace-alert.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-disp.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/display/tegra-panel.h \
    $(wildcard include/config/tegra/nvdisplay.h) \
  nvidia/platform/tegra/common/kernel-dts/panels/panel-a-wuxga-8-0.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-platforms/tegra186-hdmi.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-platforms/tegra186-dp.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-powermon.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-power-tree.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-spmic.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/mfd/max77620.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/regulator/regulator.h \
  nvidia/soc/tegra/kernel-include/dt-bindings/thermal/thermal.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-pwm-fan.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/pwm/pwm.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-thermal-fan-est.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-eqos.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-audio.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-dai-links.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-simple-bus.dtsi \
  nvidia/platform/tegra/common/kernel-dts/audio/tegra-platforms-audio-enable.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-thermal.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-platforms/tegra186-balanced-throttle-te770d-ucm2.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-plugin-manager.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-plugin-manager/tegra186-soc-prod-plugin-manager.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-odm-data-plugin-manager.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-comms.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3509-0000-cvb.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3509-0000-a00-fixed-regulator.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-p3636-0001-a00-prod.dtsi \
  nvidia/soc/t18x/kernel-dts/tegra186-soc/tegra186-soc-cvm-prod.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-camera-lanai-rbpcv2-imx219.dtsi \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-camera-rbpcv2-imx219.dtsi \
  nvidia/soc/tegra/kernel-include/dt-bindings/media/camera.h \
  arch/arm64/boot/dts/../../../../nvidia/platform/t18x/lanai/kernel-dts/common/tegra186-super-module-e2614-p3509-0000-a00.dtsi \
  nvidia/platform/t18x/common/kernel-dts/t18x-common-modules/tegra186-super-module-e2614-p2597-1000-a00.dtsi \

arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb: $(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb)

$(deps_arch/arm64/boot/dts/_ddot_/_ddot_/_ddot_/_ddot_/nvidia/platform/t18x/lanai/kernel-dts/tegra186-p3636-0002-p3509-0000-a01.dtb):
