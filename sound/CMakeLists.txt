find_program(AIF2PCM NAMES aif2pcm PATHS "${POKERUBY}" ENV POKERUBY PATH_SUFFIXES "tools/aif2pcm")
if(NOT AIF2PCM)
    message(FATAL_ERROR "'aif2pcm' not found. Did you set the pokeruby path?")
endif()

find_program (NODE NAMES node)
if(NOT NODE)
    message(FATAL_ERROR "'node' not found.")
endif()

macro(generate_pcm PATH_AIF)
    get_filename_component(PATH_DIRECTORY ${PATH_AIF} DIRECTORY)
    get_filename_component(PATH_WE ${PATH_AIF} NAME_WE)
    set(PATH_BIN "${PATH_DIRECTORY}/${PATH_WE}.bin")
    set(PATH "${PATH_DIRECTORY}/${PATH_WE}")

    add_custom_command(
            OUTPUT  "${CMAKE_CURRENT_BINARY_DIR}/${PATH_AIF}.s"
            COMMAND ${CMAKE_COMMAND} -E copy "${CMAKE_CURRENT_SOURCE_DIR}/${PATH_AIF}" "${CMAKE_CURRENT_BINARY_DIR}/${PATH_AIF}"
            COMMAND ${AIF2PCM} ${CMAKE_CURRENT_BINARY_DIR}/${PATH_AIF}
            COMMAND  ${NODE} ${CMAKE_CURRENT_SOURCE_DIR}/../instrument.js "${CMAKE_CURRENT_BINARY_DIR}/${PATH_BIN}"  > "${CMAKE_CURRENT_BINARY_DIR}/${PATH_AIF}.s"
            DEPENDS  ${CMAKE_CURRENT_SOURCE_DIR}/${PATH_AIF}
    )
    list(APPEND SRC "${PATH_AIF}.s")
endmacro()

generate_pcm(aiff/marimba_f4_e_l_13k8b.aif)
generate_pcm(aiff/vibraphon_f4_e2l_13k8b.aif)
generate_pcm(aiff/guitar_c3_e4l_13k8b.aif)
generate_pcm(aiff/picked_bass_c2_e3l_13k8b.aif)
generate_pcm(aiff/slap_bass_e4l_13k8b.aif)
generate_pcm(aiff/trumpet_f4_e1_l_13k8b.aif)
generate_pcm(aiff/clarinet_c4_el_13k8b.aif)
generate_pcm(aiff/square_wave_f4_13k8b.aif)
generate_pcm(aiff/JP_8_square_c4_l_13k8b.aif)
generate_pcm(aiff/pick_bass_e1_el_13k8b.aif)
generate_pcm(aiff/drum_kick_b_e_13k8b.aif)
generate_pcm(aiff/drum_side_stick.aif)
generate_pcm(aiff/drum_d1_snare_13k8b.aif)
generate_pcm(aiff/drum_hand_clap_13k8b.aif)
generate_pcm(aiff/drum_hihat_e2_13k8b.aif)
generate_pcm(aiff/drum_claves_e_13k8b.aif)
generate_pcm(aiff/panepon_se_cursor_e1_13k8b.aif)
generate_pcm(aiff/panepon_se_b_break_1_13k8b.aif)
generate_pcm(aiff/panepon_se_b_drop1_e_13k8b.aif)
generate_pcm(aiff/panepon_se_b_break_2_13k8b.aif)
generate_pcm(aiff/panepon_se_break_e4_13k8b.aif)
generate_pcm(aiff/panepon_se_b_break_4_13k8b.aif)
generate_pcm(aiff/pupuri_1_13k8b.aif)
generate_pcm(aiff/pupuri_2_13k8b.aif)
generate_pcm(aiff/pupuri_3_13k8b.aif)
generate_pcm(aiff/pupuu_5_1_13k8b.aif)
generate_pcm(aiff/pupuu_5_2_13k8b.aif)

list(APPEND SRC
        src/panepon_se_sys_menu_cursor.s
        src/panepon_se_sys_menu_ok.s
        src/panepon_se_sys_menu_cancel.s
        src/panepon_se_sys_pause.s
        src/panepon_se_count_down.s
        src/panepon_se_count_start.s
        src/panepon_se_cursor.s
        src/panepon_se_panel_switch.s
        src/panepon_se_block_break_1_1.s
        src/panepon_se_block_break_1_2.s
        src/panepon_se_block_break_1_3.s
        src/panepon_se_block_break_1_4.s
        src/panepon_se_block_break_1_5.s
        src/panepon_se_block_break_1_6.s
        src/panepon_se_block_break_1_7.s
        src/panepon_se_block_break_1_8.s
        src/panepon_se_block_break_1_9.s
        src/panepon_se_block_break_1_A.s
        src/panepon_se_block_break_2_1.s
        src/panepon_se_block_break_2_2.s
        src/panepon_se_block_break_2_3.s
        src/panepon_se_block_break_2_4.s
        src/panepon_se_block_break_2_5.s
        src/panepon_se_block_break_2_6.s
        src/panepon_se_block_break_2_7.s
        src/panepon_se_block_break_2_8.s
        src/panepon_se_block_break_2_9.s
        src/panepon_se_block_break_2_A.s
        src/panepon_se_block_break_3_1.s
        src/panepon_se_block_break_3_2.s
        src/panepon_se_block_break_3_3.s
        src/panepon_se_block_break_3_4.s
        src/panepon_se_block_break_3_5.s
        src/panepon_se_block_break_3_6.s
        src/panepon_se_block_break_3_7.s
        src/panepon_se_block_break_3_8.s
        src/panepon_se_block_break_3_9.s
        src/panepon_se_block_break_3_A.s
        src/panepon_se_block_break_4_1.s
        src/panepon_se_block_break_4_2.s
        src/panepon_se_block_break_4_3.s
        src/panepon_se_block_break_4_4.s
        src/panepon_se_block_break_4_5.s
        src/panepon_se_block_break_4_6.s
        src/panepon_se_block_break_4_7.s
        src/panepon_se_block_break_4_8.s
        src/panepon_se_block_break_4_9.s
        src/panepon_se_block_break_4_A.s
        src/panepon_se_panel_drop.s
        src/panepon_se_block_drop_big_1.s
        src/panepon_se_block_drop_big_2.s
        src/panepon_se_block_d_big_e9_3.s
        src/panepon_se_fanfare_1.s
        src/panepon_se_fanfare_2.s
        src/panepon_se_fanfare_3.s
        src/panepon_se_chain_voice_e.s
        src/panepon_se_panel_over_e2.s
        src/panepon_se_game_over_fall.s
        src/panepon_se_stop_voice_e4.s
        src/cnt_bgm_stop.s
        src/panepon_bgm_flower_e12_01.s
        src/panepon_bgm_flower_02.s
        src/panepon_bgm_gameover.s
        src/panepon_bgm_select_e3.s
        src/panepon_bgm_result_e1.s
        src/panepon_bgm_title_e.s
        )

add_library (sound STATIC ${SRC})
target_include_directories(sound PRIVATE src)