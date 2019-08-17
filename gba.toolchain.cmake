cmake_minimum_required(VERSION 3.2)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_CROSSCOMPILING 1)

# Find DEVKITPRO
if(NOT DEFINED ENV{DEVKITPRO})
    message(FATAL_ERROR "You must have defined DEVKITPRO before calling cmake.")
endif()

set(DEVKITPRO $ENV{DEVKITPRO})
set(DEVKITARM $ENV{DEVKITPRO}/devkitARM)

#set(CMAKE_ASM_COMPILER     "${DEVKITARM}/bin/arm-none-eabi-as"  )
set(CMAKE_C_COMPILER       "${DEVKITARM}/bin/arm-none-eabi-gcc" )
#set(CMAKE_CXX_COMPILER     ""   CACHE PATH "")
set(CMAKE_LINKER           "${DEVKITARM}/bin/arm-none-eabi-ld" )
#set(CMAKE_AR               ""    CACHE PATH "")
#set(CMAKE_STRIP            "" CACHE PATH "")

set(OBJCOPY "${DEVKITARM}/bin/arm-none-eabi-objcopy")
set(GBAFIX "${DEVKITPRO}/tools/bin/gbafix")

set(CMAKE_ASM_ARCHITECTURE_FLAGS "-mcpu=arm7tdmi")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${CMAKE_ASM_ARCHITECTURE_FLAGS} -x assembler-with-cpp")

set(CMAKE_C_FLAGS " -nostdinc")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(BUILD_SHARED_LIBS OFF CACHE INTERNAL "Shared libs not available")