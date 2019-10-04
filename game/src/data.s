#include "asm/macros.inc"

    .section .rodata

    .include "np_Msg_Help.s"

    .global np_Msg_GameLevel_Slow_1
np_Msg_GameLevel_Slow_1:
    .byte 0xFD, 0x1D, 0x16, 0x19, 0x21, 0x3F, 0x02, 0xFF  @ SLOW 1

    .global np_Msg_GameLevel_Slow_2
np_Msg_GameLevel_Slow_2:
    .byte 0xFD, 0x1D, 0x16, 0x19, 0x21, 0x3F, 0x03, 0xFF  @ SLOW 2

    .global np_Msg_GameLevel_Slow_3
np_Msg_GameLevel_Slow_3:
    .byte 0xFD, 0x1D, 0x16, 0x19, 0x21, 0x3F, 0x04, 0xFF  @ SLOW 3

    .global np_Msg_GameLevel_Easy
np_Msg_GameLevel_Easy:
    .byte 0xFD, 0x3F, 0x0F, 0x0B, 0x1D, 0x23, 0x3F, 0xFF  @  EASY

    .global np_Msg_GameLevel_Normal
np_Msg_GameLevel_Normal:
    .byte 0xFD, 0x18, 0x19, 0x1C, 0x17, 0x0B, 0x16, 0xFF  @ NORMAL

    .global np_Msg_GameLevel_Hard
np_Msg_GameLevel_Hard:
    .byte 0xFD, 0x3F, 0x12, 0x0B, 0x1C, 0x0E, 0x3F, 0xFF  @  HARD

    .global np_Msg_GameLevel_S_Hard
np_Msg_GameLevel_S_Hard:
    .byte 0xFD, 0x1D, 0xFC, 0x11, 0xFD, 0x12, 0x0B, 0x1C  @ S-HAR
    .byte 0x0E, 0xFF                                      @ D

    .global np_Msg_GameLevel_V_Hard
np_Msg_GameLevel_V_Hard:
    .byte 0xFD, 0x20, 0xFC, 0x11, 0xFD, 0x12, 0x0B, 0x1C  @ V-HAR
    .byte 0x0E, 0xFF                                      @ D

    .align 2
    .global np_Msg_GameLevel_Table
np_Msg_GameLevel_Table:
    .4byte np_Msg_GameLevel_Slow_3
    .4byte np_Msg_GameLevel_Slow_2
    .4byte np_Msg_GameLevel_Slow_1
    .4byte np_Msg_GameLevel_Easy
    .4byte np_Msg_GameLevel_Normal
    .4byte np_Msg_GameLevel_Hard
    .4byte np_Msg_GameLevel_S_Hard
    .4byte np_Msg_GameLevel_V_Hard

    .global np_Msg_MainSelect_00
np_Msg_MainSelect_00:
    .byte 0xF9
    .byte 0xFC, 0x0C, 0xFD, 0x97, 0xDF, 0xB8, 0xDB, 0xA8  @ ·エンドレス
    .byte 0xFA, 0xFA, 0xFC, 0x0C, 0xFD, 0x49, 0x57, 0x82  @ ·おじゃ
    .byte 0x7D, 0x91, 0xAE, 0xB2, 0x9E, 0xFA, 0xFA, 0xFC  @ まアタック
    .byte 0x0C, 0xFD, 0x58, 0x53, 0x43, 0x3F, 0xB6, 0xD1  @ ·すごい デモ
    .byte 0xFA, 0xFA, 0xFC, 0x0C, 0xFD, 0x99, 0xC6, 0xA6  @ ·オプシ
    .byte 0xD6, 0xDF, 0xFA, 0xFA, 0xFC, 0x0C, 0xFD, 0xA8  @ ョン·ス
    .byte 0xD9, 0xFC, 0x06, 0xFD, 0xC6, 0xD1, 0xFC, 0x06  @ リープモー
    .byte 0xFD, 0xB8, 0xFA, 0xFF                          @ ド

    .global np_Msg_MainSelect_01
np_Msg_MainSelect_01:
    .byte 0xF9
    .byte 0xFD, 0x97, 0xDF, 0xB8, 0xDB, 0xA8, 0xFA, 0xFA  @ エンドレス
    .byte 0xFC, 0x0C, 0xFD, 0xA1, 0xFC, 0x06, 0xFD, 0xCF  @ ·ゲーム
    .byte 0xA8, 0xAE, 0xFC, 0x06, 0xFD, 0xB7, 0xFA, 0xFA  @ スタート
    .byte 0xFC, 0x0C, 0xFD, 0xA1, 0xFC, 0x06, 0xFD, 0xCF  @ ·ゲーム
    .byte 0xDB, 0xC8, 0xDA, 0xFA, 0xFA, 0xFA, 0xFC, 0x0C  @ レベル·
    .byte 0xFD, 0xA8, 0xC3, 0xFC, 0x06, 0xFD, 0xB8, 0xDB  @ スピードレ
    .byte 0xC8, 0xDA, 0xFA, 0xFF                          @ ベル

    .global np_Msg_MainSelect_02
