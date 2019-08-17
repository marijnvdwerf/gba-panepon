set(AGBCC       "/Users/Marijn/Projects/agbcc/old_agbcc" )
set(AGBCC_INCLUDES       "/Users/Marijn/Projects/agbcc/ginclude/" )
set(AGBCC_FLAGS " -mthumb-interwork -Wimplicit -Wparentheses -Wunused -Werror -O2 -fhex-asm")

set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -Wa,-I${CMAKE_CURRENT_SOURCE_DIR}/src")

set(CMD_PP "<CMAKE_C_COMPILER> <DEFINES> <INCLUDES> -I${AGBCC_INCLUDES} -nostdinc -undef -Werror -E <SOURCE>")
set(CMD_C "${AGBCC} ${AGBCC_FLAGS} ")
set(CMD_AS "${CMAKE_ASM_COMPILER} ${CMAKE_ASM_ARCHITECTURE_FLAGS} -x assembler")
set(CMAKE_C_COMPILE_OBJECT "(( ${CMD_PP} | ${CMD_C} -o - ) && echo '.text\\n\\t.align\\t2, 0\\n') | ${CMD_AS} -o <OBJECT> -c -")
set(CMAKE_C_CREATE_ASSEMBLY_SOURCE "(( ${CMD_PP} | ${CMD_C} -o - ) && echo '.text\\n\\t.align\\t2, 0\\n') > <ASSEMBLY_SOURCE>")


set(SOURCES
    src/crt0_multi_boot.s
    src/dummy.s
    src/aob.s
    src/src.s
    src/aob2.s
    src/src2.s
    src/data.c
    src/bss2.s
    src/agb_start_from_arm.s
    src/sounddata.s
    src/sounddata2.s
    src/data.s
    src/sound3.s)

add_executable(hello ${SOURCES})
target_compile_definitions(hello PRIVATE -DBASEROM=${BASEROM})
target_link_libraries(hello PRIVATE  m4a agbsyscall isagb gcc newlib )


set(MAPFILE "out.map")
target_link_options(hello PRIVATE "LINKER:-Map=${MAPFILE}")
target_link_options(hello PRIVATE "LINKER:-T${CMAKE_CURRENT_SOURCE_DIR}/ldscript.ld")
target_link_options(hello PRIVATE "LINKER:-nostdlib")
set_target_properties(hello PROPERTIES LINK_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/ldscript.ld")

set(target hello)
get_filename_component(target_we ${target} NAME_WE)

add_custom_command(
        OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba
        COMMAND ${OBJCOPY} -O binary  $<TARGET_FILE:${target}> ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba
        COMMAND ${GBAFIX} ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba "-tGC-GBA Probe"
        COMMAND xxd ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba > ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba.txt
        COMMAND xxd ${BASEROM} > ${CMAKE_CURRENT_BINARY_DIR}/baserom.gba.txt
        DEPENDS ${target}
        VERBATIM
)
add_custom_target(${target_we}_gba ALL SOURCES ${CMAKE_CURRENT_BINARY_DIR}/${target_we}.gba)

set(CMAKE_C_LINK_EXECUTABLE "<CMAKE_LINKER> -nostdlib -T${CMAKE_CURRENT_SOURCE_DIR}/ldscript.ld -Map=${CMAKE_CURRENT_BINARY_DIR}/out.map <OBJECTS>  -o <TARGET> <LINK_LIBRARIES>")
