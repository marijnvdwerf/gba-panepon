set(AGBCC       "/Users/Marijn/Projects/agbcc/old_agbcc" )
set(AGBCC_INCLUDES       "/Users/Marijn/Projects/agbcc/ginclude/" )
set(AGBCC_FLAGS " -mthumb-interwork -Wimplicit -Wparentheses -Wunused -Werror -O2 -fhex-asm")

set(CMD_PP "<CMAKE_C_COMPILER> <DEFINES> <INCLUDES> -I${AGBCC_INCLUDES} -nostdinc -undef -Werror -E <SOURCE>")
set(CMD_C "${AGBCC} ${AGBCC_FLAGS} ")
set(CMD_AS "${CMAKE_ASM_COMPILER} ${CMAKE_ASM_ARCHITECTURE_FLAGS} -x assembler")
set(CMAKE_C_COMPILE_OBJECT "(( ${CMD_PP} | ${CMD_C} -o - ) && echo '.text\\n\\t.align\\t2, 0\\n') | ${CMD_AS} -o <OBJECT> -c -")
set(CMAKE_C_CREATE_ASSEMBLY_SOURCE "(( ${CMD_PP} | ${CMD_C} -o - ) && echo '.text\\n\\t.align\\t2, 0\\n') > <ASSEMBLY_SOURCE>")

add_library (m4a m4a_1.s m4a_2.c m4a_3.s m4a_4.c data.c)
target_include_directories(m4a PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(m4a  agbsyscall)