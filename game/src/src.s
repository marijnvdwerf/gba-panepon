#include "asm/macros.inc"

	.include "functions/AnisDrvInit.s"
	.include "functions/AnisDrvStart1.s"
	.include "functions/AnisDrvStart2.s"
	.include "functions/AnisDrvStart4.s"
	.include "functions/AnisDrvJump.s"
	.include "functions/AnisDrvStop.s"
	.include "functions/AnisDrvToEnd.s"
	.include "functions/AnisDrvSub_end.s"
	.include "functions/AnisDrvSub_endc.s"
	.include "functions/AnisDrvSub_nop.s"
	.include "functions/AnisDrvSub_ksb.s"
	.include "functions/AnisDrvSub_rvw.s"
	.include "functions/AnisDrvSub_rvwk.s"
	.include "functions/AnisDrvSub_prog.s"
	.include "functions/AnisDrvSub_bcs.s"
	.include "functions/AnisDrvSub_tjmp.s"
	.include "functions/AnisDrvSub_jump.s"
	.include "functions/AnisDrvSub_call.s"
	.include "functions/AnisDrvSub_ret.s"
	.include "functions/AnisDrvSub_stack0.s"
	.include "functions/AnisDrvSub_dma.s"
	.include "functions/AnisDrvMain.s"
	.include "functions/MDCPC_start.s"
	.include "functions/MDCPC_init.s"
	.include "functions/MDCPC_sub_CRLF.s"
	.include "functions/MDCPC_sub_PageClear.s"
	.include "functions/MDCPC_sub_TableJump.s"
	.include "functions/MDCPC_main.s"
	.include "functions/MDCPC_print.s"
	.include "functions/NisKabegamiRoll.s"
	.include "functions/NisSetGameVRamData.s"
	.include "functions/NisTitleZero.s"
	.include "functions/NisTitleVram.s"
	.include "functions/NisSetATitleVRamData.s"
	.include "functions/NisATitleVram.s"
	.include "functions/NisATitleInit.s"
	.include "functions/NisATitleMain0.s"
	.include "functions/NisATitleMain1.s"
	.include "functions/NisATitleLast.s"
	.include "functions/NisTitleInit.s"
	.include "functions/NisTitleMain.s"
	.include "functions/NisOptSave_Comp.s"
	.include "functions/NisOptSave_Write.s"
	.include "functions/NisOptSave_Read.s"
	.include "functions/NisOptSet_Def.s"
	.include "functions/NisOptSel_WtPara_on_of.s"
	.include "functions/NisOptSel_WtPara_of_on.s"
	.include "functions/NisOptSel_WtPara_N5_N6.s"
	.include "functions/NisOptSel_WtPara_NM_RN.s"
	.include "functions/NisOptSel_WtPara_16sin.s"
	.include "functions/NisOptSel_np_sw_markten.s"
	.include "functions/NisOptSel_np_sw_countstop.s"
	.include "functions/NisOptSel_np_fld_bscfg.s"
	.include "functions/NisOptSel_np_sw_PanelNumber.s"
	.include "functions/NisOptSel_np_sw_no_roll_stop.s"
	.include "functions/NisOptSel_np_sw_ball_command.s"
	.include "functions/NisOptSel_np_sw_Put_GOCnt.s"
	.include "functions/NisOptSel_np_sw_OjamaKaitou.s"
	.include "functions/NisOptSel_np_sw_AgbKey_mode.s"
	.include "functions/NisOptSel_np_sw_panelanime.s"
	.include "functions/NisOptSel_np_sw_kage_color.s"
	.include "functions/NisOptSel_np_sw_field_color.s"
	.include "functions/NisOptSel_np_sw_option_def.s"
	.include "functions/NisOptSel_np_sw_zenkeshi.s"
	.include "functions/NisOptionSelectSub_Screen.s"
	.include "functions/NisSelectSub_Every.s"
	.include "functions/NisSelectSub_Search.s"
	.include "functions/NisSelectSub_pCsl.s"
	.include "functions/NisSelectSub_Csl.s"
	.include "functions/NisSelectSub_UD_Key.s"
	.include "functions/NisSelectSub_LR_Key.s"
	.include "functions/NisSelectSub_ScrWrite.s"
	.include "functions/NisSelectSub_A_Key.s"
	.include "functions/NisSelectSub_B_Key.s"
	.include "functions/NisSelectInit.s"
	.include "functions/NisSelectMain.s"
	.include "functions/np_sel_fukidashi_objput.s"
	.include "functions/NisTestSelectInit.s"
	.include "functions/NisTestSelectMain.s"
	.include "functions/NisMoveKabeColor_Main.s"
	.include "functions/NisMoveKabeColorI_Main.s"
	.include "functions/NisMsgSleepInit.s"
	.include "functions/NisMsgSleepMain.s"
	.include "functions/NisOptField_Init.s"
	.include "functions/NisOptField_Main.s"
	.include "functions/Pon_RandomCnt.s"
	.include "functions/Pon_RandomNORM.s"
	.include "functions/RandomGet00.s"
	.include "functions/RandomGet01.s"
	.include "functions/RandomGet02.s"
	.include "functions/RandomGet03.s"
	.include "functions/RandomGet04.s"
	.include "functions/RandomGet05.s"
	.include "functions/np_gp_GAMEPARA_CMD_PNLKIND.s"
	.include "functions/NisHako_BLD_Set.s"
	.include "functions/nis_game_vinit.s"
	.include "functions/nis_game_init.s"
	.include "functions/np_SoundSetBGM.s"
	.include "functions/np_game_bgm_normal.s"
	.include "functions/np_game_bgm_danger.s"
	.include "functions/nis_game_main.s"
	.include "functions/np_set_scfg.s"
	.include "functions/np_gameover_chk.s"
	.include "functions/np_csl_main.s"
	.include "functions/np_stgclr_py_1up.s"
	.include "functions/np_tenmetu_spdlv.s"
	.include "functions/np_rlup_lvup.s"
	.include "functions/np_rlup_set.s"
	.include "functions/np_rlup_add.s"
	.include "functions/np_roll_up.s"
	.include "functions/np_1dot_roll_up.s"
	.include "functions/np_mem_roll_up.s"
	.include "functions/np_gray_has_2.s"
	.include "functions/np_gray_has_0.s"
	.include "functions/np_gray_has_1.s"
	.include "functions/np_gp_GAMEPARA_CMD_SPNLCHK.s"
	.include "functions/np_9danme_set.s"
	.include "functions/np_gray_colors.s"
	.include "functions/np_csl_swap.s"
	.include "functions/nswp_0sp.s"
	.include "functions/nswp_objput.s"
	.include "functions/np_pnl_swap.s"
	.include "functions/nswp_1switchend.s"
	.include "functions/nswp_objend.s"
	.include "functions/np_csl_mov.s"
	.include "functions/np_csl_pt_PXPY_XBYB.s"
	.include "functions/np_csl_pt_XBYB.s"
	.include "functions/np_csl_pt_sml.s"
	.include "functions/np_csl_pt_big.s"
	.include "functions/np_csl_pt_sb.s"
	.include "functions/np_csl_put.s"
	.include "functions/np_pzlmode_gameover.s"
	.include "functions/np_shoukyo_kensaku.s"
	.include "functions/np_hanteiclr.s"
	.include "functions/np_hanteiyou.s"
	.include "functions/np_yoko_shoukyo.s"
	.include "functions/np_tate_shoukyo.s"
	.include "functions/np_bak_check.s"
	.include "functions/np_bak_roll_up.s"
	.include "functions/nbmn_kaitou_sch_under.s"
	.include "functions/np_bak_main.s"
	.include "functions/np_bak_main_knbldfkjnsdfjkjnl.s"
	.include "functions/nbmn_bik_sound.s"
	.include "functions/np_ready_start.s"
	.include "functions/np_field_yure.s"
	.include "functions/np_fldyu_set.s"
	.include "functions/np_fldyu_ojmset.s"
	.include "functions/np_clear_ch.s"
	.include "functions/np_kiken_bgm.s"
	.include "functions/np_set_field_bgm.s"
	.include "functions/np_pchk_0dan.s"
	.include "functions/np_pchk_1dan.s"
	.include "functions/np_pchk_2dan.s"
	.include "functions/np_pchk_dan.s"
	.include "functions/np_game_code_kosu.s"
	.include "functions/np_game_code_sort.s"
	.include "functions/np_game_code_read.s"
	.include "functions/np_game_code_set.s"
	.include "functions/np_game_code_rens.s"
	.include "functions/np_game_code_douj.s"
	.include "functions/np_read_stpct.s"
	.include "functions/np_rdstpct_cntset.s"
	.include "functions/np_add_bonus.s"
	.include "functions/np_otai_test.s"
	.include "functions/inc_otai_idx.s"
	.include "functions/np_otai_wt.s"
	.include "functions/np_otai_ck.s"
	.include "functions/np_otai_tr.s"
	.include "functions/np_otai_rd.s"
	.include "functions/np_otai_ph.s"
	.include "functions/np_ojm_atahas.s"
	.include "functions/np_ojm_has.s"
	.include "functions/np_ojmten_wt.s"
	.include "functions/np_ojmten_dn.s"
	.include "functions/np_PutObjPnl.s"
	.include "functions/np_srwreq_score.s"
	.include "functions/np_srwreq_spdlv.s"
	.include "functions/np_srwreq_stpct.s"
	.include "functions/np_srwreq_e_spdlv.s"
	.include "functions/np_srwreq_time.s"
	.include "functions/np_SE_rens_douj.s"
	.include "functions/npgo_init.s"
	.include "functions/npgmov_kuro_ss.s"
	.include "functions/npgmov_kuro_sub.s"
	.include "functions/np_fuwafuwa_05.s"
	.include "functions/np_fuwafuwa_10.s"
	.include "functions/np_fuwafuwa_20.s"
	.include "functions/npgmov_tagnagn.s"
	.include "functions/npgmov_tagnyes.s"
	.include "functions/npgmov_tagnnoo.s"
	.include "functions/npgmov_tagncsr.s"
	.include "functions/npgo_all_bikkuri.s"
	.include "functions/npgo_WinLoseDraw.s"
	.include "functions/npgoWLD_bikkuri.s"
	.include "functions/npgoWLD_panelfacelose_init.s"
	.include "functions/npgoWLD_panelfacelose_loop.s"
	.include "functions/npgoWLD_wait2.s"
	.include "functions/npgoWLD_keshite_init.s"
	.include "functions/npgoWLD_keshite_main.s"
	.include "functions/npgoWLD_objcolor_set.s"
	.include "functions/npgoWLD_bigchr_init.s"
	.include "functions/npgoWLD_bigchr_main.s"
	.include "functions/npgoWLD_YreLopSet.s"
	.include "functions/npgoWLD_TryAgainYesNo_init.s"
	.include "functions/npgoWLD_TryAgainYesNo_main.s"
	.include "functions/npgoWLD_TryAgainYesNo_Af_init.s"
	.include "functions/npgoWLD_TryAgainYesNo_Af_main.s"
	.include "functions/np_chk_start_key_s.s"
	.include "functions/np_BigMojiYure_main.s"
	.include "functions/np_PutResultNumber.s"
	.include "functions/npgoWLD_result_init.s"
	.include "functions/npgoWLD_result_scrn.s"
	.include "functions/npgoWLD_result_appear.s"
	.include "functions/npgoWLD_result_main.s"
	.include "functions/nis_game_over.s"
	.include "functions/nds_gmlvl_set.s"
	.include "functions/srw_init.s"
	.include "functions/srw_main.s"
	.include "functions/nis_game_area_clr.s"
	.include "functions/nis_game_ram_clr.s"
	.include "functions/np_game_start_set0.s"
	.include "functions/np_game_start_set1.s"
	.include "functions/np_AgbKey_Init.s"
	.include "functions/np_game_chr_scr.s"
	.include "functions/nis_game_para_read.s"
	.include "functions/np_ready_start_other.s"
	.include "functions/np_rdyst_cslmov.s"
	.include "functions/np_rdyst_321.s"
	.include "functions/np_rdyst_ready.s"
	.include "functions/np_rdyst_pro_stage_stage_obj_put.s"
	.include "functions/np_rdyst_pro_stage.s"
	.include "functions/nrdytmv_funputfun.s"
	.include "functions/np_rdyst_pro_timemov.s"
	.include "functions/np_game_para_rd2.s"
	.include "functions/npgpr_TENMETU.s"
	.include "functions/npgpr_KAOFRM.s"
	.include "functions/npgpr_KAOKAN.s"
