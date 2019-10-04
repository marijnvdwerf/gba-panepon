#include <gba/gba.h>

void NisATitleInit();
void NisATitleMain0();
void NisATitleMain1();
void NisATitleLast();
void NisTitleInit();
void NisTitleMain();
void NisSelectInit();
void NisSelectMain();
void nis_game_init();
void nis_game_main();
void NisTestSelectInit();
void NisTestSelectMain();
void NisMsgSleepInit();
void NisMsgSleepMain();
void NisOptField_Init();
void NisOptField_Main();
void VBlankIntr();
void IntrDummy();
void GBAJoyIntr();
#if VERSION == 2
void sub_200C14C();
void sub_200C03C();
#endif

#include "nis_gdat.c"

#include "nis_sel.c"

#include "nis_pro.c"

//volatile unsigned int  joy_timeout_counter; // @ 44
const s32 PutDataBgDex[10] = { // @ 181
    1,
    10,
    100,
    1000,
    10000,
    100000,
    1000000,
    10000000,
    100000000,
    1000000000
};

//int  MainSeqIdx; // @ 558
typedef void (*MainSeqFunc)(void); // @ 563
const MainSeqFunc MainSeqTable[] = {
// @ 565
#if VERSION == 2
    sub_200C03C,
    sub_200C14C,
#endif
    NisATitleInit,
    NisATitleMain0,
    NisATitleMain1,
    NisATitleLast,
    NisTitleInit,
    NisTitleMain,
    NisSelectInit,
    NisSelectMain,
    nis_game_init,
    nis_game_main,
    NisTestSelectInit,
    NisTestSelectMain,
    NisMsgSleepInit,
    NisMsgSleepMain,
    NisOptField_Init,
    NisOptField_Main,
};
//int  g_bEnableJoyReboot; // @ 656
typedef void (*IntrFuncp)(void); // @ 747
static const IntrFuncp IntrTable[13] = {
    // @ 749
    VBlankIntr,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    GBAJoyIntr,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
    IntrDummy,
};