np_Msg_MainSelect_02:
    .byte 0xF9
    .byte 0xFD, 0x49, 0x57, 0x82, 0x7D, 0x91, 0xAE, 0xB2  @ おじゃまアタッ
    .byte 0x9E, 0xFA, 0xFA, 0xFC, 0x0C, 0xFD, 0xA1, 0xFC  @ ク·ゲ
    .byte 0x06, 0xFD, 0xCF, 0xA8, 0xAE, 0xFC, 0x06, 0xFD  @ ームスター
    .byte 0xB7, 0xFA, 0xFA, 0xFC, 0x0C, 0xFD, 0xA1, 0xFC  @ ト·ゲ
    .byte 0x06, 0xFD, 0xCF, 0xDB, 0xC8, 0xDA, 0xFA, 0xFA  @ ームレベル
    .byte 0xFA, 0xFC, 0x0C, 0xFD, 0x49, 0x57, 0x82, 0x7D  @ ·おじゃま
    .byte 0xDB, 0xC8, 0xDA, 0xFA, 0xFF                    @ レベル

    .global np_Msg_MainSelect_03
np_Msg_MainSelect_03:
    .byte 0xF9
    .byte 0xFD, 0x99, 0xC6, 0xA6, 0xD6, 0xDF, 0xFA, 0xFF  @ オプション

    .global np_Msg_MainSelect_04
np_Msg_MainSelect_04:
    .byte 0xF9
    .byte 0xFD, 0x58, 0x53, 0x43, 0x3F, 0xB6, 0xD1, 0xFA  @ すごい デモ
    .byte 0xFA, 0xFF                                      @

    .global np_Msg_OptionSelect_SP
np_Msg_OptionSelect_SP:
    .byte 0xFD, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F  @
    .byte 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0x3F, 0xFF        @

    .global np_Msg_OptionSelect_00
np_Msg_OptionSelect_00:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0xCD, 0xFC, 0x06, 0xFD, 0x9E  @ ·マーク
    .byte 0x3F, 0x65, 0x8F, 0x80, 0x63, 0xFC, 0x0E, 0xFF  @  てんめつ:
#else
    .byte 0xFC, 0x0C, 0xFD, 0xA4, 0x93, 0xDF, 0x3F, 0x65  @ ·サイン て
    .byte 0x8F, 0x80, 0x63, 0xFC, 0x0E, 0xFF              @ んめつ:
#endif

    .global np_Msg_OptionSelect_01
np_Msg_OptionSelect_01:
    .byte 0xFC, 0x0C, 0xFD, 0xA8, 0xA2, 0x91, 0x3F, 0xA0  @ ·スコア ケ
    .byte 0xAE, 0x58, 0x45, 0xFC, 0x0E, 0xFF              @ タすう:

    .global np_Msg_OptionSelect_02
np_Msg_OptionSelect_02:
    .byte 0xFC, 0x0C, 0xFD, 0x6F, 0x4E, 0x6E, 0x63, 0x5A  @ ·ばくはつせ
    .byte 0x89, 0x41, 0x51, 0xFC, 0x0E, 0xFF              @ りあげ:

    .global np_Msg_OptionSelect_03
np_Msg_OptionSelect_03:
    .byte 0xFC, 0x0C, 0xFD, 0xC0, 0xBC, 0xDA, 0x05, 0x56  @ ·パネル4し
    .byte 0x84, 0x8A, 0x43, 0xFC, 0x0E, 0xFF              @ ゅるい:

    .global np_Msg_OptionSelect_04
np_Msg_OptionSelect_04:
    .byte 0xFC, 0x0C, 0xFD, 0xA8, 0xB7, 0xB2, 0xC6, 0x3F  @ ·ストップ
    .byte 0x3F, 0x3F, 0x3F, 0xFC, 0x0E, 0xFF              @    :

    .global np_Msg_OptionSelect_05
np_Msg_OptionSelect_05:
    .byte 0xFC, 0x0C, 0xFD, 0xD9, 0xCE, 0xB2, 0xAE, 0xFC  @ ·リミッタ
    .byte 0x06, 0xFD, 0x3F, 0x3F, 0x3F, 0xFC, 0x0E, 0xFF  @ ー   :

    .global np_Msg_OptionSelect_06
np_Msg_OptionSelect_06:
    .byte 0xFC, 0x0C, 0xFD, 0x85, 0x45, 0x87, 0x3F, 0x71  @ ·ゆうよ ひ
    .byte 0x86, 0x45, 0x57, 0xFC, 0x0E, 0xFF              @ ょうじ:

    .global np_Msg_OptionSelect_07
