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

    .global Aob_Panel_Baku_00
Aob_Panel_Baku_00:
    baserom 0x9F8, 0x1C

    .global Aob_Panel_Baku_01
Aob_Panel_Baku_01:
    baserom 0xA14, 0x1C

    .global Aob_Panel_Baku_02
Aob_Panel_Baku_02:
    baserom 0xA30, 0x1C

    .global Aob_Panel_Baku_03
Aob_Panel_Baku_03:
    baserom 0xA4C, 0x1C

    .global Aob_Panel_Baku_04
Aob_Panel_Baku_04:
    baserom 0xA68, 0x1C

    .global Aob_Panel_Baku_05
Aob_Panel_Baku_05:
    baserom 0xA84, 0x1C

    .global Aob_Panel_Baku_06
Aob_Panel_Baku_06:
    baserom 0xAA0, 0x1C

    .global Aob_Panel_Baku_07
Aob_Panel_Baku_07:
    baserom 0xABC, 0x1C

    .global Aob_Panel_Baku_08
Aob_Panel_Baku_08:
    baserom 0xAD8, 0x1C

    .global Aob_Panel_Baku_09
Aob_Panel_Baku_09:
    baserom 0xAF4, 0x1C

    .global Aob_Panel_Baku_0a
Aob_Panel_Baku_0a:
    baserom 0xB10, 0x1C

    .global Aob_Panel_Baku_0b
Aob_Panel_Baku_0b:
    baserom 0xB2C, 0x1C

    .global Aob_Panel_Baku_Ani00
Aob_Panel_Baku_Ani00:
    baserom 0xB48, 0x40

    .global Aob_Panel_Baku_Ani01
Aob_Panel_Baku_Ani01:
    baserom 0xB88, 0x68

    .global Aob_Panel_Baku_Ani02
Aob_Panel_Baku_Ani02:
    baserom 0xBF0, 0x90

    .global Aob_Panel_Baku_Ani03
Aob_Panel_Baku_Ani03:
    baserom 0xC80, 0xB8

    .global Aob_Pupuri_Parts_00
Aob_Pupuri_Parts_00:
    baserom 0xD38, 0x58

    .global Aob_Pupuri_Parts_01
Aob_Pupuri_Parts_01:
    baserom 0xD90, 0x58

    .global Aob_Pupuri_Parts_02
Aob_Pupuri_Parts_02:
    baserom 0xDE8, 0x58

    .global Aob_Pupuri_Parts_03
Aob_Pupuri_Parts_03:
    baserom 0xE40, 0x64

    .global Aob_Pupuri_Parts_04
Aob_Pupuri_Parts_04:
    baserom 0xEA4, 0x58

    .global Aob_Pupuri_Parts_05
Aob_Pupuri_Parts_05:
    baserom 0xEFC, 0x5C

    .global Aob_Pupuri_Parts_06
Aob_Pupuri_Parts_06:
    baserom 0xF58, 0x5C

    .global Aob_Pupuri_Parts_07
Aob_Pupuri_Parts_07:
    baserom 0xFB4, 0x58

    .global Aob_Pupuri_Parts_08
Aob_Pupuri_Parts_08:
    baserom 0x100C, 0x5C

    .global Aob_Pupuri_Parts_09
Aob_Pupuri_Parts_09:
    baserom 0x1068, 0x5C

    .global Aob_Pupuri_Parts_0a
Aob_Pupuri_Parts_0a:
    baserom 0x10C4, 0x5C

    .global Aob_Pupuri_Parts_0b
Aob_Pupuri_Parts_0b:
    baserom 0x1120, 0x5C

    .global Aob_Pupuri_Parts_0c
Aob_Pupuri_Parts_0c:
    baserom 0x117C, 0x58

    .global Aob_Pupuri_Parts_0d
Aob_Pupuri_Parts_0d:
    baserom 0x11D4, 0x58

    .global Aob_Pupuri_Parts_0e
Aob_Pupuri_Parts_0e:
    baserom 0x122C, 0x58

    .global Aob_Pupuri_Parts_0f
Aob_Pupuri_Parts_0f:
    baserom 0x1284, 0x5C

    .global Aob_Pupuri_Parts_10
Aob_Pupuri_Parts_10:
    baserom 0x12E0, 0x5C

    .global Aob_Pupuri_Parts_11
Aob_Pupuri_Parts_11:
    baserom 0x133C, 0x4C

    .global Aob_Pupuri_Parts_12
Aob_Pupuri_Parts_12:
    baserom 0x1388, 0x4C

    .global Aob_Pupuri_Parts_13
Aob_Pupuri_Parts_13:
    baserom 0x13D4, 0x4C

    .global Aob_Pupuri_Parts_14
Aob_Pupuri_Parts_14:
    baserom 0x1420, 0x10

    .global Aob_Pupuri_Parts_15
Aob_Pupuri_Parts_15:
    baserom 0x1430, 0xE

    .global Aob_Pupuri_Parts_Ani00
Aob_Pupuri_Parts_Ani00:
    baserom 0x143E, 0x23

    .global Aob_Pupuri_Parts_Ani01
Aob_Pupuri_Parts_Ani01:
    baserom 0x1461, 0x2D

    .global Aob_Pupuri_Parts_Ani02
Aob_Pupuri_Parts_Ani02:
    baserom 0x148E, 0x41

    .global Aob_Pupuri_Parts_Ani03
Aob_Pupuri_Parts_Ani03:
    baserom 0x14CF, 0x37

    .global Aob_Pupuri_Parts_Ani04
Aob_Pupuri_Parts_Ani04:
    baserom 0x1506, 0x55

    .global Aob_Pupuri_Parts_Ani05
Aob_Pupuri_Parts_Ani05:
    baserom 0x155B, 0x6E

    .global Aob_Pupuri_Parts_Ani06
Aob_Pupuri_Parts_Ani06:
    baserom 0x15C9, 0x9B

    .global Aob_Pupuri_Parts_Ani07
Aob_Pupuri_Parts_Ani07:
    baserom 0x1664, 0x55

    .global Aob_Pupuri_Parts_Ani07_1
Aob_Pupuri_Parts_Ani07_1:
    baserom 0x16B9, 0xF

.global Aob_Title_Obj_00
   Aob_Title_Obj_00:
   .2byte 3
              .2byte 0x4000, 0x8000, 0
              .2byte 0x4000, 0x8020, 4
              .2byte 0, 0x4040, 8


.align 2, 0