# SPDX-License-Identifier: Apache-2.0

cmake_minimum_required(VERSION 3.20.0)
find_package(Zephyr REQUIRED HINTS $ENV{ZEPHYR_BASE})
set(CMAKE_OBJECT_PATH_MAX 500)
project(embsys330_final_project_tests)

target_include_directories(app PRIVATE ../../app/src)
target_sources(app PRIVATE src/main.c)
target_sources(app PRIVATE ../../app/src/counter.c)

