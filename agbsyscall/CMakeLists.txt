
set(srcs
        src/AgbSysCpuSet.s
        src/AgbSysLZ77UnCompVram.s
        src/AgbSysSoundBiasReset.s
        src/AgbSysSoundBiasSet.s
        src/AgbSysVBlankIntrWait.s
        )

add_library (agbsyscall STATIC ${srcs})
target_link_libraries(agbsyscall agb)