np_Msg_OptionSelect_07:
    .byte 0xFC, 0x0C, 0xFD, 0x49, 0x57, 0x82, 0x7D, 0x4A  @ ·おじゃまか
    .byte 0x43, 0x67, 0x45, 0xFC, 0x0E, 0xFF              @ いとう:

    .global np_Msg_OptionSelect_08
np_Msg_OptionSelect_08:
    .byte 0xFC, 0x0C, 0xFD, 0x0C, 0xCB, 0xAE, 0xDF, 0x5A  @ ·Bボタンせ
    .byte 0x89, 0x41, 0x51, 0xFC, 0x0E, 0xFF              @ りあげ:

    .global np_Msg_OptionSelect_09
np_Msg_OptionSelect_09:
    .byte 0xFC, 0x0C, 0xFD, 0xC0, 0xBC, 0xDA, 0x3F, 0x91  @ ·パネル ア
    .byte 0xBA, 0xD0, 0x3F, 0xFC, 0x0E, 0xFF              @ ニメ :

    .global np_Msg_OptionSelect_0a
np_Msg_OptionSelect_0a:
    .byte 0xFC, 0x0C, 0xFD, 0x4A, 0x78, 0x4B, 0x7E, 0x3F  @ ·かべがみ
    .byte 0x9A, 0xD8, 0xFC, 0x06, 0x0E, 0xFF              @ カラー:

    .global np_Msg_OptionSelect_0b
np_Msg_OptionSelect_0b:
    .byte 0xFC, 0x0C, 0xFD, 0xC4, 0x92, 0xFC, 0x06, 0xFD  @ ·フィー
    .byte 0xDA, 0xB8, 0x3F, 0x3F, 0x3F, 0xFC, 0x0E, 0xFF  @ ルド   :

    .global np_Msg_OptionSelect_0c
np_Msg_OptionSelect_0c:
    .byte 0xFC, 0x0C, 0xFD, 0x5B, 0x8F, 0x50, 0x56, 0xCB  @ ·ぜんけしボ
    .byte 0xFC, 0x06, 0xFD, 0xB9, 0xA8, 0xFC, 0x0E, 0xFF  @ ーナス:

    .global np_Msg_OptionSelect_OF
np_Msg_OptionSelect_OF:
    .byte 0xFD, 0x19, 0x10, 0x10, 0xFF                    @ OFF

    .global np_Msg_OptionSelect_ON
np_Msg_OptionSelect_ON:
    .byte 0xFD, 0x19, 0x18, 0x3F, 0xFF                    @ ON

    .global np_Msg_OptionSelect_N5
np_Msg_OptionSelect_N5:
    .byte 0xFD, 0x06, 0xA0, 0xAE, 0xFF                    @ 5ケタ

    .global np_Msg_OptionSelect_N6
np_Msg_OptionSelect_N6:
    .byte 0xFD, 0x07, 0xA0, 0xAE, 0xFF                    @ 6ケタ

    .global np_Msg_OptionSelect_NM
np_Msg_OptionSelect_NM:
    .byte 0xFD, 0x74, 0x63, 0x45, 0xFF                    @ ふつう

    .global np_Msg_OptionSelect_RN
np_Msg_OptionSelect_RN:
    .byte 0xFD, 0x1C, 0x18, 0x0E, 0xFF                    @ RND

    .global np_Msg_OptionSelect_DF
np_Msg_OptionSelect_DF:
    .byte 0xFC, 0x0C, 0xFD, 0x81, 0x67, 0x6D, 0x5A, 0x62  @ ·もとのせっ
    .byte 0x65, 0x43, 0x6A, 0x81, 0x68, 0x58, 0x3F, 0xFF  @ ていにもどす

    .global np_Msg_OptionSelect_YR
np_Msg_OptionSelect_YR:
    .byte 0xFC, 0x0C, 0xFD, 0x57, 0x75, 0x8F, 0x6D, 0x5A  @ ·じぶんのせ
    .byte 0x62, 0x65, 0x43, 0x6A, 0x81, 0x68, 0x58, 0xFF  @ っていにもどす

    .global np_Msg_SuperDemo_00
np_Msg_SuperDemo_00:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x01, 0xFC, 0x0E, 0xFD  @ ·00:
    .byte 0x03, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 2だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x01, 0xFC, 0x0E, 0xFD  @ ·00:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x03, 0xFC, 0x11, 0xFD  @ れんさ 2-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_01
np_Msg_SuperDemo_01:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x02, 0xFC, 0x0E, 0xFD  @ ·01:
    .byte 0x03, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 2だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x02, 0xFC, 0x0E, 0xFD  @ ·01:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x03, 0xFC, 0x11, 0xFD  @ れんさ 2-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_02
