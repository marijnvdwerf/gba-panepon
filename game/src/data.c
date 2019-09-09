typedef unsigned char u8;
typedef     unsigned int            u32;


u8 CRAM_BGA_SCR_GameFrame[0x800] = {1};
u8 MDCPC_BUF_Main[0x18] = {1};
u8 b_BG1VOFS[0x4] = {1};
u8 b_BG2HOFS[0x4] = {1};
u8 KeyRead_Rpt[0x10] = {1};
u8 ARam[0x9C] = {1};
u8 b_BG0HOFS[0x4] = {1};
u8 NisRnd_Shu[0x4] = {1};
u8 KeyRead_Para_ST[0x4] = {1};
u8 MainSeqIdx[0x8] = {1};
u8 PrbRam[0x20C] = {1};
#if VERSION == 0
u8 np_fadr_xy_Y[0x4] = {1};
u8 np_fadr_xy_X[0x4] = {1};
#endif
u8 NisChk_SpeedFG[0x4] = {1};
u8 KeyRead_Now[0x4] = {1};
u8 NisRnd_Idx[0x4] = {1};
u8 KeyRead_Trg[8] = {1};
u8 Svrm[0x10] = {1};
u8 MDCPC_BUF_Help[0x18] = {1};
u8 KeyRead_Para_RT[0x4] = {1};
u8 b_BG0VOFS[0x4] = {1};
u8 b_BG1HOFS[0x4] = {1};
u8 KeyRead_NowBf[0x4] = {1};
u8 KeyRead_RptCt[0x4] = {1};
u8 b_BG3HOFS[0x4] = {1};
u8 SelRam[0x14] = {1};
u8 NmiInc[0x4] = {1};
u8 b_BG2VOFS[0x8] = {1};
#if VERSION == 0
u8 NRam[0xC64] = {1};
#elif VERSION == 1
u8 NRam[0xC64-0x80] = {1};
#endif
u8 np_ojm_search_head_BCreg[0x4] = {1};
u8 np_ojm_search_head_Areg[0x4] = {1};
u8 b_BG3VOFS[0x4] = {1};
u8 m4a_sound[0xFB0] = {1};
u8 m4a_mplay005[0x40] = {1};
u8 m4a_mplay006[0x40] = {1};
u8 m4a_mplay000[0x40] = {1};
u8 ExtMPlyJmpTbl[0x90] = {1};
u8 m4a_cgbchn[0x100] = {1};
u8 m4a_mplay007[0x40] = {1};
u8 m4a_mplay001[0x40] = {1};
u8 m4a_mplay002[0x40] = {1};
u8 m4a_mplay004[0x40] = {1};
u8 m4a_memacc_area[0x10] = {1};
u8 m4a_mplay003[0x40] = {1};
u8 irq_func_table_ram[0x3C] = {1};



