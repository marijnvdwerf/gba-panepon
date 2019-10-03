#include "nisdata0.h"
#include "nisobj.h"

extern const u8 np_Msg_OptionSelect_00[];
extern const u8 np_Msg_OptionSelect_01[];
extern const u8 np_Msg_OptionSelect_02[];
extern const u8 np_Msg_OptionSelect_03[];
extern const u8 np_Msg_OptionSelect_04[];
extern const u8 np_Msg_OptionSelect_05[];
extern const u8 np_Msg_OptionSelect_06[];
extern const u8 np_Msg_OptionSelect_07[];
extern const u8 np_Msg_OptionSelect_08[];
extern const u8 np_Msg_OptionSelect_09[];
extern const u8 np_Msg_OptionSelect_0a[];
extern const u8 np_Msg_OptionSelect_0b[];
extern const u8 np_Msg_OptionSelect_0c[];
extern const u8 np_Msg_MainSelect_00[];
extern const u8 np_Msg_MainSelect_01[];
extern const u8 np_Msg_MainSelect_02[];
extern const u8 np_Msg_MainSelect_03[];
extern const u8 np_Msg_MainSelect_04[];
extern const u8 np_Msg_Help_00[];
extern const u8 np_Msg_Help_01[];
extern const u8 np_Msg_Help_02[];
extern const u8 np_Msg_Help_03[];
extern const u8 np_Msg_Help_04[];
extern const u8 np_Msg_Help_10[];
extern const u8 np_Msg_Help_11[];
extern const u8 np_Msg_Help_12[];
extern const u8 np_Msg_Help_20[];
extern const u8 np_Msg_Help_21[];
extern const u8 np_Msg_Help_22[];
extern const u8 np_Msg_Help_30[];
extern const u8 np_Msg_Help_31[];
extern const u8 np_Msg_Help_32[];
extern const u8 np_Msg_Help_33[];
extern const u8 np_Msg_Help_34[];
extern const u8 np_Msg_Help_35[];
extern const u8 np_Msg_Help_36[];
extern const u8 np_Msg_Help_37[];
extern const u8 np_Msg_Help_38[];
extern const u8 np_Msg_Help_39[];
extern const u8 np_Msg_Help_3a[];
extern const u8 np_Msg_Help_3b[];
extern const u8 np_Msg_Help_3c[];
extern const u8 np_Msg_Help_3d[];
extern const u8 np_Msg_Help_40[];
void NisOptSel_np_sw_markten(u16* pWt);
void NisOptSel_np_sw_countstop(u16* pWt);
void NisOptSel_np_fld_bscfg(u16* pWt);
void NisOptSel_np_sw_PanelNumber(u16* pWt);
void NisOptSel_np_sw_no_roll_stop(u16* pWt);
void NisOptSel_np_sw_ball_command(u16* pWt);
void NisOptSel_np_sw_Put_GOCnt(u16* pWt);
void NisOptSel_np_sw_OjamaKaitou(u16* pWt);
void NisOptSel_np_sw_AgbKey_mode(u16* pWt);
void NisOptSel_np_sw_panelanime(u16* pWt);
void NisOptSel_np_sw_kage_color(u16* pWt);
void NisOptSel_np_sw_field_color(u16* pWt);
void NisOptSel_np_sw_option_def(u16* pWt);
void NisOptSel_np_sw_zenkeshi(u16* pWt);