np_Msg_SuperDemo_02:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x03, 0xFC, 0x0E, 0xFD  @ ·02:
    .byte 0x03, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 2だんでのれんさ
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x03, 0xFC, 0x0E, 0xFD  @ ·02:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x03, 0xFC, 0x11, 0xFD  @ れんさ 2-
    .byte 0x04, 0x3F, 0x3F, 0xFF                          @ 3
#endif

    .global np_Msg_SuperDemo_03
np_Msg_SuperDemo_03:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x04, 0xFC, 0x0E, 0xFD  @ ·03:
    .byte 0x03, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 2だんでのれんさ
    .byte 0x0E, 0xFF                                      @ D
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x04, 0xFC, 0x0E, 0xFD  @ ·03:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x03, 0xFC, 0x11, 0xFD  @ れんさ 2-
    .byte 0x05, 0x3F, 0x3F, 0xFF                          @ 4
#endif

    .global np_Msg_SuperDemo_04
np_Msg_SuperDemo_04:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x05, 0xFC, 0x0E, 0xFD  @ ·04:
    .byte 0x04, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 3だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x05, 0xFC, 0x0E, 0xFD  @ ·04:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x04, 0xFC, 0x11, 0xFD  @ れんさ 3-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_05
np_Msg_SuperDemo_05:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x06, 0xFC, 0x0E, 0xFD  @ ·05:
    .byte 0x04, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 3だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x06, 0xFC, 0x0E, 0xFD  @ ·05:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x04, 0xFC, 0x11, 0xFD  @ れんさ 3-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_06
np_Msg_SuperDemo_06:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x07, 0xFC, 0x0E, 0xFD  @ ·06:
    .byte 0x04, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 3だんでのれんさ
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x07, 0xFC, 0x0E, 0xFD  @ ·06:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x04, 0xFC, 0x11, 0xFD  @ れんさ 3-
    .byte 0x04, 0x3F, 0x3F, 0xFF                          @ 3
#endif

    .global np_Msg_SuperDemo_07
np_Msg_SuperDemo_07:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x08, 0xFC, 0x0E, 0xFD  @ ·07:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x08, 0xFC, 0x0E, 0xFD  @ ·07:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_08
np_Msg_SuperDemo_08:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x09, 0xFC, 0x0E, 0xFD  @ ·08:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x09, 0xFC, 0x0E, 0xFD  @ ·08:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_09
np_Msg_SuperDemo_09:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x0A, 0xFC, 0x0E, 0xFD  @ ·09:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x01, 0x0A, 0xFC, 0x0E, 0xFD  @ ·09:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x04, 0x3F, 0x3F, 0xFF                          @ 3
#endif

    .global np_Msg_SuperDemo_10
np_Msg_SuperDemo_10:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x01, 0xFC, 0x0E, 0xFD  @ ·10:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x0E, 0xFF                                      @ D
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x01, 0xFC, 0x0E, 0xFD  @ ·10:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x05, 0x3F, 0x3F, 0xFF                          @ 4
#endif

    .global np_Msg_SuperDemo_11
np_Msg_SuperDemo_11:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x02, 0xFC, 0x0E, 0xFD  @ ·11:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x0F, 0xFF                                      @ E
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x02, 0xFC, 0x0E, 0xFD  @ ·11:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x06, 0x3F, 0x3F, 0xFF                          @ 5
#endif

    .global np_Msg_SuperDemo_12
np_Msg_SuperDemo_12:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x03, 0xFC, 0x0E, 0xFD  @ ·12:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x10, 0xFF                                      @ F
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x03, 0xFC, 0x0E, 0xFD  @ ·12:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x07, 0x3F, 0x3F, 0xFF                          @ 6
#endif

    .global np_Msg_SuperDemo_13
np_Msg_SuperDemo_13:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x04, 0xFC, 0x0E, 0xFD  @ ·13:
    .byte 0x05, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 4だんでのれんさ
    .byte 0x11, 0xFF                                      @ G
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x04, 0xFC, 0x0E, 0xFD  @ ·13:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x05, 0xFC, 0x11, 0xFD  @ れんさ 4-
    .byte 0x08, 0x3F, 0x3F, 0xFF                          @ 7
#endif

    .global np_Msg_SuperDemo_14
np_Msg_SuperDemo_14:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x05, 0xFC, 0x0E, 0xFD  @ ·14:
    .byte 0x06, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 5だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x05, 0xFC, 0x0E, 0xFD  @ ·14:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x06, 0xFC, 0x11, 0xFD  @ れんさ 5-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_15
np_Msg_SuperDemo_15:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x06, 0xFC, 0x0E, 0xFD  @ ·15:
    .byte 0x06, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 5だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x06, 0xFC, 0x0E, 0xFD  @ ·15:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x06, 0xFC, 0x11, 0xFD  @ れんさ 5-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_16