#if VERSION == 2
	.include "functions/sub_200835C.s"
#endif
	.include "functions/npgpr_FLOAT.s"
	.include "functions/npgpr_OFLOAT.s"
	.include "functions/npgpr_STTSPDLVL.s"
	.include "functions/npgpr_SPNLCHK.s"
	.include "functions/npgpr_PNLKIND.s"
	.include "functions/npgpr_BIKSHU.s"
	.include "functions/npgpr_BIKMAX.s"
	.include "functions/npgpr_DEADWAIT.s"
	.include "functions/npgpr_OPNLCHK.s"
	.include "functions/npgpr_PNLSWAP.s"
	.include "functions/npgpr_lvlconv.s"
	.include "functions/npgpr_stgclr_rnd.s"
	.include "functions/npgpr_P1lev.s"
	.include "functions/npgpr_x_slow.s"
	.include "functions/nis_pause_init.s"
	.include "functions/nis_pause_exit.s"
	.include "functions/nis_pause_wait.s"
	.include "functions/nis_pause_window.s"
	.include "functions/nis_pause_select.s"
	.include "functions/nis_pause_main.s"
	.include "functions/np_time_cnt.s"
	.include "functions/np_panel_anm.s"
	.include "functions/np_chakuchi_anm.s"
	.include "functions/npka_macm.s"
	.include "functions/np_kiken_anm.s"
	.include "functions/npka_writ0.s"
	.include "functions/npka_writ2.s"
	.include "functions/npka_write.s"
	.include "functions/np_mk_hass.s"
	.include "functions/np_mh_akis.s"
	.include "functions/np_mh_rens.s"
	.include "functions/np_mh_douj.s"
	.include "functions/np_mh_bikk.s"
	.include "functions/np_mh_fgs.s"
	.include "functions/np_mh_xys.s"
	.include "functions/np_mk_main.s"
	.include "functions/np_mki_mawaru.s"
	.include "functions/np_mks_tenjof.s"
	.include "functions/np_mk_sub.s"
	.include "functions/np_mks_uzuuput.s"
	.include "functions/np_mks_markput.s"
	.include "functions/np_mk_put_stop.s"
	.include "functions/np_mk_put_agb.s"
	.include "functions/np_game_start_panel.s"
	.include "functions/npgmstpnl_2vs.s"
	.include "functions/npgmstpnl_sub.s"
	.include "functions/npgmstpnl_sb1.s"
	.include "functions/npgmstpnl_pzl.s"
	.include "functions/npgmstpnl_rnd.s"
	.include "functions/npgmstpnl_stg.s"
	.include "functions/npgmstpnl_dem.s"
	.include "functions/np_DemoKeyDat_Play.s"
	.include "functions/np_ojm_put.s"
	.include "functions/np_ojm_search_head.s"
	.include "functions/np_ojm_under.s"
	.include "functions/np_ojm_set_NR.s"
	.include "functions/np_ojm_cpy_cunt.s"
	.include "functions/np_rksch_push.s"
	.include "functions/np_rksch_pop.s"
	.include "functions/np_rakka_stto_nf.s"
	.include "functions/np_rakka_stto_ch.s"
	.include "functions/np_fadr_xy.s"
	.include "functions/np_ojama_shoukyo.s"
	.include "functions/npojmsh_ojmsch.s"
	.include "functions/npojmsh_fgset.s"
	.include "functions/nposch_chk_l2l3_push.s"
	.include "functions/nposch_chk_push.s"
	.include "functions/nposch_call.s"
	.include "functions/npojmsh_ojbkph.s"
	.include "functions/np_OjamaAttackInit.s"
	.include "functions/np_OjamaAttackDown.s"
	.include "functions/np_rakka_main.s"
	.include "functions/np_baku_ani_hass.s"
	.include "functions/np_baku_ani_main.s"
	.include "functions/np_Put_GOCnt_main.s"
	.include "functions/npgmcs_speedlv_ojamalv.s"
	.include "functions/np_zenkeshi_check.s"
	.include "functions/np_zenkeshi_demo_hass.s"
	.include "functions/np_zenkeshi_demo_main.s"
	.include "functions/np_GameOverColorChange_Main.s"
	.include "functions/AS_Mascot_RndWait.s"
	.include "functions/AS_Mascot_head_stp.s"
	.include "functions/AS_Mascot_head_stt.s"
	.include "functions/sub_200BAA4.s"
	.include "functions/np_PutObjMascot_Init.s"
	.include "functions/np_PutObjMascot_Bikkuri.s"
	.include "functions/np_PutObjMascot_GameOver.s"
