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
    .2byte 2
    .2byte 0x4000, 0x0000, 0xF238
    .2byte 0x4008, 0x0000, 0xF23A

    .align 2
    .global Aob_Panel_Ready_03
Aob_Panel_Ready_03:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xF23C
    .2byte 0x4008, 0x0000, 0xF23E

    .align 2
    .global Aob_Panel_TryAgain_00
Aob_Panel_TryAgain_00:
    .2byte 4
    .2byte 0x4000, 0x4000, 0xF240
    .2byte 0x4000, 0x4020, 0xF244
    .2byte 0x4008, 0x4000, 0xF248
    .2byte 0x4008, 0x4020, 0xF24C

    .align 2
    .global Aob_Panel_TryAgain_01
Aob_Panel_TryAgain_01:
    .2byte 4
    .2byte 0x4000, 0x0000, 0xF250
    .2byte 0x0000, 0x0010, 0xF252
    .2byte 0x4008, 0x0000, 0xF253
    .2byte 0x0008, 0x0010, 0xF255

    .align 2
    .global Aob_Panel_TryAgain_02
Aob_Panel_TryAgain_02:
    .2byte 4
    .2byte 0x4000, 0x0000, 0xF256
    .2byte 0x0000, 0x0010, 0xF258
    .2byte 0x4008, 0x0000, 0xF259
    .2byte 0x0008, 0x0010, 0xF25B

    .align 2
    .global Aob_Panel_TryAgain_03
Aob_Panel_TryAgain_03:
    .2byte 4
    .2byte 0x4000, 0x0000, 0xF25C
    .2byte 0x4008, 0x2000, 0xF25C
    .2byte 0x4000, 0x1010, 0xF25C
    .2byte 0x4008, 0x3010, 0xF25C

    .align 2
    .global Aob_Panel_TryAgain_04
Aob_Panel_TryAgain_04:
    .2byte 2
    .2byte 0x0000, 0x0000, 0xF260
    .2byte 0x0000, 0x1008, 0xF260

    .align 2
    .global Aob_Panel_TryAgain_05
Aob_Panel_TryAgain_05:
    .2byte 2
    .2byte 0x0000, 0x2000, 0xF260
    .2byte 0x0000, 0x3008, 0xF260

    .align 2
    .global Aob_Panel_TryAgain_06
Aob_Panel_TryAgain_06:
    .2byte 2
    .2byte 0x4000, 0x4000, 0xF261
    .2byte 0x4000, 0x0020, 0xF265

    .align 2
    .global Aob_Panel_TryAgain_07
Aob_Panel_TryAgain_07:
    .2byte 2
    .2byte 0x4000, 0x41D0, 0xF2F4
    .2byte 0x4000, 0x01F0, 0xF2F8

    .align 2
    .global Aob_Panel_Chain_00
Aob_Panel_Chain_00:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB598
    .2byte 0x4008, 0x0000, 0xB59A

    .align 2
    .global Aob_Panel_Chain_01
Aob_Panel_Chain_01:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB59C
    .2byte 0x4008, 0x0000, 0xB59E

    .align 2
    .global Aob_Panel_Chain_02
Aob_Panel_Chain_02:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5A0
    .2byte 0x4008, 0x0000, 0xB5A2

    .align 2
    .global Aob_Panel_Chain_03
Aob_Panel_Chain_03:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5A4
    .2byte 0x4008, 0x0000, 0xB5A6

    .align 2
    .global Aob_Panel_Chain_04
Aob_Panel_Chain_04:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5A8
    .2byte 0x4008, 0x0000, 0xB5AA

    .align 2
    .global Aob_Panel_Chain_05
Aob_Panel_Chain_05:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5AC
    .2byte 0x4008, 0x0000, 0xB5AE

    .align 2
    .global Aob_Panel_Chain_06
Aob_Panel_Chain_06:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5B0
    .2byte 0x4008, 0x0000, 0xB5B2

    .align 2
    .global Aob_Panel_Chain_07
Aob_Panel_Chain_07:
    .2byte 2
    .2byte 0x4000, 0x0000, 0xB5B4
    .2byte 0x4008, 0x0000, 0xB5B6

    .align 2
    .global Aob_Panel_Select_00
Aob_Panel_Select_00:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7267

    .align 2
    .global Aob_Panel_Select_01
Aob_Panel_Select_01:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7268

    .align 2
    .global Aob_Panel_Select_02
Aob_Panel_Select_02:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7269

    .align 2
    .global Aob_Panel_Select_03
Aob_Panel_Select_03:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x726A

    .align 2
    .global Aob_Panel_Select_04
Aob_Panel_Select_04:
    .2byte 1
    .2byte 0x0000, 0x1000, 0x726A

    .align 2
    .global Aob_Panel_Select_05
Aob_Panel_Select_05:
    .2byte 1
    .2byte 0x00FC, 0x01FC, 0x726B

    .align 2
    .global Aob_Panel_Select_06
Aob_Panel_Select_06:
    .2byte 1
    .2byte 0x00FC, 0x01FC, 0x726C

    .align 2
    .global Aob_Panel_Select_07
Aob_Panel_Select_07:
    .2byte 1
    .2byte 0x00F8, 0x41F8, 0x726D

    .align 2
    .global Aob_Panel_Select_08
Aob_Panel_Select_08:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7272

    .align 2
    .global Aob_Panel_Select_09
Aob_Panel_Select_09:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7273

    .align 2
    .global Aob_Panel_Select_0a
Aob_Panel_Select_0a:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7274

    .align 2
    .global Aob_Panel_Select_0b
Aob_Panel_Select_0b:
    .2byte 1
    .2byte 0x0000, 0x0000, 0x7275

#if VERSION == 0
.include "baku.s"
#endif
.include "pupuri.s"

    .global Aob_Title_Obj_00
Aob_Title_Obj_00:
    .2byte 3
    .2byte 0x4000, 0x8000, 0x0000
    .2byte 0x4000, 0x8020, 0x0004
#if VERSION < 2
    .2byte 0x0000, 0x4040, 0x0008
#else
    .2byte 0x4000, 0x8040, 0x0008
#endif

#if VERSION >= 1
.include "baku.s"
#endif

.align 2, 0