np_Msg_SuperDemo_16:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x07, 0xFC, 0x0E, 0xFD  @ ·16:
    .byte 0x06, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 5だんでのれんさ
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x07, 0xFC, 0x0E, 0xFD  @ ·16:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x06, 0xFC, 0x11, 0xFD  @ れんさ 5-
    .byte 0x04, 0x3F, 0x3F, 0xFF                          @ 3
#endif

    .global np_Msg_SuperDemo_17
np_Msg_SuperDemo_17:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x08, 0xFC, 0x0E, 0xFD  @ ·17:
    .byte 0x07, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 6だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x08, 0xFC, 0x0E, 0xFD  @ ·17:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x07, 0xFC, 0x11, 0xFD  @ れんさ 6-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_18
np_Msg_SuperDemo_18:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x09, 0xFC, 0x0E, 0xFD  @ ·18:
    .byte 0x07, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 6だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x09, 0xFC, 0x0E, 0xFD  @ ·18:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x07, 0xFC, 0x11, 0xFD  @ れんさ 6-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_19
np_Msg_SuperDemo_19:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x0A, 0xFC, 0x0E, 0xFD  @ ·19:
    .byte 0x07, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 6だんでのれんさ
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x02, 0x0A, 0xFC, 0x0E, 0xFD  @ ·19:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x07, 0xFC, 0x11, 0xFD  @ れんさ 6-
    .byte 0x04, 0x3F, 0x3F, 0xFF                          @ 3
#endif

    .global np_Msg_SuperDemo_20
np_Msg_SuperDemo_20:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x01, 0xFC, 0x0E, 0xFD  @ ·20:
    .byte 0x08, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 7だんでのれんさ
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x01, 0xFC, 0x0E, 0xFD  @ ·20:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x08, 0xFC, 0x11, 0xFD  @ れんさ 7-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_21
np_Msg_SuperDemo_21:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x02, 0xFC, 0x0E, 0xFD  @ ·21:
    .byte 0x08, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 7だんでのれんさ
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x02, 0xFC, 0x0E, 0xFD  @ ·21:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x08, 0xFC, 0x11, 0xFD  @ れんさ 7-
    .byte 0x03, 0x3F, 0x3F, 0xFF                          @ 2
#endif

    .global np_Msg_SuperDemo_22
np_Msg_SuperDemo_22:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x03, 0xFC, 0x0E, 0xFD  @ ·22:
    .byte 0x09, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 8だんでのれんさ
    .byte 0x3F, 0xFF                                      @
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x03, 0xFC, 0x0E, 0xFD  @ ·22:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x09, 0xFC, 0x11, 0xFD  @ れんさ 8-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_23
np_Msg_SuperDemo_23:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x04, 0xFC, 0x0E, 0xFD  @ ·23:
    .byte 0x0A, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F, 0x54  @ 9だんでのれんさ
    .byte 0x3F, 0xFF                                      @
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x04, 0xFC, 0x0E, 0xFD  @ ·23:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x0A, 0xFC, 0x11, 0xFD  @ れんさ 9-
    .byte 0x02, 0x3F, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_24
np_Msg_SuperDemo_24:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x05, 0xFC, 0x0E, 0xFD  @ ·24:
    .byte 0x02, 0x01, 0x5F, 0x8F, 0x66, 0x6D, 0x8B, 0x8F  @ 10だんでのれん
    .byte 0x54, 0xFF                                      @ さ
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x05, 0xFC, 0x0E, 0xFD  @ ·24:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x01, 0xFC, 0x11  @ れんさ 10-
    .byte 0xFD, 0x02, 0x3F, 0xFF                          @ 1
#endif

    .global np_Msg_SuperDemo_25
np_Msg_SuperDemo_25:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x06, 0xFC, 0x0E, 0xFD  @ ·25:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0B  @ 11だんれんさA
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x06, 0xFC, 0x0E, 0xFD  @ ·25:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0B, 0xFC  @ れんさ 11A
    .byte 0x11, 0xFD, 0x02, 0xFF                          @ -1
#endif

    .global np_Msg_SuperDemo_26
np_Msg_SuperDemo_26:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x07, 0xFC, 0x0E, 0xFD  @ ·26:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0B  @ 11だんれんさA
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x07, 0xFC, 0x0E, 0xFD  @ ·26:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0B, 0xFC  @ れんさ 11A
    .byte 0x11, 0xFD, 0x03, 0xFF                          @ -2
#endif

    .global np_Msg_SuperDemo_27
np_Msg_SuperDemo_27:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x08, 0xFC, 0x0E, 0xFD  @ ·27:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0B  @ 11だんれんさA
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x08, 0xFC, 0x0E, 0xFD  @ ·27:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0B, 0xFC  @ れんさ 11A
    .byte 0x11, 0xFD, 0x04, 0xFF                          @ -3