const u16 Asc_KAZU_v2_gm_logo[10] = { // @ 122
    0x2001, 0x2002, 0x2003, 0x2004, 0x2005, 0x2006, 0x2007, 0x2008, 0x2009, 0x200A
};
static const short unsigned int Asc_KAZU_Size12_NML_0[2] = { // @ 136
    0x52A0, 0x52A1
};
static const short unsigned int Asc_KAZU_Size12_NML_1[2] = { // @ 140
    0x52A2, 0x52A3
};
static const short unsigned int Asc_KAZU_Size12_NML_2[2] = { // @ 144
    0x52A4, 0x52A5
};
static const short unsigned int Asc_KAZU_Size12_NML_3[2] = { // @ 148
    0x52A6, 0x52A7
};
static const short unsigned int Asc_KAZU_Size12_NML_4[2] = { // @ 152
    0x52A8, 0x52A9
};
static const short unsigned int Asc_KAZU_Size12_NML_5[2] = { // @ 156
    0x52AA, 0x52AB
};
static const short unsigned int Asc_KAZU_Size12_NML_6[2] = { // @ 160
    0x52AC, 0x52AD
};
static const short unsigned int Asc_KAZU_Size12_NML_7[2] = { // @ 164
    0x52AE, 0x52AF
};
static const short unsigned int Asc_KAZU_Size12_NML_8[2] = { // @ 168
    0x52B0, 0x52B1
};
static const short unsigned int Asc_KAZU_Size12_NML_9[2] = { // @ 172
    0x52B2, 0x52B3
};
const short unsigned int* const Asc_KAZU_Size12_NML_Tbl[10] = {
    // @ 176
    Asc_KAZU_Size12_NML_0,
    Asc_KAZU_Size12_NML_1,
    Asc_KAZU_Size12_NML_2,
    Asc_KAZU_Size12_NML_3,
    Asc_KAZU_Size12_NML_4,
    Asc_KAZU_Size12_NML_5,
    Asc_KAZU_Size12_NML_6,
    Asc_KAZU_Size12_NML_7,
    Asc_KAZU_Size12_NML_8,
    Asc_KAZU_Size12_NML_9,
};
static const short unsigned int Asc_KAZ2_Size12_NML_0[2] = { // @ 190
    0x62A0, 0x62A1
};
static const short unsigned int Asc_KAZ2_Size12_NML_1[2] = { // @ 194
    0x62A2, 0x62A3
};
static const short unsigned int Asc_KAZ2_Size12_NML_2[2] = { // @ 198
    0x62A4, 0x62A5
};
static const short unsigned int Asc_KAZ2_Size12_NML_3[2] = { // @ 202
    0x62A6, 0x62A7
};
static const short unsigned int Asc_KAZ2_Size12_NML_4[2] = { // @ 206
    0x62A8, 0x62A9
};
static const short unsigned int Asc_KAZ2_Size12_NML_5[2] = { // @ 210
    0x62AA, 0x62AB
};
static const short unsigned int Asc_KAZ2_Size12_NML_6[2] = { // @ 214
    0x62AC, 0x62AD
};
static const short unsigned int Asc_KAZ2_Size12_NML_7[2] = { // @ 218
    0x62AE, 0x62AF
};
static const short unsigned int Asc_KAZ2_Size12_NML_8[2] = { // @ 222
    0x62B0, 0x62B1
};
static const short unsigned int Asc_KAZ2_Size12_NML_9[2] = { // @ 226
    0x62B2, 0x62B3
};
const short unsigned int* const Asc_KAZ2_Size12_NML_Tbl[10] = {
    // @ 230
    Asc_KAZ2_Size12_NML_0,
    Asc_KAZ2_Size12_NML_1,
    Asc_KAZ2_Size12_NML_2,
    Asc_KAZ2_Size12_NML_3,
    Asc_KAZ2_Size12_NML_4,
    Asc_KAZ2_Size12_NML_5,
    Asc_KAZ2_Size12_NML_6,
    Asc_KAZ2_Size12_NML_7,
    Asc_KAZ2_Size12_NML_8,
    Asc_KAZ2_Size12_NML_9,
};

typedef struct {
    const u8* m_pMsg; // @ 1716
    void (*m_pWSub)(u16*); // @ 1717
} NisOptSel_ST; // @ 1718

const NisOptSel_ST NisOptSel_Buf[15] = {
    // @ 1720
    { np_Msg_OptionSelect_00, NisOptSel_np_sw_markten + 1 },
    { np_Msg_OptionSelect_01, NisOptSel_np_sw_countstop + 1 },
    { np_Msg_OptionSelect_02, NisOptSel_np_fld_bscfg + 1 },
    { np_Msg_OptionSelect_03, NisOptSel_np_sw_PanelNumber + 1 },
    { np_Msg_OptionSelect_04, NisOptSel_np_sw_no_roll_stop + 1 },
    { np_Msg_OptionSelect_05, NisOptSel_np_sw_ball_command + 1 },
    { np_Msg_OptionSelect_06, NisOptSel_np_sw_Put_GOCnt + 1 },
    { np_Msg_OptionSelect_07, NisOptSel_np_sw_OjamaKaitou + 1 },
    { np_Msg_OptionSelect_08, NisOptSel_np_sw_AgbKey_mode + 1 },
    { np_Msg_OptionSelect_09, NisOptSel_np_sw_panelanime + 1 },
    { np_Msg_OptionSelect_0a, NisOptSel_np_sw_kage_color + 1 },
    { np_Msg_OptionSelect_0b, NisOptSel_np_sw_field_color + 1 },
    { np_Msg_OptionSelect_0c, NisOptSel_np_sw_zenkeshi + 1 },
    { 0, NisOptSel_np_sw_option_def + 1 },
    { 0, 0 },
};

struct unk {
    u8 nPage; // @ 1800
    u8 nCsl; // @ 1801

    u8 nDown; // @ 1803
    u8 nUp; // @ 1804

    u8 nDwTrg; // @ 1806
    u8 nUpTrg; // @ 1807
    u8 nAbutt; // @ 1809
    u8 nBbutt; // @ 1810

