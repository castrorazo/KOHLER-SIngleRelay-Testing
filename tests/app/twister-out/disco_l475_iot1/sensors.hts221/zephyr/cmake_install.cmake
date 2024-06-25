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
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/arch/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/lib/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/soc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/boards/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/subsys/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/drivers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/acpica/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/cmsis/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/cmsis-dsp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/cmsis-nn/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/fatfs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/altera/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_ambiq/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/atmel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_espressif/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_ethos_u/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_gigadevice/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_infineon/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_intel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/microchip/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_nordic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/nuvoton/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_nxp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/openisa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/quicklogic/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_renesas/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_rpi_pico/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/silabs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_st/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/stm32/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_telink/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/ti/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hal_wurthelektronik/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/xtensa/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/hostap/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/libmetal/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/liblc3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/littlefs/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/loramac-node/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/lvgl/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/mbedtls/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/mcuboot/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/mipi-sys-t/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/nrf_hw_models/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/open-amp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/openthread/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/percepio/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/picolibc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/segger/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/tinycrypt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/trusted-firmware-m/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/trusted-firmware-a/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/uoscore-uedhoc/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/modules/zcbor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/kernel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/cmake/flash/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/cmake/usage/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("C:/zephyrproject/embsys-330-sp24-final-project-castrorazo/tests/app/twister-out/disco_l475_iot1/sensors.hts221/zephyr/cmake/reports/cmake_install.cmake")
endif()

