#include "asm/macros.inc"

.global Aob_Panel_Ready_00
    .align 2, 0
Aob_Panel_Ready_00:
    .2byte 6
    .2byte 0x4000, 0x4000, 0xF220
    .2byte 0x4000, 0x20, 0xF224
    .2byte 0, 0x30, 0xF226
    .2byte 0x4008, 0x4000, 0xF227
    .2byte 0x4008, 0x20, 0xF22B
    .2byte 8, 0x30, 0xF22D

    .align 2
.global Aob_Panel_Ready_01
Aob_Panel_Ready_01:
    .2byte 2
                  .2byte 0x4000, 0, 0xF234
                  .2byte 0x4008, 0, 0xF236




    .align 2, 0
    .global Aob_Panel_Ready_02
Aob_Panel_Ready_02:
    baserom 0x848, 0x10

    .global Aob_Panel_Ready_03
Aob_Panel_Ready_03:
    baserom 0x858, 0x10

    .global Aob_Panel_TryAgain_00
Aob_Panel_TryAgain_00:
    baserom 0x868, 0x1C

    .global Aob_Panel_TryAgain_01
Aob_Panel_TryAgain_01:
    baserom 0x884, 0x1C

    .global Aob_Panel_TryAgain_02
Aob_Panel_TryAgain_02:
    baserom 0x8A0, 0x1C

    .global Aob_Panel_TryAgain_03
Aob_Panel_TryAgain_03:
    baserom 0x8BC, 0x1C

    .global Aob_Panel_TryAgain_04
Aob_Panel_TryAgain_04:
    baserom 0x8D8, 0x10

    .global Aob_Panel_TryAgain_05
Aob_Panel_TryAgain_05:
    baserom 0x8E8, 0x10

    .global Aob_Panel_TryAgain_06
Aob_Panel_TryAgain_06:
    baserom 0x8F8, 0x10

    .global Aob_Panel_TryAgain_07
Aob_Panel_TryAgain_07:
    baserom 0x908, 0x10

    .global Aob_Panel_Chain_00
Aob_Panel_Chain_00:
    baserom 0x918, 0x10

    .global Aob_Panel_Chain_01
Aob_Panel_Chain_01:
    baserom 0x928, 0x10

    .global Aob_Panel_Chain_02
Aob_Panel_Chain_02:
    baserom 0x938, 0x10

    .global Aob_Panel_Chain_03
Aob_Panel_Chain_03:
    baserom 0x948, 0x10

    .global Aob_Panel_Chain_04
Aob_Panel_Chain_04:
    baserom 0x958, 0x10

    .global Aob_Panel_Chain_05
Aob_Panel_Chain_05:
    baserom 0x968, 0x10

    .global Aob_Panel_Chain_06
Aob_Panel_Chain_06:
    baserom 0x978, 0x10

    .global Aob_Panel_Chain_07
Aob_Panel_Chain_07:
    baserom 0x988, 0x10

    .global Aob_Panel_Select_00
Aob_Panel_Select_00:
    baserom 0x998, 0x8

    .global Aob_Panel_Select_01
Aob_Panel_Select_01:
    baserom 0x9A0, 0x8

    .global Aob_Panel_Select_02
Aob_Panel_Select_02:
    baserom 0x9A8, 0x8

    .global Aob_Panel_Select_03
Aob_Panel_Select_03:
    baserom 0x9B0, 0x8

    .global Aob_Panel_Select_04
Aob_Panel_Select_04:
    baserom 0x9B8, 0x8

    .global Aob_Panel_Select_05
Aob_Panel_Select_05:
    baserom 0x9C0, 0x8

    .global Aob_Panel_Select_06
Aob_Panel_Select_06:
    baserom 0x9C8, 0x8

    .global Aob_Panel_Select_07
Aob_Panel_Select_07:
    baserom 0x9D0, 0x8

    .global Aob_Panel_Select_08
Aob_Panel_Select_08:
    baserom 0x9D8, 0x8

    .global Aob_Panel_Select_09
Aob_Panel_Select_09:
    baserom 0x9E0, 0x8

    .global Aob_Panel_Select_0a
Aob_Panel_Select_0a:
    baserom 0x9E8, 0x8

    .global Aob_Panel_Select_0b
Aob_Panel_Select_0b:
    baserom 0x9F0, 0x8

#if VERSION == 0
.include "baku.s"
#endif
.include "pupuri.s"

    .global Aob_Title_Obj_00
Aob_Title_Obj_00:
    .2byte 3
    .2byte 0x4000, 0x8000, 0x0000
    .2byte 0x4000, 0x8020, 0x0004
    .2byte 0x0000, 0x4040, 0x0008

#if VERSION >= 1
.include "baku.s"
#endif

.align 2, 0