#endif

    .global np_Msg_SuperDemo_28
np_Msg_SuperDemo_28:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x09, 0xFC, 0x0E, 0xFD  @ ·28:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0B  @ 11だんれんさA
    .byte 0x0E, 0xFF                                      @ D
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x09, 0xFC, 0x0E, 0xFD  @ ·28:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0B, 0xFC  @ れんさ 11A
    .byte 0x11, 0xFD, 0x05, 0xFF                          @ -4
#endif

    .global np_Msg_SuperDemo_29
np_Msg_SuperDemo_29:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x0A, 0xFC, 0x0E, 0xFD  @ ·29:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0B  @ 11だんれんさA
    .byte 0x0F, 0xFF                                      @ E
#else
    .byte 0xFC, 0x0C, 0xFD, 0x03, 0x0A, 0xFC, 0x0E, 0xFD  @ ·29:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0B, 0xFC  @ れんさ 11A
    .byte 0x11, 0xFD, 0x06, 0xFF                          @ -5
#endif

    .global np_Msg_SuperDemo_30
np_Msg_SuperDemo_30:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x01, 0xFC, 0x0E, 0xFD  @ ·30:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0C  @ 11だんれんさB
    .byte 0x0B, 0xFF                                      @ A
#else
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x01, 0xFC, 0x0E, 0xFD  @ ·30:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0C, 0xFC  @ れんさ 11B
    .byte 0x11, 0xFD, 0x02, 0xFF                          @ -1
#endif

    .global np_Msg_SuperDemo_31
np_Msg_SuperDemo_31:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x02, 0xFC, 0x0E, 0xFD  @ ·31:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0C  @ 11だんれんさB
    .byte 0x0C, 0xFF                                      @ B
#else
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x02, 0xFC, 0x0E, 0xFD  @ ·31:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0C, 0xFC  @ れんさ 11B
    .byte 0x11, 0xFD, 0x03, 0xFF                          @ -2
#endif

    .global np_Msg_SuperDemo_32
np_Msg_SuperDemo_32:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x03, 0xFC, 0x0E, 0xFD  @ ·32:
    .byte 0x02, 0x02, 0x5F, 0x8F, 0x8B, 0x8F, 0x54, 0x0C  @ 11だんれんさB
    .byte 0x0D, 0xFF                                      @ C
#else
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x03, 0xFC, 0x0E, 0xFD  @ ·32:
    .byte 0x8B, 0x8F, 0x54, 0x3F, 0x02, 0x02, 0x0C, 0xFC  @ れんさ 11B
    .byte 0x11, 0xFD, 0x04, 0xFF                          @ -3
#endif

    .global np_Msg_SuperDemo_33
np_Msg_SuperDemo_33:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x04, 0xFC, 0x0E, 0xFD  @ ·33:
    .byte 0x68, 0x45, 0x57, 0x50, 0x56, 0x0B, 0x3F, 0x3F  @ どうじけしA
    .byte 0x3F, 0xFF                                      @
#else
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x04, 0xFC, 0x0E, 0xFD  @ ·33:
    .byte 0x68, 0x45, 0x57, 0x50, 0x56, 0x3F, 0x02, 0x02  @ どうじけし 11
    .byte 0x0B, 0xFF                                      @ A
#endif

    .global np_Msg_SuperDemo_34
np_Msg_SuperDemo_34:
#if VERSION == 0
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x05, 0xFC, 0x0E, 0xFD  @ ·34:
    .byte 0x68, 0x45, 0x57, 0x50, 0x56, 0x0C, 0x3F, 0x3F  @ どうじけしB
    .byte 0x3F, 0xFF                                      @
#else
    .byte 0xFC, 0x0C, 0xFD, 0x04, 0x05, 0xFC, 0x0E, 0xFD  @ ·34:
    .byte 0x68, 0x45, 0x57, 0x50, 0x56, 0x3F, 0x02, 0x02  @ どうじけし 11
    .byte 0x0C, 0xFF                                      @ B
#endif

    .global np_Msg_SleepMode