    u8 nPutx; // @ 1812
    u8 nPuty; // @ 1813

    const u8* pMain; // @ 1815
    const u8* pHelp; // @ 1816
}; // @ 1817;

const struct unk NisSelect_DT[26] = { // @ 1819
    { 0, 0, 1, 4, 0, 1, 1, 255, 2, 5, np_Msg_MainSelect_00, np_Msg_Help_00 },
    { 0, 1, 2, 0, 0, 0, 2, 255, 2, 7, np_Msg_MainSelect_00, np_Msg_Help_01 },
    { 0, 2, 3, 1, 0, 0, 4, 255, 2, 9, np_Msg_MainSelect_00, np_Msg_Help_04 },
    { 0, 3, 4, 2, 0, 0, 3, 255, 2, 11, np_Msg_MainSelect_00, np_Msg_Help_02 },
    { 0, 4, 0, 3, 1, 0, 255, 255, 2, 13, np_Msg_MainSelect_00, np_Msg_Help_03 },
    { 1, 0, 1, 2, 0, 1, 255, 0, 2, 7, np_Msg_MainSelect_01, np_Msg_Help_10 },
    { 1, 1, 2, 0, 0, 0, 255, 0, 2, 9, np_Msg_MainSelect_01, np_Msg_Help_11 },
    { 1, 2, 0, 1, 1, 0, 255, 0, 2, 12, np_Msg_MainSelect_01, np_Msg_Help_12 },
    { 2, 0, 1, 2, 0, 1, 255, 0, 2, 7, np_Msg_MainSelect_02, np_Msg_Help_20 },
    { 2, 1, 2, 0, 0, 0, 255, 0, 2, 9, np_Msg_MainSelect_02, np_Msg_Help_21 },
    { 2, 2, 0, 1, 1, 0, 255, 0, 2, 12, np_Msg_MainSelect_02, np_Msg_Help_22 },
    { 3, 0, 1, 0, 0, 0, 255, 0, 2, 7, np_Msg_MainSelect_03, np_Msg_Help_30 },
    { 3, 1, 2, 0, 0, 0, 255, 0, 2, 9, np_Msg_MainSelect_03, np_Msg_Help_31 },
    { 3, 2, 3, 1, 0, 0, 255, 0, 2, 11, np_Msg_MainSelect_03, np_Msg_Help_32 },
    { 3, 3, 4, 2, 0, 0, 255, 0, 2, 13, np_Msg_MainSelect_03, np_Msg_Help_33 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_34 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_35 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_36 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_37 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_38 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_39 },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_3a },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_3b },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_3c },
    { 3, 4, 4, 3, 0, 0, 255, 0, 2, 15, np_Msg_MainSelect_03, np_Msg_Help_3d },
    { 4, 0, 0, 0, 0, 0, 255, 0, 2, 7, np_Msg_MainSelect_04, np_Msg_Help_40 }
};
const u16* const NisSelectSub_pCslDat[29] = {
    // @ 1872
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
    Aob_Panel_Select_0a,
    Aob_Panel_Select_0a,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0b,
    Aob_Panel_Select_0a,
    Aob_Panel_Select_0a,
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_08,
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
    Aob_Panel_Select_09,
};
const u16* const NisMoveKabeColor_Tbl[25] = {
    // @ 2552
    ponagb2m_kabe_Acl_Nml,
    ponagb2m_kabe_Acl_Red2,
    ponagb2m_kabe_Acl_Ylw2,
    ponagb2m_kabe_Acl_Grn2,
    ponagb2m_kabe_Acl_Miz2,
    ponagb2m_kabe_Acl_Blu2,
    ponagb2m_kabe_Acl_Mur2,
    ponagb2m_kabe_Acl_Blk2,
    ponagb2m_kabe_Acl_Wht2,
    ponagb2m_kabe_Acl_Red,
    ponagb2m_kabe_Acl_Ylw,
    ponagb2m_kabe_Acl_Grn,
    ponagb2m_kabe_Acl_Miz,
    ponagb2m_kabe_Acl_Blu,
    ponagb2m_kabe_Acl_Mur,
    ponagb2m_kabe_Acl_Blk,
    ponagb2m_kabe_Acl_Wht,
    ponagb2m_kabe_Acl_Red1,
    ponagb2m_kabe_Acl_Ylw1,
    ponagb2m_kabe_Acl_Grn1,
    ponagb2m_kabe_Acl_Miz1,
    ponagb2m_kabe_Acl_Blu1,
    ponagb2m_kabe_Acl_Mur1,
    ponagb2m_kabe_Acl_Blk1,
    ponagb2m_kabe_Acl_Wht1,
};
