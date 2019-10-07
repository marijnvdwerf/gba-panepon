function(add_gba_target target)
    get_filename_component(target_we ${target} NAME_WE)

    add_custom_command(
            OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba
            COMMAND ${OBJCOPY} -O binary $<TARGET_FILE:${target}> ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba
            COMMAND ${GBAFIX} ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba "-tGC-GBA Probe"
            COMMAND xxd ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba > ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba.txt
            DEPENDS ${target}
    )

    add_custom_target(${target_we}.gba ALL SOURCES ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba)
endfunction()

function(validate_target target shasum)
    get_filename_component(filename ${target} NAME)
    add_custom_target(
            "validate_${target}"
            COMMAND echo "${shasum}  ${filename}" | shasum --check -
            DEPENDS ${target}
    )
endfunction()

function(add_rom)
    set(options OPTIONAL FAST)
    set(oneValueArgs NAME VERSION SHA LANGUAGE)
    set(multiValueArgs SOURCES INCLUDE)
    cmake_parse_arguments(ADD_ROM "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    set(ADD_ROM_INCLUDE_ASM ${ADD_ROM_INCLUDE})
    list(TRANSFORM ADD_ROM_INCLUDE_ASM PREPEND "-Wa,-I")
    set(COMPILE_OPTIONS "$<$<COMPILE_LANGUAGE:ASM>:${ADD_ROM_INCLUDE_ASM}>")

    if(NOT ADD_ROM_LANGUAGE)
        set(ADD_ROM_LANGUAGE JP)
    endif()

    message("ADD_ROM_LANGUAGE: ${ADD_ROM_LANGUAGE}")

    set(MAPFILE "${ADD_ROM_NAME}.map")
    add_executable(${ADD_ROM_NAME} ${ADD_ROM_SOURCES})
    target_compile_definitions(${ADD_ROM_NAME} PRIVATE -DVERSION=${ADD_ROM_VERSION} -DLANGUAGE=${ADD_ROM_LANGUAGE})
    target_compile_options(${ADD_ROM_NAME} PRIVATE ${COMPILE_OPTIONS})


    list(TRANSFORM ADD_ROM_INCLUDE PREPEND "-iquote ")
    list(JOIN ADD_ROM_INCLUDE " " ADD_ROM_INCLUDE)
    set_target_properties(${ADD_ROM_NAME} PROPERTIES COMPILE_FLAGS "${ADD_ROM_INCLUDE}")
    target_link_libraries(${ADD_ROM_NAME} PRIVATE gba m4a agbsyscall isagb gcc newlib sound)
    target_link_options(${ADD_ROM_NAME} PRIVATE "LINKER:-Map=${MAPFILE}")
    target_link_options(${ADD_ROM_NAME} PRIVATE "LINKER:-T${CMAKE_CURRENT_SOURCE_DIR}/ldscript.ld")
    target_link_options(${ADD_ROM_NAME} PRIVATE "LINKER:-nostdlib")
    set_target_properties(${ADD_ROM_NAME} PROPERTIES LINK_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/ldscript.ld")
    add_gba_target(${ADD_ROM_NAME})

    if (ADD_ROM_SHA)
        message("ADD_ROM_SHA: ${ADD_ROM_SHA}")
        validate_target(${ADD_ROM_NAME}.gba ${ADD_ROM_SHA})
        add_dependencies(validate validate_${ADD_ROM_NAME}.gba)
    endif ()
endfunction()

set(AGBCC_FLAGS " -mthumb-interwork -Wimplicit -Wparentheses -Wunused -Werror -O2 -fhex-asm")

set(CMAKE_ASM_BASE_FLAGS ${CMAKE_ASM_FLAGS})

message("CMAKE_C_COMPILE_OBJECT: ${CMAKE_C_COMPILE_OBJECT}")

set(CMD_PP "<CMAKE_C_COMPILER> <DEFINES> <INCLUDES> <FLAGS> -I${AGBCC_INCLUDES} -nostdinc -undef -Werror -E <SOURCE>")
set(CMD_C "${AGBCC_OLD} ${AGBCC_FLAGS} ")
set(CMD_AS "${CMAKE_ASM_COMPILER} ${CMAKE_ASM_ARCHITECTURE_FLAGS} -x assembler")
set(CMAKE_C_COMPILE_OBJECT "(( ${CMD_PP} | ${CMD_C} -g -o - ) && echo '.text\\n\\t.align\\t2, 0\\n')  | ${CMD_AS} -o <OBJECT> -c -")
set(CMAKE_C_CREATE_ASSEMBLY_SOURCE "(( ${CMD_PP} | ${CMD_C} -g -o - ) && echo '.text\\n\\t.align\\t2, 0\\n') > <ASSEMBLY_SOURCE>")


set(CMAKE_C_LINKER_WRAPPER_FLAG "")
set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_LINKER> <FLAGS> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")

set(JOYBOOT src/crt0_joy_boot.s)
set(MULTIBOOT src/crt0_multi_boot.s)
set(SOURCES
    src/dummy.s
    src/aob.s
    src/src.s
    src/aob2.s
    src/src2.s
    src/data.c
    src/bss2.s
    src/main.c
    src/nisctc.c
    src/agb_start_from_arm.s
    src/sounddata.s
    src/sounddata2.s
    src/data.s
    src/sound3.s)

add_custom_target(validate)

add_rom(
    NAME ponagb2m_client_prerelease
    SOURCES ${JOYBOOT} ${SOURCES}
    VERSION 0
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA 051b28316b3de9cb30260c4b6213ae8ed9d57792
)

add_rom(
    NAME ponagb2m_client
    SOURCES ${JOYBOOT} ${SOURCES}
    VERSION 1
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA 9e182c417233a6d09fdbb55ab136656f2bd9a3c0
)

add_rom(
    NAME ponagb2m_multiboot
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA 7678b495c9ebd520da3f85ff7fa8959f049ec84b
)

add_rom(
    NAME ponagb2m_en
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    LANGUAGE EN
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/res-en
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA 8b88b1660d9a191a90845562ac2036f0459bf599
)

add_rom(
    NAME ponagb2m_de
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    LANGUAGE DE
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/res-de
        ${CMAKE_CURRENT_SOURCE_DIR}/res-en
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA f477d8c398ca8ceb35a11f30ce16b77267a70c25
)

add_rom(
    NAME ponagb2m_fr
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    LANGUAGE FR
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/res-fr
        ${CMAKE_CURRENT_SOURCE_DIR}/res-en
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA b54bd23912f51b66307e1ba40b238419f02b03c0
)

add_rom(
    NAME ponagb2m_es
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    LANGUAGE ES
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/res-es
        ${CMAKE_CURRENT_SOURCE_DIR}/res-en
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA 815bccc64048d244c1d6b98a937eb1e07da11281
)

add_rom(
    NAME ponagb2m_it
    SOURCES ${MULTIBOOT} ${SOURCES}
    VERSION 2
    LANGUAGE IT
    INCLUDE
        ${CMAKE_CURRENT_SOURCE_DIR}/res-it
        ${CMAKE_CURRENT_SOURCE_DIR}/res-en
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v2
        ${CMAKE_CURRENT_SOURCE_DIR}/src-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/res-v1
        ${CMAKE_CURRENT_SOURCE_DIR}/src
        ${CMAKE_CURRENT_SOURCE_DIR}/res
    SHA c702e1b043be6b3c51daab425e50c3195a81e1db
)