np_Msg_SleepMode:
    .byte 0xEE, 0x02
    .byte 0xFD, 0xA8, 0xD9, 0xFC, 0x06, 0xFD, 0xC6, 0xD1  @ スリープモ
    .byte 0xFC, 0x06, 0xFD, 0xB8, 0x6A, 0x3F, 0x6E, 0x43  @ ードに はい
    .byte 0x89, 0x7D, 0x58, 0xFC, 0x0D, 0xFA, 0xFA        @ ります。
    .byte 0xEE, 0x05
    .byte 0xFA, 0xFD, 0xA8, 0xD9, 0xFC, 0x06, 0xFD, 0xC6  @ スリープ
    .byte 0xD1, 0xFC, 0x06, 0xFD, 0xB8, 0x4A, 0x88, 0x3F  @ モードから
    .byte 0x81, 0x68, 0x8A, 0x67, 0x4C, 0x6E, 0xFA, 0xFA  @ もどるときは
    .byte 0xEE, 0x05
    .byte 0xFD, 0x1D, 0x0F, 0x16, 0x0F, 0x0D, 0x1E, 0xFC  @ SELECT
    .byte 0x10, 0xFD, 0x16, 0xFC, 0x10, 0xFD, 0x1C, 0xCB  @ +L+Rボ
    .byte 0xAE, 0xDF, 0x8E, 0xFA, 0xFA                    @ タンを
    .byte 0xEE, 0x05
    .byte 0xFD, 0x68, 0x45, 0x57, 0x6A, 0x3F, 0x49, 0x56  @ どうじに おし
    .byte 0x65, 0x4A, 0x88, 0x3F, 0x6E, 0x69, 0x56, 0x65  @ てから はなして
    .byte 0x3F, 0x4E, 0x5F, 0x54, 0x43, 0xFC, 0x0D, 0xFA  @  ください。
    .byte 0xFA, 0xFA                                      @
    .byte 0xEE, 0x0F
    .byte 0xFD, 0x5C, 0x8B, 0x66, 0x6E, 0x3F, 0x0B, 0xCB  @ それでは Aボ
    .byte 0xAE, 0xDF, 0x8E, 0x3F, 0x49, 0x56, 0x65, 0x4E  @ タンを おしてく
    .byte 0x5F, 0x54, 0x43, 0xFC, 0x0D, 0xFF              @ ださい。

    .global GLV_ED_Kind
GLV_ED_Kind:
.byte 0x05 @ part of GLV_ED_Kind

    .section .rodata2

    .global haba.39
haba.39:
   .2byte 8, 0x10, 0x20, 0x40, 0x10, 0x20, 0x20, 0x40, 8, 8, 0x10, 0x20, 0, 0, 0, 0

    .global ponagb2m_obj_Acl
ponagb2m_obj_Acl:
    .incbin "ponagb2m_obj.acl"

    .global ponagb2m_obj_Acg_LZ
ponagb2m_obj_Acg_LZ:
    .incbin "ponagb2m_obj.acg.lz"

    .global ponagb2m_bga_Acl
ponagb2m_bga_Acl:
    .incbin "ponagb2m_bga.acl"

    .global ponagb2m_bga_Acg_LZ
ponagb2m_bga_Acg_LZ:
    .incbin "ponagb2m_bga.acg.lz"

    .global ponagb2m_kabe_Asc_LZ
ponagb2m_kabe_Asc_LZ:
    .incbin "ponagb2m_kabe.asc.lz"

    .global ponagb2m_frame_Asc_LZ
ponagb2m_frame_Asc_LZ:
    .incbin "ponagb2m_frame.asc.lz"

    .global ponagb2m_dark_Asc_LZ
ponagb2m_dark_Asc_LZ:
    .incbin "ponagb2m_dark.asc.lz"

    .global ponagb2m_gameover_Asc_LZ
ponagb2m_gameover_Asc_LZ:
    .incbin "ponagb2m_gameover.asc.lz"

    .global ponagb2m_pause_Asc_LZ
ponagb2m_pause_Asc_LZ:
    .incbin "ponagb2m_pause.asc.lz"

    .global ponagb2m_select_Asc_LZ
ponagb2m_select_Asc_LZ:
    .incbin "ponagb2m_select.asc.lz"

    .global ponagb2m_sel_help_Asc_LZ
ponagb2m_sel_help_Asc_LZ:
    .incbin "ponagb2m_sel_help.asc.lz"

    .global ponagb2m_sel_pupu_Asc_LZ
ponagb2m_sel_pupu_Asc_LZ:
    .incbin "ponagb2m_sel_pupu.asc.lz"

    .global np1p_game_frame_Asc_OjamaLv
np1p_game_frame_Asc_OjamaLv:
    .incbin "np1p_game_frame/OjamaLv.asc"

    .align 2
    .global np1p_game_frame_Asc_SpeedLv
np1p_game_frame_Asc_SpeedLv:
    .incbin "np1p_game_frame/SpeedLv.asc"

    .align 2
    .global np1p_game_frame_Asc_SLOW1
np1p_game_frame_Asc_SLOW1:
    .incbin "np1p_game_frame/SLOW1.asc"

    .global np1p_game_frame_Asc_SLOW2
np1p_game_frame_Asc_SLOW2:
    .incbin "np1p_game_frame/SLOW2.asc"

    .global np1p_game_frame_Asc_SLOW3
np1p_game_frame_Asc_SLOW3:
    .incbin "np1p_game_frame/SLOW3.asc"

    .global np1p_game_frame_Asc_EASY
