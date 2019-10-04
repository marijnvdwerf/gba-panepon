#include <gba/gba.h>

const u16 np_pictuescr[182] = { // @ 544
    0xFFFF, 0x1C00, 0x2C04, 0x3C08, 0x4C0C, 0x5C10, 0x6C14, 0x7C18, 0x7C1C, 0x8CBC, 0x7CB8, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x8CBC, 0x7CB8, 0x7CB8, 0x7CB8, 0x7CB8, 0x7CB8, 0x7CB8, 0x1C60, 0x2C64, 0x3C68, 0x4C6C, 0x5C70, 0x6C74, 0x7C78, 0x7C7C, 0x1C40, 0x2C44, 0x3C48, 0x4C4C, 0x5C50, 0x6C54, 0x7C58, 0x7C5C, 0x1C20, 0x2C24, 0x3C28, 0x4C2C, 0x5C30, 0x6C34, 0x7C38, 0x7C3C, 0x1CA0, 0x2CA4, 0x3CA8, 0x4CAC, 0x5CB0, 0x6CB4, 0x7CB8, 0x7CBC, 0x0C80, 0x0C84, 0x0C88, 0x0C8C, 0x0C90, 0x0C94, 0x0C98, 0x0C9C, 0x0CE0, 0x0CC0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CE0, 0x0CC0, 0x0CC0, 0x0CC0, 0x0CC0, 0x0CC0, 0x0CC0, 0x1C80, 0x2C84, 0x3C88, 0x4C8C, 0x5C90, 0x6C94, 0x7C98, 0x7C9C, 0x8CE0, 0x7CC0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x8CE0, 0x7CC0, 0x7CC0, 0x7CC0, 0x7CC0, 0x7CC0, 0x7CC0, 0x7CC0, 0x7CC4, 0x7CCC, 0x7CC8, 0x8CEC, 0x8CE4, 0x8CF8, 0x8CE8, 0x8CF8, 0x8CE8, 0x8CE4, 0x8CE8, 0x8D00, 0x8D10, 0x8D04, 0x8D14, 0x8CFC, 0x8D18, 0x8D08, 0x8D1C, 0x8D0C, 0x8CFC, 0x8D30, 0x8D34, 0x8CFC, 0x8D10, 0x8D1C, 0x8D38, 0x8D3C, 0x8D40, 0x8D44, 0x8D20, 0x8D24, 0x8D28, 0x8D2C, 0x8CEC, 0x8CF0, 0x8CF4
};
const u8 nswp_04_frame[4] = { // @ 3573
    0x04, 0x04, 0x04, 0x00
};
const u8 nswp_08_frame[8] = { // @ 3577
    0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02, 0x00
};
const u8 nswp_0c_frame[12] = { // @ 3581
    0x01, 0x02, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x01, 0x01, 0x02, 0x00
};
const u8 nswp_10_frame[16] = { // @ 3585
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00
};
const u8 nojpt_usutbl[38] = { // @ 4757
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
static const u8 nojpt_OJM_1_01[3] = { // @ 4897
    0x01, 0x94, 0x00
};
static const u8 nojpt_OJM_2_01[4] = { // @ 4904
    0x02, 0x98, 0x9A, 0x00
};
static const u8 nojpt_OJM_3_01[5] = { // @ 4912
    0x03, 0x96, 0xB3, 0x95, 0x00
};
static const u8 nojpt_OJM_4_01[6] = { // @ 4924
    0x04, 0x98, 0xB5, 0xB4, 0x95, 0x00
};
static const u8 nojpt_OJM_5_01[7] = { // @ 4936
    0x05, 0x98, 0x99, 0xB3, 0x9B, 0x9A, 0x00
};
static const u8 nojpt_OJM_6_01[8] = { // @ 4948
    0x06, 0x96, 0x97, 0xB5, 0xB4, 0x97, 0x95, 0x00
};
static const u8 nojpt_OJM_6_02[14] = { // @ 4962
    0x0C, 0xA4, 0xA3, 0xB2, 0xB1, 0xA3, 0xA2, 0x9E, 0x9D, 0xB0, 0xAF, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_03[20] = { // @ 4981
    0x12, 0xA4, 0xA3, 0xAA, 0xAA, 0xA3, 0xA2, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0x9E, 0x9D, 0xA9, 0xA9, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_04[26] = { // @ 5007
    0x18, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_05[32] = { // @ 5040
    0x1E, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_06[38] = { // @ 5080
    0x24, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_07[44] = { // @ 5127
    0x2A, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_08[50] = { // @ 5181
    0x30, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_09[56] = { // @ 5242
    0x36, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_10[62] = { // @ 5310
    0x3C, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_11[68] = { // @ 5385
    0x42, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_12[74] = { // @ 5467
    0x48, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_13[80] = { // @ 5556
    0x4E, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_14[86] = { // @ 5652
    0x54, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_15[92] = { // @ 5755
    0x5A, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA8, 0xA8, 0xA0, 0x9F, 0xA1, 0xA0, 0xA7, 0xA6, 0xA0, 0x9F, 0xA1, 0xA0, 0xA5, 0xA5, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_OJM_6_16[98] = { // @ 5865
    0x60, 0xA4, 0xA3, 0xA3, 0xA3, 0xA3, 0xA2, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xAE, 0xAD, 0xA0, 0x9F, 0xA1, 0xA0, 0xAC, 0xAB, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0xA1, 0xA0, 0xA0, 0xA0, 0xA0, 0x9F, 0x9E, 0x9D, 0x9D, 0x9D, 0x9D, 0x9C, 0x00
};
static const u8 nojpt_ZET_1_01[3] = { // @ 5983
    0x01, 0x90, 0x00
};
static const u8 nojpt_ZET_2_01[4] = { // @ 5990
    0x02, 0x92, 0x91, 0x00
};
static const u8 nojpt_ZET_3_01[5] = { // @ 5998
    0x03, 0x92, 0x93, 0x91, 0x00
};
static const u8 nojpt_ZET_4_01[6] = { // @ 6007
    0x04, 0x92, 0x93, 0x93, 0x91, 0x00
};
static const u8 nojpt_ZET_5_01[7] = { // @ 6017
    0x05, 0x92, 0x93, 0x93, 0x93, 0x91, 0x00
};
static const u8 nojpt_ZET_6_01[8] = { // @ 6028
    0x06, 0x92, 0x93, 0x93, 0x93, 0x93, 0x91, 0x00
};
const u8* const nojpt_tbl[27] = {
    // @ 6042
    nojpt_OJM_1_01,
    nojpt_OJM_2_01,
    nojpt_OJM_3_01,
    nojpt_OJM_4_01,
    nojpt_OJM_5_01,
    nojpt_OJM_6_01,
    nojpt_OJM_6_02,
    nojpt_OJM_6_03,
    nojpt_OJM_6_04,
    nojpt_OJM_6_05,
    nojpt_OJM_6_06,
    nojpt_OJM_6_07,
    nojpt_OJM_6_08,
    nojpt_OJM_6_09,
    nojpt_OJM_6_10,
    nojpt_OJM_6_11,
    nojpt_OJM_6_12,
    nojpt_OJM_6_13,
    nojpt_OJM_6_14,
    nojpt_OJM_6_15,
    nojpt_OJM_6_16,
    nojpt_ZET_1_01,
    nojpt_ZET_2_01,
    nojpt_ZET_3_01,
    nojpt_ZET_4_01,
    nojpt_ZET_5_01,
    nojpt_ZET_6_01,
};

typedef struct {
    u8 yoko; // @ 6145
    s16 kuuhaku; // @ 6146
} nojpt_emST; // @ 6147

const nojpt_emST nojpt_emtbl[27] = {
    // @ 6149
    { 1, -6 },
    { 2, -6 },
    { 3, -6 },
    { 4, -6 },
    { 5, -6 },
    { 6, -6 },
    { 6, -12 },
    { 6, -18 },
    { 6, -24 },
    { 6, -30 },
    { 6, -36 },
    { 6, -42 },
    { 6, -48 },
    { 6, -54 },
    { 6, -60 },
    { 6, -66 },
    { 6, -72 },
    { 6, -78 },
    { 6, -84 },
    { 6, -90 },
    { 6, -96 },
    { 1, -6 },
    { 2, -6 },
    { 3, -6 },
    { 4, -6 },
    { 5, -6 },
    { 6, -6 },
};

const u8 np_Ojm31Yure_stt[18] = { // @ 9344
    0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01
};
const u8 np_Ojm41Yure_stt[18] = { // @ 9392
    0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x02, 0x02, 0x01, 0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x02, 0x01
};
const u8 np_Ojm51Yure_stt[24] = { // @ 9439
    0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x03, 0x03, 0x02, 0x00, 0x00, 0x02, 0x03, 0x03, 0x03, 0x03, 0x02
};
const u8 np_Ojm61Yure_stt[42] = { // @ 9498
    0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x02, 0x02, 0x00, 0x00, 0x02, 0x03, 0x03, 0x02, 0x00, 0x00, 0x02, 0x04, 0x05, 0x05, 0x05, 0x04, 0x02, 0x00, 0x00, 0x04, 0x06, 0x07, 0x07, 0x07, 0x07, 0x06, 0x04
};
const u8 np_Ojm62Yure_stt[66] = { // @ 9593
    0x00, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x01, 0x02, 0x02, 0x02, 0x01, 0x00, 0x00, 0x00, 0x02, 0x03, 0x03, 0x03, 0x02, 0x00, 0x00, 0x00, 0x04, 0x06, 0x07, 0x07, 0x07, 0x07, 0x06, 0x04, 0x00, 0x00, 0x00, 0x05, 0x08, 0x0A, 0x0B, 0x0B, 0x0B, 0x0B, 0x0B, 0x0A, 0x08, 0x05
};
const u8 np_Ojm63Yure_stt[76] = { // @ 9736
    0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x01, 0x01, 0x01, 0x00, 0x00, 0x02, 0x02, 0x02, 0x00, 0x00, 0x02, 0x03, 0x03, 0x03, 0x02, 0x00, 0x00, 0x04, 0x06, 0x07, 0x07, 0x07, 0x07, 0x06, 0x04, 0x00, 0x00, 0x00, 0x05, 0x08, 0x0A, 0x0B, 0x0B, 0x0B, 0x0B, 0x0A, 0x08, 0x05, 0x00, 0x00, 0x00, 0x07, 0x0B, 0x0D, 0x0E, 0x0E, 0x0E, 0x0E, 0x0E, 0x0D, 0x0B, 0x07
};
const u8 np_srwreq_time3_data[60] = { // @ 15087
    0x00, 0x01, 0x02, 0x04, 0x06, 0x08, 0x0B, 0x0D, 0x0E, 0x10, 0x11, 0x13, 0x16, 0x17, 0x19, 0x1A, 0x1C, 0x1D, 0x1F, 0x20, 0x22, 0x23, 0x25, 0x26, 0x29, 0x2B, 0x2C, 0x2E, 0x2F, 0x31, 0x34, 0x35, 0x37, 0x38, 0x3A, 0x3B, 0x3D, 0x3E, 0x40, 0x41, 0x43, 0x44, 0x47, 0x49, 0x4A, 0x4C, 0x4D, 0x4F, 0x50, 0x52, 0x53, 0x55, 0x56, 0x58, 0x5B, 0x5C, 0x5E, 0x5F, 0x62, 0x63
};
const s8 np_fuwafuwa_data[32] = { // @ 18663
    0, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0, -1, -1, -1, -2, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1
};
const s8 np_BigMojiYure_Lose[32] = { // @ 22815
    1, 1, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, -2, -2, 0, 0, 0, -127, -30
};
const s8 np_BigMojiYure_d3[57] = { // @ 23095
    6, 6, 0, 0, 5, 5, 0, 0, 4, 4, 0, 0, 3, 3, 0, 0, 3, 3, 0, 0, 2, 2, 0, 0, 2, 2, 0, 0, 2, 2, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, -128
};
const s8 np_BigMojiYure_down[74] = { // @ 23280
    79, 78, 77, 76, 75, 74, 72, 70, 68, 66, 63, 60, 56, 52, 47, 42, 36, 30, 23, 16, 8, 0, -126, -5, 0, 7, 12, 15, 17, 18, 19, 19, 19, 19, 19, 19, 18, 17, 15, 12, 7, 0, -126, -4, 0, 3, 5, 6, 7, 7, 7, 7, 7, 7, 6, 5, 3, 0, -126, -3, -3, 3, 3, -2, -2, 2, 2, -1, -1, 1, 1, 0, 0, -128
};

#if VERSION == 0
const u8 str_201C478[] = "%6d";
#else
const u16 np_mk_put_agb_number[] = { // @ 35136
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9
};
#endif

typedef struct {
    u8 x_; // @ 27267
    u8 y_; // @ 27268
} np_rdyst_dat_cslmST; // @ 27269

const np_rdyst_dat_cslmST np_rdyst_dat_cslmov[37] = {
    // @ 27271
    { 0x94, 0xF0 },
    { 0x94, 0xF1 },
    { 0x94, 0xF3 },
    { 0x94, 0xF6 },
    { 0x94, 0xFA },
    { 0x94, 0xFF },
    { 0x94, 5 },
    { 0x94, 0xC },
    { 0x94, 0x13 },
    { 0x94, 0x1B },
    { 0x94, 0x23 },
    { 0x94, 0x2C },
    { 0x94, 0x35 },
    { 0x94, 0x3E },
    { 0x94, 0x48 },
    { 0x94, 0x52 },
    { 0x94, 0x52 },
    { 0x94, 0x52 },
    { 0x94, 0x52 },
    { 0x94, 0x52 },
    { 0x93, 0x52 },
    { 0x92, 0x52 },
    { 0x90, 0x52 },
    { 0x8E, 0x52 },
    { 0x8B, 0x52 },
    { 0x87, 0x52 },
    { 0x83, 0x52 },
    { 0x7E, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    { 0x78, 0x52 },
    0,
};

const u8 np_rdyst_dat_ready[16] = { // @ 27633
    0xF4, 0xF5, 0xF6, 0xF7, 0xF9, 0xFB, 0xFE, 0x01, 0x05, 0x09, 0x0E, 0x13, 0x18, 0x1E, 0x24, 0x2B
};
const u8 np_rdyst_dat_stage[17] = { // @ 27790
    0xF4, 0xF5, 0xF6, 0xF7, 0xF9, 0xFB, 0xFD, 0x00, 0x03, 0x06, 0x0A, 0x0E, 0x13, 0x18, 0x1E, 0x24, 0xAA
};

typedef struct {
    u8 x_; // @ 28034
    u8 y_; // @ 28035
} np_rdyst_dat_timemST; // @ 28036

const np_rdyst_dat_timemST np_rdyst_dat_timemov[17] = {
    // @ 28039
    { 0x28, 0x38 },
    { 0x37, 0x47 },
    { 0x46, 0x56 },
    { 0x52, 0x62 },
    { 0x5C, 0x6C },
    { 0x65, 0x75 },
    { 0x6C, 0x7C },
    { 0x6E, 0x7E },
    { 0x72, 0x82 },
    { 0x77, 0x87 },
    { 0x78, 0x88 },
    { 0x7A, 0x8A },
    { 0x7C, 0x8C },
    { 0x7E, 0x8E },
    { 0x7F, 0x8F },
    { 0x80, 0x90 },
    0,
};
const np_rdyst_dat_timemST np_rdyst_dat_timemv2[17] = { // @ 28118
    { 0x28, 0x38 },
    { 0x37, 0x49 },
    { 0x46, 0x59 },
    { 0x52, 0x66 },
    { 0x5C, 0x71 },
    { 0x65, 0x7B },
    { 0x6C, 0x82 },
    { 0x6E, 0x84 },
    { 0x72, 0x89 },
    { 0x77, 0x8E },
    { 0x78, 0x90 },
    { 0x7A, 0x92 },
    { 0x7C, 0x94 },
    { 0x7E, 0x96 },
    { 0x7F, 0x97 },
    { 0x80, 0x98 },
    0
};
const u8 nprks_chaku_stt[11] = { // @ 31328
    0x00, 0x00, 0x2D, 0x2D, 0x2D, 0x25, 0x25, 0x25, 0x35, 0x35, 0x35
};
const u8 np_mk_updt[45] = { // @ 33874
    0xFE, 0xFE, 0xFE, 0xFE, 0xFF, 0xFE, 0xFF, 0xFE, 0xFF, 0xFF, 0xFE, 0xFF, 0xFE, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFE, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
};
const u16 np_mk_put_agb_Douj_1keta[10] = { // @ 35056
    0xA180, 0xA180, 0xA180, 0xA180, 0xA180, 0xA184, 0xA188, 0xA18C, 0xA190, 0xA194
};
const u16 np_mk_put_agb_Rens_1keta[10] = { // @ 35069
    0xB198, 0xB198, 0xB198, 0xB19C, 0xB1A0, 0xB1A4, 0xB1A8, 0xB1AC, 0xB1B0, 0xB1B4
};
const u16 np_mk_put_agb_Douj_Lketa[10] = { // @ 35082
    0xA1B8, 0xA1B8, 0xA1BA, 0xA1BC, 0xA1BE, 0xA1C0, 0xA1C2, 0xA1C4, 0xA1C6, 0xA1C8
};
const u16 np_mk_put_agb_Douj_Rketa[10] = { // @ 35095
    0xA1CA, 0xA1CC, 0xA1CE, 0xA1D0, 0xA1D2, 0xA1D4, 0xA1D6, 0xA1D8, 0xA1DA, 0xA1DC
};
const u16 np_mk_put_agb_Rens_Lketa[10] = { // @ 35108
    0xB1B8, 0xB1B8, 0xB1BA, 0xB1BC, 0xB1BE, 0xB1C0, 0xB1C2, 0xB1C4, 0xB1C6, 0xB1C8
};
const u16 np_mk_put_agb_Rens_Rketa[10] = { // @ 35121
    0xB1CA, 0xB1CC, 0xB1CE, 0xB1D0, 0xB1D2, 0xB1D4, 0xB1D6, 0xB1D8, 0xB1DA, 0xB1DC
};
#if VERSION == 0
const u16 np_mk_put_agb_number[10] = { // @ 35136
    0x0000, 0x0001, 0x0002, 0x0003, 0x0004, 0x0005, 0x0006, 0x0007, 0x0008, 0x0009
};
#endif
//u8 np_ojm_search_head_Areg; // @ 38894
//*struct np_ojm_search_head_BCreg; // @ 38895
//s32 np_fadr_xy_X; // @ 40402
//s32 np_fadr_xy_Y; // @ 40403
const u8 np_zenkeshi_demo_data[127] = { // @ 43684
    0x00, 0xFE, 0x01, 0x00, 0x08, 0x01, 0x03, 0x07, 0x02, 0x01, 0x03, 0x02, 0x04, 0x04, 0x00, 0xFE, 0x03, 0x05, 0x03, 0x03, 0x03, 0x09, 0x01, 0x02, 0x06, 0x03, 0x01, 0x01, 0x00, 0xFE, 0x02, 0x00, 0x00, 0x02, 0x04, 0x02, 0x03, 0x02, 0x04, 0x01, 0x01, 0x0B, 0x00, 0xFE, 0x01, 0x04, 0x0A, 0x03, 0x04, 0x00, 0x01, 0x04, 0x06, 0x03, 0x02, 0x00, 0x00, 0xFE, 0x02, 0x03, 0x0B, 0x03, 0x05, 0x07, 0x03, 0x00, 0x04, 0x01, 0x02, 0x02, 0x00, 0xFE, 0x03, 0x01, 0x09, 0x01, 0x00, 0x0A, 0x01, 0x01, 0x05, 0x03, 0x04, 0x08, 0x00, 0xFE, 0x02, 0x03, 0x01, 0x03, 0x05, 0x0B, 0x01, 0x00, 0x02, 0x01, 0x05, 0x01, 0x00, 0xFE, 0x01, 0x01, 0x07, 0x03, 0x03, 0x05, 0x02, 0x03, 0x03, 0x02, 0x00, 0x06, 0x00, 0xFE, 0x01, 0x05, 0x05, 0x01, 0x02, 0x08, 0x03, 0x05, 0x09, 0x03, 0x02, 0x0A, 0xFF
};