/*
const u8 np_Msg_Help_00[0x272] = {1};
const u8 np_Msg_Help_01[0x91] = {1};
const u8 np_Msg_Help_02[0x9C] = {1};
const u8 np_Msg_Help_03[0xCD] = {1};
const u8 np_Msg_Help_10[0x3C] = {1};
const u8 np_Msg_Help_11[0x1C8] = {1};
const u8 np_Msg_Help_12[0xFE] = {1};
const u8 np_Msg_Help_20[0x3F] = {1};
const u8 np_Msg_Help_21[0xC1] = {1};
const u8 np_Msg_Help_22[0x10A] = {1};
const u8 np_Msg_Help_30[0x91] = {1};
const u8 np_Msg_Help_31[0x1AB] = {1};
const u8 np_Msg_Help_32[0xBD] = {1};
const u8 np_Msg_Help_33[0x113] = {1};
const u8 np_Msg_Help_34[0x116] = {1};
const u8 np_Msg_Help_35[0x190] = {1};
const u8 np_Msg_Help_36[0x18F] = {1};
const u8 np_Msg_Help_37[0x109] = {1};
const u8 np_Msg_Help_38[0x75] = {1};
const u8 np_Msg_Help_39[0xBC] = {1};
const u8 np_Msg_Help_3a[0xC4] = {1};
const u8 np_Msg_Help_3b[0xA3] = {1};
const u8 np_Msg_Help_3c[0xDD] = {1};
const u8 np_Msg_Help_3d[0x5B] = {1};
const u8 np_Msg_Help_04[0x147] = {1};
const u8 np_Msg_Help_40[0x1AC] = {1};
const u8 np_Msg_GameLevel_Slow_1[0x8] = {1};
const u8 np_Msg_GameLevel_Slow_2[0x8] = {1};
const u8 np_Msg_GameLevel_Slow_3[0x8] = {1};
const u8 np_Msg_GameLevel_Easy[0x8] = {1};
const u8 np_Msg_GameLevel_Normal[0x8] = {1};
const u8 np_Msg_GameLevel_Hard[0x8] = {1};
const u8 np_Msg_GameLevel_S_Hard[0xA] = {1};
const u8 np_Msg_GameLevel_V_Hard[0xD] = {1};
const u8 np_Msg_GameLevel_Table[0x20] = {1};
const u8 np_Msg_MainSelect_00[0x3D] = {1};
const u8 np_Msg_MainSelect_01[0x35] = {1};
const u8 np_Msg_MainSelect_02[0x36] = {1};
const u8 np_Msg_MainSelect_03[0x9] = {1};
const u8 np_Msg_MainSelect_04[0xB] = {1};
const u8 np_Msg_OptionSelect_SP[0xF] = {1};
const u8 np_Msg_OptionSelect_00[0x10] = {1};
const u8 np_Msg_OptionSelect_01[0xE] = {1};
const u8 np_Msg_OptionSelect_02[0xE] = {1};
const u8 np_Msg_OptionSelect_03[0xE] = {1};
const u8 np_Msg_OptionSelect_04[0xE] = {1};
const u8 np_Msg_OptionSelect_05[0x10] = {1};
const u8 np_Msg_OptionSelect_06[0xE] = {1};
const u8 np_Msg_OptionSelect_07[0xE] = {1};
const u8 np_Msg_OptionSelect_08[0xE] = {1};
const u8 np_Msg_OptionSelect_09[0xE] = {1};
const u8 np_Msg_OptionSelect_0a[0xE] = {1};
const u8 np_Msg_OptionSelect_0b[0x10] = {1};
const u8 np_Msg_OptionSelect_0c[0x10] = {1};
const u8 np_Msg_OptionSelect_OF[0x5] = {1};
const u8 np_Msg_OptionSelect_ON[0x5] = {1};
const u8 np_Msg_OptionSelect_N5[0x5] = {1};
const u8 np_Msg_OptionSelect_N6[0x5] = {1};
const u8 np_Msg_OptionSelect_NM[0x5] = {1};
const u8 np_Msg_OptionSelect_RN[0x5] = {1};
const u8 np_Msg_OptionSelect_DF[0x10] = {1};
const u8 np_Msg_OptionSelect_YR[0x10] = {1};
const u8 np_Msg_SuperDemo_00[0x12] = {1};
const u8 np_Msg_SuperDemo_01[0x12] = {1};
const u8 np_Msg_SuperDemo_02[0x12] = {1};
const u8 np_Msg_SuperDemo_03[0x12] = {1};
const u8 np_Msg_SuperDemo_04[0x12] = {1};
const u8 np_Msg_SuperDemo_05[0x12] = {1};
const u8 np_Msg_SuperDemo_06[0x12] = {1};
const u8 np_Msg_SuperDemo_07[0x12] = {1};
const u8 np_Msg_SuperDemo_08[0x12] = {1};
const u8 np_Msg_SuperDemo_09[0x12] = {1};
const u8 np_Msg_SuperDemo_10[0x12] = {1};
const u8 np_Msg_SuperDemo_11[0x12] = {1};
const u8 np_Msg_SuperDemo_12[0x12] = {1};
const u8 np_Msg_SuperDemo_13[0x12] = {1};
const u8 np_Msg_SuperDemo_14[0x12] = {1};
const u8 np_Msg_SuperDemo_15[0x12] = {1};
const u8 np_Msg_SuperDemo_16[0x12] = {1};
const u8 np_Msg_SuperDemo_17[0x12] = {1};
const u8 np_Msg_SuperDemo_18[0x12] = {1};
const u8 np_Msg_SuperDemo_19[0x12] = {1};
const u8 np_Msg_SuperDemo_20[0x12] = {1};
const u8 np_Msg_SuperDemo_21[0x12] = {1};
const u8 np_Msg_SuperDemo_22[0x12] = {1};
const u8 np_Msg_SuperDemo_23[0x12] = {1};
const u8 np_Msg_SuperDemo_24[0x12] = {1};
const u8 np_Msg_SuperDemo_25[0x12] = {1};
const u8 np_Msg_SuperDemo_26[0x12] = {1};
const u8 np_Msg_SuperDemo_27[0x12] = {1};
const u8 np_Msg_SuperDemo_28[0x12] = {1};
const u8 np_Msg_SuperDemo_29[0x12] = {1};
const u8 np_Msg_SuperDemo_30[0x12] = {1};
const u8 np_Msg_SuperDemo_31[0x12] = {1};
const u8 np_Msg_SuperDemo_32[0x12] = {1};
const u8 np_Msg_SuperDemo_33[0x12] = {1};
const u8 np_Msg_SuperDemo_34[0x12] = {1};
const u8 np_Msg_SleepMode[0x7E] = {1};
const u8 GLV_ED_Kind[0x3] = {1};
const u8 GLV_ED_SeriKind[0x3] = {1};
const u8 GLV_ED_FlashNum[0x3] = {1};
const u8 GLV_ED_BikuFace[0x3] = {1};
const u8 GLV_ED_BakuKan[0x3] = {1};
const u8 GLV_ED_RakkaWait[0x4] = {1};
const u8 GLV_ED_JoshoFrame[0xC8] = {1};
const u8 GLV_ED_LevelUp[0x64] = {1};
const u8 GLV_ED_DojiSTm_doji00[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji04[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji05[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji06[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji07[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji08[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji09[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji10[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji11[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji12[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji13[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji14[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji15[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji16[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji17[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji18[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji19[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji20[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji21[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji22[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji23[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji24[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji25[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji26[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji27[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji28[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji29[0x6] = {1};
const u8 GLV_ED_DojiSTm_doji30[0x8] = {1};
const u8 GLV_ED_DojiSTime[0x140] = {1};
const u8 GLV_ED_RensaSTim_chain00[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain02[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain03[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain04[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain05[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain06[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain07[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain08[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain09[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain10[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain11[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain12[0x6] = {1};
const u8 GLV_ED_RensaSTim_chain13[0x8] = {1};
const u8 GLV_ED_RensaSTime[0x54] = {1};
const u8 GLV_ED_DangerDojiSTim_doji00[0x6] = {1};
const u8 GLV_ED_DangerDojiSTim_doji04[0x6] = {1};
const u8 GLV_ED_DangerDojiSTim_doji09[0x6] = {1};
const u8 GLV_ED_DangerDojiSTim_doji11[0x6] = {1};
const u8 GLV_ED_DangerDojiSTim_doji16[0x8] = {1};
const u8 GLV_ED_DangerDojiSTime[0x140] = {1};
const u8 GLV_ED_DangerRensaSTim_chain00[0x6] = {1};
const u8 GLV_ED_DangerRensaSTim_chain02[0x6] = {1};
const u8 GLV_ED_DangerRensaSTim_chain03[0x6] = {1};
const u8 GLV_ED_DangerRensaSTim_chain04[0x6] = {1};
const u8 GLV_ED_DangerRensaSTim_chain05[0x8] = {1};
const u8 GLV_ED_DangerRensaSTime[0x54] = {1};
const u8 GLV_ST_FlashNum[0x7] = {1};
const u8 GLV_ST_BikuFace[0x7] = {1};
const u8 GLV_ST_BakuKan[0x7] = {1};
const u8 GLV_ST_RakkaWait[0x7] = {1};
const u8 GLV_ST_SeriKind[0x7] = {1};
const u8 sm_strtspl_rnd1[0x5] = {1};
const u8 sm_strtspl_rnd2[0x5] = {1};
const u8 sm_strtspl_rnd3[0x5] = {1};
const u8 sm_strtspl_rnd4[0x5] = {1};
const u8 sm_strtspl_rnd5[0x5] = {1};
const u8 sm_strtspl_rnd6[0x8] = {1};
const u8 GLV_ST_StartSpeed[0x18] = {1};
const u8 sm_pnlkind_rnd1[0x5] = {1};
const u8 sm_pnlkind_rnd4[0x7] = {1};
const u8 GLV_ST_Kind[0x18] = {1};
const u8 sm_initpnls_rnd1[0x5] = {1};
const u8 sm_initpnls_rnd2[0x5] = {1};
const u8 sm_initpnls_rnd3[0x5] = {1};
const u8 sm_initpnls_rnd4[0x5] = {1};
const u8 GLV_ST_StartPanel[0x18] = {1};
const u8 sm_clrline_rnd1[0x5] = {1};
const u8 sm_clrline_rnd2[0x5] = {1};
const u8 sm_clrline_rnd3[0x5] = {1};
const u8 sm_clrline_rnd4[0x5] = {1};
const u8 sm_clrline_rnd5[0x5] = {1};
const u8 sm_clrline_rnd6[0x7] = {1};
const u8 GLV_ST_ClearLine[0x18] = {1};
const u8 GLV_ST_LevelUp[0xC6] = {1};
const u8 GLV_ST_DojiSTim_doji03[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji04[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji05[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji06[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji07[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji08[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji09[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji10[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji11[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji12[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji13[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji14[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji15[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji16[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji17[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji18[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji19[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji20[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji21[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji22[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji23[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji24[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji25[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji26[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji27[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji28[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji29[0xE] = {1};
const u8 GLV_ST_DojiSTim_doji30[0x10] = {1};
const u8 GLV_ST_DojiSTime[0x140] = {1};
const u8 GLV_ST_RensaSTim_chain00[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain02[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain03[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain04[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain05[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain06[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain07[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain08[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain09[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain10[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain11[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain12[0xE] = {1};
const u8 GLV_ST_RensaSTim_chain13[0x10] = {1};
const u8 GLV_ST_RensaSTime[0x54] = {1};
const u8 GLV_ST_DangerDojiSTim_doji03[0xE] = {1};
const u8 GLV_ST_DangerDojiSTim_doji04[0xE] = {1};
const u8 GLV_ST_DangerDojiSTim_doji09[0xE] = {1};
const u8 GLV_ST_DangerDojiSTim_doji11[0xE] = {1};
const u8 GLV_ST_DangerDojiSTim_doji16[0x10] = {1};
const u8 GLV_ST_DangerDojiSTime[0x140] = {1};
const u8 GLV_ST_DangerRensaSTim_chain00[0xE] = {1};
const u8 GLV_ST_DangerRensaSTim_chain02[0xE] = {1};
const u8 GLV_ST_DangerRensaSTim_chain03[0xE] = {1};
const u8 GLV_ST_DangerRensaSTim_chain04[0xE] = {1};
const u8 GLV_ST_DangerRensaSTim_chain05[0x10] = {1};
const u8 GLV_ST_DangerRensaSTime[0x54] = {1};
const u8 GLV_VSL_Kind[0xA] = {1};
const u8 GLV_VSL_Line[0xA] = {1};
const u8 GLV_VS_NopNum[0xA] = {1};
const u8 GLV_VS_Kind[0xA] = {1};
const u8 GLV_VST_Kind[0xA] = {1};
const u8 GLV_VS_SeriKind[0xA] = {1};
const u8 GLV_VS_FlashNum[0xA] = {1};
const u8 GLV_VS_BikuFace[0xA] = {1};
const u8 GLV_VS_BakuKan[0xA] = {1};
const u8 GLV_VS_StartSpeed[0xA] = {1};
const u8 GLV_VS_BikuPanel[0xA] = {1};
const u8 GLV_VS_MaxBikuPanel[0xA] = {1};
const u8 GLV_VS_RakkaWait[0xA] = {1};
const u8 GLV_VS_MeltRakkaWait[0xA] = {1};
const u8 GLV_VS_GameOverYuyo[0xA] = {1};
const u8 GLV_VS_MeltCount[0xA] = {1};
const u8 GLV_VS_LevelUp[0x64] = {1};
const u8 GLV_VS_DojiSTim_doji03[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji04[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji05[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji06[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji07[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji08[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji09[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji10[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji11[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji12[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji13[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji14[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji15[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji16[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji17[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji18[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji19[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji20[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji21[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji22[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji23[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji24[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji25[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji26[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji27[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji28[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji29[0x14] = {1};
const u8 GLV_VS_DojiSTim_doji30[0x14] = {1};
const u8 GLV_VS_DojiSTime[0x140] = {1};
const u8 GLV_VS_RensaSTim_chain00[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain02[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain03[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain04[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain05[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain06[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain07[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain08[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain09[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain10[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain11[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain12[0x14] = {1};
const u8 GLV_VS_RensaSTim_chain13[0x14] = {1};
const u8 GLV_VS_RensaSTime[0x54] = {1};
const u8 GLV_VS_DangerDojiSTim_doji03[0x14] = {1};
const u8 GLV_VS_DangerDojiSTim_doji04[0x14] = {1};
const u8 GLV_VS_DangerDojiSTim_doji09[0x14] = {1};
const u8 GLV_VS_DangerDojiSTim_doji11[0x14] = {1};
const u8 GLV_VS_DangerDojiSTim_doji16[0x14] = {1};
const u8 GLV_VS_DangerDojiSTime[0x140] = {1};
const u8 GLV_VS_DangerRensaSTim_chain00[0x14] = {1};
const u8 GLV_VS_DangerRensaSTim_chain02[0x14] = {1};
const u8 GLV_VS_DangerRensaSTim_chain03[0x14] = {1};
const u8 GLV_VS_DangerRensaSTim_chain04[0x14] = {1};
const u8 GLV_VS_DangerRensaSTim_chain05[0x14] = {1};
const u8 GLV_VS_DangerRensaSTime[0x54] = {1};
const u8 PanelInitData[0x54] = {1};
const u8 PanelInitData_StageMode[0x80] = {1};
const u8 np_bonus_rensa_AGB[0x54] = {1};
const u8 np_bonus_douji_AGB[0x140] = {1};
const u8 OjamaAttackData[0x4B0] = {1};
const u8 nis_shuuketu[0x3D8] = {1};
const u8 NisRnd_100dat[0x800] = {1};
const u8 npgmstpnldem_d20[0x48] = {1};
const u8 npgmstpnldem_d30[0x48] = {1};
const u8 npgmstpnldem_d40[0x48] = {1};
const u8 npgmstpnldem_d50[0x48] = {1};
const u8 npgmstpnldem_d60[0x48] = {1};
const u8 npgmstpnldem_d70[0x48] = {1};
const u8 npgmstpnldem_d80[0x48] = {1};
const u8 npgmstpnldem_d90[0x48] = {1};
const u8 npgmstpnldem_dA0[0x48] = {1};
const u8 npgmstpnldem_dB0[0x4E] = {1};
const u8 npgmstpnldem_dB1[0x48] = {1};
const u8 npgmstpnldem_k00[0x6] = {1};
const u8 npgmstpnldem_k20[0x30] = {1};
const u8 npgmstpnldem_k21[0x38] = {1};
const u8 npgmstpnldem_k22[0x30] = {1};
const u8 npgmstpnldem_k23[0x2C] = {1};
const u8 npgmstpnldem_k30[0x7A] = {1};
const u8 npgmstpnldem_k31[0x7C] = {1};
const u8 npgmstpnldem_k32[0x84] = {1};
const u8 npgmstpnldem_k40[0xA4] = {1};
const u8 npgmstpnldem_k41[0xA0] = {1};
const u8 npgmstpnldem_k42[0xC2] = {1};
const u8 npgmstpnldem_k43[0xA8] = {1};
const u8 npgmstpnldem_k44[0x8E] = {1};
const u8 npgmstpnldem_k45[0xD0] = {1};
const u8 npgmstpnldem_k46[0xEC] = {1};
const u8 npgmstpnldem_k50[0xCE] = {1};
const u8 npgmstpnldem_k51[0xD2] = {1};
const u8 npgmstpnldem_k52[0x136] = {1};
const u8 npgmstpnldem_k60[0x128] = {1};
const u8 npgmstpnldem_k61[0x10E] = {1};
const u8 npgmstpnldem_k62[0x10E] = {1};
const u8 npgmstpnldem_k70[0xFE] = {1};
const u8 npgmstpnldem_k71[0x130] = {1};
const u8 npgmstpnldem_k80[0x136] = {1};
const u8 npgmstpnldem_k90[0x19A] = {1};
const u8 npgmstpnldem_kA0[0x1E4] = {1};
const u8 npgmstpnldem_kB00[0x198] = {1};
const u8 npgmstpnldem_kB01[0x1AC] = {1};
const u8 npgmstpnldem_kB02[0x18E] = {1};
const u8 npgmstpnldem_kB03[0x1B0] = {1};
const u8 npgmstpnldem_kB04[0x174] = {1};
const u8 npgmstpnldem_kB05[0x1A2] = {1};
const u8 npgmstpnldem_kB10[0x18C] = {1};
const u8 npgmstpnldem_kB11[0x1FA] = {1};
const u8 npgmstpnldem_kB12[0x206] = {1};
const u8 npgmstpnldem_kB13[0x13A] = {1};
const u8 npgmstpnldem_tbl[0x1A4] = {1};
const u8 Asc_KAZU_v2_gm_logo[0x14] = {1};
const u8 Asc_KAZU_Size12_NML_0[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_1[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_2[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_3[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_4[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_5[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_6[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_7[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_8[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_9[0x4] = {1};
const u8 Asc_KAZU_Size12_NML_Tbl[0x28] = {1};
const u8 Asc_KAZ2_Size12_NML_0[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_1[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_2[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_3[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_4[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_5[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_6[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_7[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_8[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_9[0x4] = {1};
const u8 Asc_KAZ2_Size12_NML_Tbl[0x28] = {1};
const u8 NisOptSel_Buf[0x78] = {1};
const u8 NisSelect_DT[0x208] = {1};
const u8 NisSelectSub_pCslDat[0x74] = {1};
const u8 NisMoveKabeColor_Tbl[0x64] = {1};
const u8 np_pictuescr[0x16C] = {1};
const u8 nswp_04_frame[0x4] = {1};
const u8 nswp_08_frame[0x8] = {1};
const u8 nswp_0c_frame[0xC] = {1};
const u8 nswp_10_frame[0x10] = {1};
const u8 nojpt_usutbl[0x26] = {1};
const u8 nojpt_OJM_1_01[0x3] = {1};
const u8 nojpt_OJM_2_01[0x4] = {1};
const u8 nojpt_OJM_3_01[0x5] = {1};
const u8 nojpt_OJM_4_01[0x6] = {1};
const u8 nojpt_OJM_5_01[0x7] = {1};
const u8 nojpt_OJM_6_01[0x8] = {1};
const u8 nojpt_OJM_6_02[0xE] = {1};
const u8 nojpt_OJM_6_03[0x14] = {1};
const u8 nojpt_OJM_6_04[0x1A] = {1};
const u8 nojpt_OJM_6_05[0x20] = {1};
const u8 nojpt_OJM_6_06[0x26] = {1};
const u8 nojpt_OJM_6_07[0x2C] = {1};
const u8 nojpt_OJM_6_08[0x32] = {1};
const u8 nojpt_OJM_6_09[0x38] = {1};
const u8 nojpt_OJM_6_10[0x3E] = {1};
const u8 nojpt_OJM_6_11[0x44] = {1};
const u8 nojpt_OJM_6_12[0x4A] = {1};
const u8 nojpt_OJM_6_13[0x50] = {1};
const u8 nojpt_OJM_6_14[0x56] = {1};
const u8 nojpt_OJM_6_15[0x5C] = {1};
const u8 nojpt_OJM_6_16[0x62] = {1};
const u8 nojpt_ZET_1_01[0x3] = {1};
const u8 nojpt_ZET_2_01[0x4] = {1};
const u8 nojpt_ZET_3_01[0x5] = {1};
const u8 nojpt_ZET_4_01[0x6] = {1};
const u8 nojpt_ZET_5_01[0x7] = {1};
const u8 nojpt_ZET_6_01[0x8] = {1};
const u8 nojpt_tbl[0x6C] = {1};
const u8 nojpt_emtbl[0x6C] = {1};
const u8 np_Ojm31Yure_stt[0x12] = {1};
const u8 np_Ojm41Yure_stt[0x12] = {1};
const u8 np_Ojm51Yure_stt[0x18] = {1};
const u8 np_Ojm61Yure_stt[0x2A] = {1};
const u8 np_Ojm62Yure_stt[0x42] = {1};
const u8 np_Ojm63Yure_stt[0x4C] = {1};
const u8 np_srwreq_time3_data[0x3C] = {1};
const u8 np_fuwafuwa_data[0x20] = {1};
const u8 np_BigMojiYure_Lose[0x20] = {1};
const u8 np_BigMojiYure_d3[0x39] = {1};
const u8 np_BigMojiYure_down[75] = {1};
const u8 str_201C478[4] = {1};
const u8 np_rdyst_dat_cslmov[0x94] = {1};
const u8 np_rdyst_dat_ready[0x10] = {1};
const u8 np_rdyst_dat_stage[0x14] = {1};
const u8 np_rdyst_dat_timemov[0x44] = {1};
const u8 np_rdyst_dat_timemv2[0x44] = {1};
const u8 nprks_chaku_stt[0xB] = {1};
const u8 np_mk_updt[0x2D] = {1};
const u8 np_mk_put_agb_Douj_1keta[0x14] = {1};
const u8 np_mk_put_agb_Rens_1keta[0x14] = {1};
const u8 np_mk_put_agb_Douj_Lketa[0x14] = {1};
const u8 np_mk_put_agb_Douj_Rketa[0x14] = {1};
const u8 np_mk_put_agb_Rens_Lketa[0x14] = {1};
const u8 np_mk_put_agb_Rens_Rketa[0x14] = {1};
const u8 np_mk_put_agb_number[0x14] = {1};
const u8 np_zenkeshi_demo_data[0x80] = {1};
const u8 PutDataBgDex[0x28] = {1};
const u8 MainSeqTable[0x40] = {1};
const u8 IntrTable[0x34] = {1};
const u8 NisCtcPara_Data[0x8] = {1};
const u8 haba[0x20] = { 1};
const u8 ponagb2m_obj_Acl[0x200] = {1};
const u8 ponagb2m_obj_Acg_LZ[0x2780] = {1};
const u8 ponagb2m_bga_Acl[0x200] = {1};
const u8 ponagb2m_bga_Acg_LZ[0x2C20] = {1};
const u8 ponagb2m_kabe_Asc_LZ[0x170] = {1};
const u8 ponagb2m_frame_Asc_LZ[0x1E4] = {1};
const u8 ponagb2m_dark_Asc_LZ[0xAC] = {1};
const u8 ponagb2m_gameover_Asc_LZ[0x168] = {1};
const u8 ponagb2m_pause_Asc_LZ[0x114] = {1};
const u8 ponagb2m_select_Asc_LZ[0x10C] = {1};
const u8 ponagb2m_sel_help_Asc_LZ[0xF8] = {1};
const u8 ponagb2m_sel_pupu_Asc_LZ[0x134] = {1};
const u8 np1p_game_frame_Asc_OjamaLv[0x10] = {1};
const u8 np1p_game_frame_Asc_SpeedLv[0x10] = {1};
const u8 np1p_game_frame_Asc_SLOW1[0x18] = {1};
const u8 np1p_game_frame_Asc_SLOW2[0x18] = {1};
const u8 np1p_game_frame_Asc_SLOW3[0x18] = {1};
const u8 np1p_game_frame_Asc_EASY[0x18] = {1};
const u8 np1p_game_frame_Asc_NORMAL[0x18] = {1};
const u8 np1p_game_frame_Asc_HARD[0x18] = {1};
const u8 np1p_game_frame_Asc_S_HARD[0x18] = {1};
const u8 np1p_game_frame_Asc_V_HARD[0x18] = {1};
const u8 ponagb2m_kabe_Acl_Nml[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blk[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Red[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Grn[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blu[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Ylw[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Mur[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Miz[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Wht[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blk1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Red1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Grn1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blu1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Ylw1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Mur1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Miz1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Wht1[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blk2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Red2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Grn2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Blu2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Ylw2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Mur2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Miz2[0x20] = {1};
const u8 ponagb2m_kabe_Acl_Wht2[0x20] = {1};
const u8 ponagb2m_GAME_OVER_CLC_Acl[0x8C] = {1};
const u8 ponagb2m_title_obj_Acl[0x20] = {1};
const u8 ponagb2m_title_obj_Acg_LZ[0x184] = {1};
const u8 ponagb2m_title_Acl[0x200] = {1};
const u8 ponagb2m_title_Acg_LZ[0x50E8] = {1};
const u8 ponagb2m_title_Asc_LZ[0x564] = {1};*/

const u8 mplay_table[8];
const u8 song_table[8];


