@echo off
cd /D C:\zephyrproject\embsys-330-sp24-final-project-castrorazo\tests\app\twister-out\disco_l475_iot1\sensors.vl53l0x\zephyr\kconfig || (set FAIL_LINE=2& goto :ABORT)
"C:\Program Files\CMake\bin\cmake.exe" -E env ZEPHYR_BASE=C:/zephyrproject/zephyr PYTHON_EXECUTABLE=C:/Python311/python.exe srctree=C:/zephyrproject/zephyr KERNELVERSION=0x3066300 APPVERSION= APP_VERSION_EXTENDED_STRING= APP_VERSION_TWEAK_STRING= CONFIG_=CONFIG_ KCONFIG_CONFIG=C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/.config BOARD_DIR=C:/zephyrproject/zephyr/boards/st/disco_l475_iot1 BOARD=disco_l475_iot1 BOARD_REVISION= BOARD_QUALIFIERS=/stm32l475xx HWM_SCHEME=v2 KCONFIG_BINARY_DIR=C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/Kconfig APPLICATION_SOURCE_DIR=C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app ZEPHYR_TOOLCHAIN_VARIANT=zephyr "TOOLCHAIN_KCONFIG_DIR=C:/Program Files/zephyr-sdk-0.16.5-1/cmake/zephyr" TOOLCHAIN_HAS_NEWLIB=y TOOLCHAIN_HAS_PICOLIBC=y EDT_PICKLE=C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/edt.pickle ZEPHYR_ACPICA_MODULE_DIR=C:/zephyrproject/modules/lib/acpica ZEPHYR_ACPICA_KCONFIG=C:/zephyrproject/zephyr/modules/acpica/Kconfig ZEPHYR_CMSIS_MODULE_DIR=C:/zephyrproject/modules/hal/cmsis ZEPHYR_CMSIS_KCONFIG=C:/zephyrproject/zephyr/modules/cmsis/Kconfig ZEPHYR_CMSIS_DSP_MODULE_DIR=C:/zephyrproject/modules/lib/cmsis-dsp ZEPHYR_CMSIS_DSP_KCONFIG=C:/zephyrproject/zephyr/modules/cmsis-dsp/Kconfig ZEPHYR_CMSIS_NN_MODULE_DIR=C:/zephyrproject/modules/lib/cmsis-nn ZEPHYR_CMSIS_NN_KCONFIG=C:/zephyrproject/zephyr/modules/cmsis-nn/Kconfig ZEPHYR_FATFS_MODULE_DIR=C:/zephyrproject/modules/fs/fatfs ZEPHYR_FATFS_KCONFIG=C:/zephyrproject/zephyr/modules/fatfs/Kconfig ZEPHYR_ALTERA_MODULE_DIR=C:/zephyrproject/modules/hal/altera ZEPHYR_HAL_AMBIQ_MODULE_DIR=C:/zephyrproject/modules/hal/ambiq ZEPHYR_HAL_AMBIQ_KCONFIG=C:/zephyrproject/zephyr/modules/hal_ambiq/Kconfig ZEPHYR_ATMEL_MODULE_DIR=C:/zephyrproject/modules/hal/atmel ZEPHYR_HAL_ESPRESSIF_MODULE_DIR=C:/zephyrproject/modules/hal/espressif ZEPHYR_HAL_ETHOS_U_MODULE_DIR=C:/zephyrproject/modules/hal/ethos_u ZEPHYR_HAL_ETHOS_U_KCONFIG=C:/zephyrproject/zephyr/modules/hal_ethos_u/Kconfig ZEPHYR_HAL_GIGADEVICE_MODULE_DIR=C:/zephyrproject/modules/hal/gigadevice ZEPHYR_HAL_GIGADEVICE_KCONFIG=C:/zephyrproject/zephyr/modules/hal_gigadevice/Kconfig ZEPHYR_HAL_INFINEON_MODULE_DIR=C:/zephyrproject/modules/hal/infineon ZEPHYR_HAL_INFINEON_KCONFIG=C:/zephyrproject/zephyr/modules/hal_infineon/Kconfig ZEPHYR_HAL_INTEL_MODULE_DIR=C:/zephyrproject/modules/hal/intel ZEPHYR_MICROCHIP_MODULE_DIR=C:/zephyrproject/modules/hal/microchip ZEPHYR_HAL_NORDIC_MODULE_DIR=C:/zephyrproject/modules/hal/nordic ZEPHYR_HAL_NORDIC_KCONFIG=C:/zephyrproject/zephyr/modules/hal_nordic/Kconfig ZEPHYR_NUVOTON_MODULE_DIR=C:/zephyrproject/modules/hal/nuvoton ZEPHYR_HAL_NXP_MODULE_DIR=C:/zephyrproject/modules/hal/nxp ZEPHYR_HAL_NXP_KCONFIG=C:/zephyrproject/zephyr/modules/hal_nxp/Kconfig ZEPHYR_OPENISA_MODULE_DIR=C:/zephyrproject/modules/hal/openisa ZEPHYR_QUICKLOGIC_MODULE_DIR=C:/zephyrproject/modules/hal/quicklogic ZEPHYR_HAL_RENESAS_MODULE_DIR=C:/zephyrproject/modules/hal/renesas ZEPHYR_HAL_RPI_PICO_MODULE_DIR=C:/zephyrproject/modules/hal/rpi_pico ZEPHYR_HAL_RPI_PICO_KCONFIG=C:/zephyrproject/zephyr/modules/hal_rpi_pico/Kconfig ZEPHYR_SILABS_MODULE_DIR=C:/zephyrproject/modules/hal/silabs ZEPHYR_HAL_ST_MODULE_DIR=C:/zephyrproject/modules/hal/st ZEPHYR_HAL_ST_KCONFIG=C:/zephyrproject/zephyr/modules/hal_st/Kconfig ZEPHYR_STM32_MODULE_DIR=C:/zephyrproject/modules/hal/stm32 ZEPHYR_HAL_TELINK_MODULE_DIR=C:/zephyrproject/modules/hal/telink ZEPHYR_TI_MODULE_DIR=C:/zephyrproject/modules/hal/ti ZEPHYR_HAL_WURTHELEKTRONIK_MODULE_DIR=C:/zephyrproject/modules/hal/wurthelektronik ZEPHYR_XTENSA_MODULE_DIR=C:/zephyrproject/modules/hal/xtensa ZEPHYR_HOSTAP_MODULE_DIR=C:/zephyrproject/modules/lib/hostap ZEPHYR_HOSTAP_KCONFIG=C:/zephyrproject/zephyr/modules/hostap/Kconfig ZEPHYR_LIBMETAL_MODULE_DIR=C:/zephyrproject/modules/hal/libmetal ZEPHYR_LIBLC3_MODULE_DIR=C:/zephyrproject/modules/lib/liblc3 ZEPHYR_LIBLC3_KCONFIG=C:/zephyrproject/zephyr/modules/liblc3/Kconfig ZEPHYR_LITTLEFS_MODULE_DIR=C:/zephyrproject/modules/fs/littlefs ZEPHYR_LITTLEFS_KCONFIG=C:/zephyrproject/zephyr/modules/littlefs/Kconfig ZEPHYR_LORAMAC_NODE_MODULE_DIR=C:/zephyrproject/modules/lib/loramac-node ZEPHYR_LORAMAC_NODE_KCONFIG=C:/zephyrproject/zephyr/modules/loramac-node/Kconfig ZEPHYR_LVGL_MODULE_DIR=C:/zephyrproject/modules/lib/gui/lvgl ZEPHYR_LVGL_KCONFIG=C:/zephyrproject/zephyr/modules/lvgl/Kconfig ZEPHYR_MBEDTLS_MODULE_DIR=C:/zephyrproject/modules/crypto/mbedtls ZEPHYR_MBEDTLS_KCONFIG=C:/zephyrproject/zephyr/modules/mbedtls/Kconfig ZEPHYR_MCUBOOT_MODULE_DIR=C:/zephyrproject/bootloader/mcuboot ZEPHYR_MIPI_SYS_T_MODULE_DIR=C:/zephyrproject/modules/debug/mipi-sys-t ZEPHYR_NRF_HW_MODELS_MODULE_DIR=C:/zephyrproject/modules/bsim_hw_models/nrf_hw_models ZEPHYR_OPEN_AMP_MODULE_DIR=C:/zephyrproject/modules/lib/open-amp ZEPHYR_OPENTHREAD_MODULE_DIR=C:/zephyrproject/modules/lib/openthread ZEPHYR_OPENTHREAD_KCONFIG=C:/zephyrproject/zephyr/modules/openthread/Kconfig ZEPHYR_PERCEPIO_MODULE_DIR=C:/zephyrproject/modules/debug/percepio ZEPHYR_PERCEPIO_KCONFIG=C:/zephyrproject/zephyr/modules/percepio/Kconfig ZEPHYR_PICOLIBC_MODULE_DIR=C:/zephyrproject/modules/lib/picolibc ZEPHYR_SEGGER_MODULE_DIR=C:/zephyrproject/modules/debug/segger ZEPHYR_SEGGER_KCONFIG=C:/zephyrproject/zephyr/modules/segger/Kconfig ZEPHYR_TINYCRYPT_MODULE_DIR=C:/zephyrproject/modules/crypto/tinycrypt ZEPHYR_TRUSTED_FIRMWARE_M_MODULE_DIR=C:/zephyrproject/modules/tee/tf-m/trusted-firmware-m ZEPHYR_TRUSTED_FIRMWARE_M_KCONFIG=C:/zephyrproject/zephyr/modules/trusted-firmware-m/Kconfig ZEPHYR_TRUSTED_FIRMWARE_A_MODULE_DIR=C:/zephyrproject/modules/tee/tf-a/trusted-firmware-a ZEPHYR_TRUSTED_FIRMWARE_A_KCONFIG=C:/zephyrproject/zephyr/modules/trusted-firmware-a/Kconfig ZEPHYR_UOSCORE_UEDHOC_MODULE_DIR=C:/zephyrproject/modules/lib/uoscore-uedhoc ZEPHYR_UOSCORE_UEDHOC_KCONFIG=C:/zephyrproject/zephyr/modules/uoscore-uedhoc/Kconfig ZEPHYR_ZCBOR_MODULE_DIR=C:/zephyrproject/modules/lib/zcbor ZEPHYR_ZCBOR_KCONFIG=C:/zephyrproject/zephyr/modules/zcbor/Kconfig ARCH=* ARCH_DIR=C:/zephyrproject/zephyr/arch SHIELD_AS_LIST= DTS_POST_CPP=C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/zephyr.dts.pre DTS_ROOT_BINDINGS=C:/zephyrproject/zephyr/dts/bindings C:/Python311/python.exe C:/zephyrproject/zephyr/scripts/kconfig/guiconfig.py C:/zephyrproject/zephyr/Kconfig || (set FAIL_LINE=3& goto :ABORT)
goto :EOF

:ABORT
set ERROR_CODE=%ERRORLEVEL%
echo Batch file failed at line %FAIL_LINE% with errorcode %ERRORLEVEL%
exit /b %ERROR_CODE%