np1p_game_frame_Asc_EASY:
    .incbin "np1p_game_frame/EASY.asc"

    .global np1p_game_frame_Asc_NORMAL
np1p_game_frame_Asc_NORMAL:
    .incbin "np1p_game_frame/NORMAL.asc"

    .global np1p_game_frame_Asc_HARD
np1p_game_frame_Asc_HARD:
    .incbin "np1p_game_frame/HARD.asc"

    .global np1p_game_frame_Asc_S_HARD
np1p_game_frame_Asc_S_HARD:
    .incbin "np1p_game_frame/S_HARD.asc"

    .global np1p_game_frame_Asc_V_HARD
np1p_game_frame_Asc_V_HARD:
    .incbin "np1p_game_frame/V_HARD.asc"

    .align 2
    .global ponagb2m_kabe_Acl_Nml
ponagb2m_kabe_Acl_Nml:
    .incbin "ponagb2m_kabe/Nml.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blk
ponagb2m_kabe_Acl_Blk:
    .incbin "ponagb2m_kabe/Blk.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Red
ponagb2m_kabe_Acl_Red:
    .incbin "ponagb2m_kabe/Red.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Grn
ponagb2m_kabe_Acl_Grn:
    .incbin "ponagb2m_kabe/Grn.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blu
ponagb2m_kabe_Acl_Blu:
    .incbin "ponagb2m_kabe/Blu.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Ylw
ponagb2m_kabe_Acl_Ylw:
    .incbin "ponagb2m_kabe/Ylw.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Mur
ponagb2m_kabe_Acl_Mur:
    .incbin "ponagb2m_kabe/Mur.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Miz
ponagb2m_kabe_Acl_Miz:
    .incbin "ponagb2m_kabe/Miz.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Wht
ponagb2m_kabe_Acl_Wht:
    .incbin "ponagb2m_kabe/Wht.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blk1
ponagb2m_kabe_Acl_Blk1:
    .incbin "ponagb2m_kabe/Blk1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Red1
ponagb2m_kabe_Acl_Red1:
    .incbin "ponagb2m_kabe/Red1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Grn1
ponagb2m_kabe_Acl_Grn1:
    .incbin "ponagb2m_kabe/Grn1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blu1
ponagb2m_kabe_Acl_Blu1:
    .incbin "ponagb2m_kabe/Blu1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Ylw1
ponagb2m_kabe_Acl_Ylw1:
    .incbin "ponagb2m_kabe/Ylw1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Mur1
ponagb2m_kabe_Acl_Mur1:
    .incbin "ponagb2m_kabe/Mur1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Miz1
ponagb2m_kabe_Acl_Miz1:
    .incbin "ponagb2m_kabe/Miz1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Wht1
ponagb2m_kabe_Acl_Wht1:
    .incbin "ponagb2m_kabe/Wht1.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blk2
ponagb2m_kabe_Acl_Blk2:
    .incbin "ponagb2m_kabe/Blk2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Red2
ponagb2m_kabe_Acl_Red2:
    .incbin "ponagb2m_kabe/Red2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Grn2
ponagb2m_kabe_Acl_Grn2:
    .incbin "ponagb2m_kabe/Grn2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Blu2
ponagb2m_kabe_Acl_Blu2:
    .incbin "ponagb2m_kabe/Blu2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Ylw2
ponagb2m_kabe_Acl_Ylw2:
    .incbin "ponagb2m_kabe/Ylw2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Mur2
ponagb2m_kabe_Acl_Mur2:
    .incbin "ponagb2m_kabe/Mur2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Miz2
ponagb2m_kabe_Acl_Miz2:
    .incbin "ponagb2m_kabe/Miz2.acl"

    .align 2
    .global ponagb2m_kabe_Acl_Wht2
ponagb2m_kabe_Acl_Wht2:
    .incbin "ponagb2m_kabe/Wht2.acl"

    .align 2
    .global ponagb2m_GAME_OVER_CLC_Acl
ponagb2m_GAME_OVER_CLC_Acl:
    .incbin "ponagb2m_GAME_OVER_CLC.acl"

    .global ponagb2m_title_obj_Acl
ponagb2m_title_obj_Acl:
    .incbin "ponagb2m_title_obj.acl"

    .global ponagb2m_title_obj_Acg_LZ
ponagb2m_title_obj_Acg_LZ:
    .incbin "ponagb2m_title_obj.acg.lz"

    .global ponagb2m_title_Acl
ponagb2m_title_Acl:
    .incbin "ponagb2m_title.acl"

    .global ponagb2m_title_Acg_LZ
ponagb2m_title_Acg_LZ:
    .incbin "ponagb2m_title.acg.lz"

    .global ponagb2m_title_Asc_LZ
ponagb2m_title_Asc_LZ:
    .incbin "ponagb2m_title.asc.lz"
