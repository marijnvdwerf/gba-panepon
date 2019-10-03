cmake_minimum_required(VERSION 3.15)
project(panepon C ASM)

if (NOT DEFINED AGBCC_DIR)
    set(AGBCC_DIR $ENV{AGBCC})
endif ()

set(AGBCC_OLD "${AGBCC_DIR}/old_agbcc")
set(AGBCC "${AGBCC_DIR}/agbcc")
set(AGBCC_INCLUDES "${AGBCC_DIR}/ginclude/")

set(BASEROM ${CMAKE_CURRENT_SOURCE_DIR}/baserom.gba)

add_library(gcc STATIC IMPORTED)
set_target_properties(gcc PROPERTIES IMPORTED_LOCATION "${AGBCC_DIR}/libgcc.a")

add_library(newlib STATIC IMPORTED)
set_target_properties(newlib PROPERTIES IMPORTED_LOCATION "${AGBCC_DIR}/libc.a")
target_link_libraries(newlib INTERFACE gcc)

add_subdirectory(agb)
add_subdirectory(agbsyscall)
add_subdirectory(m4a)
add_subdirectory(isagb)
add_subdirectory(sound)
add_subdirectory(game)
