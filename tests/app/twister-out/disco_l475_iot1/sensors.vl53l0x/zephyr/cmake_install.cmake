# Install script for directory: C:/zephyrproject/zephyr

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/Zephyr-Kernel")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/zephyr-sdk-0.16.5-1/arm-zephyr-eabi/bin/arm-zephyr-eabi-objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.vl53l0x/zephyr/cmake/reports/cmake_install.cmake")
endif()

