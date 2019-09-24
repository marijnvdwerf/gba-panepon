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
    baserom 0x166A7, 0x3

    .global GLV_ED_SeriKind
GLV_ED_SeriKind:
    baserom 0x166AA, 0x3

    .global GLV_ED_FlashNum
GLV_ED_FlashNum:
    baserom 0x166AD, 0x3

    .global GLV_ED_BikuFace
GLV_ED_BikuFace:
    baserom 0x166B0, 0x3

    .global GLV_ED_BakuKan
GLV_ED_BakuKan:
    baserom 0x166B3, 0x3

    .global GLV_ED_RakkaWait
GLV_ED_RakkaWait:
    baserom 0x166B6, 0x4

    .global GLV_ED_JoshoFrame
GLV_ED_JoshoFrame:
    baserom 0x166BA, 0xC8

    .global GLV_ED_LevelUp
GLV_ED_LevelUp:
    baserom 0x16782, 0x64

    .global GLV_ED_DojiSTm_doji00
GLV_ED_DojiSTm_doji00:
    baserom 0x167E6, 0x6

    .global GLV_ED_DojiSTm_doji04
GLV_ED_DojiSTm_doji04:
    baserom 0x167EC, 0x6

    .global GLV_ED_DojiSTm_doji05
GLV_ED_DojiSTm_doji05:
    baserom 0x167F2, 0x6

    .global GLV_ED_DojiSTm_doji06
GLV_ED_DojiSTm_doji06:
    baserom 0x167F8, 0x6

    .global GLV_ED_DojiSTm_doji07
GLV_ED_DojiSTm_doji07:
    baserom 0x167FE, 0x6

    .global GLV_ED_DojiSTm_doji08
GLV_ED_DojiSTm_doji08:
    baserom 0x16804, 0x6

    .global GLV_ED_DojiSTm_doji09
GLV_ED_DojiSTm_doji09:
    baserom 0x1680A, 0x6

    .global GLV_ED_DojiSTm_doji10
GLV_ED_DojiSTm_doji10:
    baserom 0x16810, 0x6

    .global GLV_ED_DojiSTm_doji11
GLV_ED_DojiSTm_doji11:
    baserom 0x16816, 0x6

    .global GLV_ED_DojiSTm_doji12
GLV_ED_DojiSTm_doji12:
    baserom 0x1681C, 0x6

    .global GLV_ED_DojiSTm_doji13
GLV_ED_DojiSTm_doji13:
    baserom 0x16822, 0x6

    .global GLV_ED_DojiSTm_doji14
GLV_ED_DojiSTm_doji14:
    baserom 0x16828, 0x6

    .global GLV_ED_DojiSTm_doji15
GLV_ED_DojiSTm_doji15:
    baserom 0x1682E, 0x6

    .global GLV_ED_DojiSTm_doji16
GLV_ED_DojiSTm_doji16:
    baserom 0x16834, 0x6

    .global GLV_ED_DojiSTm_doji17
GLV_ED_DojiSTm_doji17:
    baserom 0x1683A, 0x6

    .global GLV_ED_DojiSTm_doji18
GLV_ED_DojiSTm_doji18:
    baserom 0x16840, 0x6

    .global GLV_ED_DojiSTm_doji19
GLV_ED_DojiSTm_doji19:
    baserom 0x16846, 0x6

    .global GLV_ED_DojiSTm_doji20
GLV_ED_DojiSTm_doji20:
    baserom 0x1684C, 0x6

    .global GLV_ED_DojiSTm_doji21
GLV_ED_DojiSTm_doji21:
    baserom 0x16852, 0x6

    .global GLV_ED_DojiSTm_doji22
GLV_ED_DojiSTm_doji22:
    baserom 0x16858, 0x6

    .global GLV_ED_DojiSTm_doji23
GLV_ED_DojiSTm_doji23:
    baserom 0x1685E, 0x6

    .global GLV_ED_DojiSTm_doji24
GLV_ED_DojiSTm_doji24:
    baserom 0x16864, 0x6

    .global GLV_ED_DojiSTm_doji25
GLV_ED_DojiSTm_doji25:
    baserom 0x1686A, 0x6

    .global GLV_ED_DojiSTm_doji26
GLV_ED_DojiSTm_doji26:
    baserom 0x16870, 0x6

    .global GLV_ED_DojiSTm_doji27
GLV_ED_DojiSTm_doji27:
    baserom 0x16876, 0x6

    .global GLV_ED_DojiSTm_doji28
GLV_ED_DojiSTm_doji28:
    baserom 0x1687C, 0x6

    .global GLV_ED_DojiSTm_doji29
GLV_ED_DojiSTm_doji29:
    baserom 0x16882, 0x6

    .global GLV_ED_DojiSTm_doji30
GLV_ED_DojiSTm_doji30:
    baserom 0x16888, 0x8

    .global GLV_ED_DojiSTime
GLV_ED_DojiSTime:
    .4byte GLV_ED_DojiSTm_doji00
    .4byte GLV_ED_DojiSTm_doji00
    .4byte GLV_ED_DojiSTm_doji00
    .4byte GLV_ED_DojiSTm_doji00
    .4byte GLV_ED_DojiSTm_doji04
    .4byte GLV_ED_DojiSTm_doji05
    .4byte GLV_ED_DojiSTm_doji06
    .4byte GLV_ED_DojiSTm_doji07
    .4byte GLV_ED_DojiSTm_doji08
    .4byte GLV_ED_DojiSTm_doji09
    .4byte GLV_ED_DojiSTm_doji10
    .4byte GLV_ED_DojiSTm_doji11
    .4byte GLV_ED_DojiSTm_doji12
    .4byte GLV_ED_DojiSTm_doji13
    .4byte GLV_ED_DojiSTm_doji14
    .4byte GLV_ED_DojiSTm_doji15
    .4byte GLV_ED_DojiSTm_doji16
    .4byte GLV_ED_DojiSTm_doji17
    .4byte GLV_ED_DojiSTm_doji18
    .4byte GLV_ED_DojiSTm_doji19
    .4byte GLV_ED_DojiSTm_doji20
    .4byte GLV_ED_DojiSTm_doji21
    .4byte GLV_ED_DojiSTm_doji22
    .4byte GLV_ED_DojiSTm_doji23
    .4byte GLV_ED_DojiSTm_doji24
    .4byte GLV_ED_DojiSTm_doji25
    .4byte GLV_ED_DojiSTm_doji26
    .4byte GLV_ED_DojiSTm_doji27
    .4byte GLV_ED_DojiSTm_doji28
    .4byte GLV_ED_DojiSTm_doji29
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30
    .4byte GLV_ED_DojiSTm_doji30

    .global GLV_ED_RensaSTim_chain00
GLV_ED_RensaSTim_chain00:
    baserom 0x169D0, 0x6

    .global GLV_ED_RensaSTim_chain02
GLV_ED_RensaSTim_chain02:
    baserom 0x169D6, 0x6

    .global GLV_ED_RensaSTim_chain03
GLV_ED_RensaSTim_chain03:
    baserom 0x169DC, 0x6

    .global GLV_ED_RensaSTim_chain04
GLV_ED_RensaSTim_chain04:
    baserom 0x169E2, 0x6

    .global GLV_ED_RensaSTim_chain05
GLV_ED_RensaSTim_chain05:
    baserom 0x169E8, 0x6

    .global GLV_ED_RensaSTim_chain06
GLV_ED_RensaSTim_chain06:
    baserom 0x169EE, 0x6

    .global GLV_ED_RensaSTim_chain07
GLV_ED_RensaSTim_chain07:
    baserom 0x169F4, 0x6

    .global GLV_ED_RensaSTim_chain08
GLV_ED_RensaSTim_chain08:
    baserom 0x169FA, 0x6

    .global GLV_ED_RensaSTim_chain09
GLV_ED_RensaSTim_chain09:
    baserom 0x16A00, 0x6

    .global GLV_ED_RensaSTim_chain10
GLV_ED_RensaSTim_chain10:
    baserom 0x16A06, 0x6

    .global GLV_ED_RensaSTim_chain11
GLV_ED_RensaSTim_chain11:
    baserom 0x16A0C, 0x6

    .global GLV_ED_RensaSTim_chain12
GLV_ED_RensaSTim_chain12:
    baserom 0x16A12, 0x6

    .global GLV_ED_RensaSTim_chain13
GLV_ED_RensaSTim_chain13:
    baserom 0x16A18, 0x8

    .global GLV_ED_RensaSTime
GLV_ED_RensaSTime:
    .4byte GLV_ED_RensaSTim_chain00
    .4byte GLV_ED_RensaSTim_chain00
    .4byte GLV_ED_RensaSTim_chain02
    .4byte GLV_ED_RensaSTim_chain03
    .4byte GLV_ED_RensaSTim_chain04
    .4byte GLV_ED_RensaSTim_chain05
    .4byte GLV_ED_RensaSTim_chain06
    .4byte GLV_ED_RensaSTim_chain07
    .4byte GLV_ED_RensaSTim_chain08
    .4byte GLV_ED_RensaSTim_chain09
    .4byte GLV_ED_RensaSTim_chain10
    .4byte GLV_ED_RensaSTim_chain11
    .4byte GLV_ED_RensaSTim_chain12
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13
    .4byte GLV_ED_RensaSTim_chain13

    .global GLV_ED_DangerDojiSTim_doji00
GLV_ED_DangerDojiSTim_doji00:
    baserom 0x16A74, 0x6

    .global GLV_ED_DangerDojiSTim_doji04
GLV_ED_DangerDojiSTim_doji04:
    baserom 0x16A7A, 0x6

    .global GLV_ED_DangerDojiSTim_doji09
GLV_ED_DangerDojiSTim_doji09:
    baserom 0x16A80, 0x6

    .global GLV_ED_DangerDojiSTim_doji11
GLV_ED_DangerDojiSTim_doji11:
    baserom 0x16A86, 0x6

    .global GLV_ED_DangerDojiSTim_doji16
GLV_ED_DangerDojiSTim_doji16:
    baserom 0x16A8C, 0x8

    .global GLV_ED_DangerDojiSTime
GLV_ED_DangerDojiSTime:
    .4byte GLV_ED_DangerDojiSTim_doji00
    .4byte GLV_ED_DangerDojiSTim_doji00
    .4byte GLV_ED_DangerDojiSTim_doji00
    .4byte GLV_ED_DangerDojiSTim_doji00
    .4byte GLV_ED_DangerDojiSTim_doji04
    .4byte GLV_ED_DangerDojiSTim_doji04
    .4byte GLV_ED_DangerDojiSTim_doji04
    .4byte GLV_ED_DangerDojiSTim_doji04
    .4byte GLV_ED_DangerDojiSTim_doji04
    .4byte GLV_ED_DangerDojiSTim_doji09
    .4byte GLV_ED_DangerDojiSTim_doji09
    .4byte GLV_ED_DangerDojiSTim_doji11
    .4byte GLV_ED_DangerDojiSTim_doji11
    .4byte GLV_ED_DangerDojiSTim_doji11
    .4byte GLV_ED_DangerDojiSTim_doji11
    .4byte GLV_ED_DangerDojiSTim_doji11
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16
    .4byte GLV_ED_DangerDojiSTim_doji16

    .global GLV_ED_DangerRensaSTim_chain00
GLV_ED_DangerRensaSTim_chain00:
    baserom 0x16BD4, 0x6

    .global GLV_ED_DangerRensaSTim_chain02
GLV_ED_DangerRensaSTim_chain02:
    baserom 0x16BDA, 0x6

    .global GLV_ED_DangerRensaSTim_chain03
GLV_ED_DangerRensaSTim_chain03:
    baserom 0x16BE0, 0x6

    .global GLV_ED_DangerRensaSTim_chain04
GLV_ED_DangerRensaSTim_chain04:
    baserom 0x16BE6, 0x6

    .global GLV_ED_DangerRensaSTim_chain05
GLV_ED_DangerRensaSTim_chain05:
    baserom 0x16BEC, 0x8

    .global GLV_ED_DangerRensaSTime
GLV_ED_DangerRensaSTime:
    .4byte GLV_ED_DangerRensaSTim_chain00
    .4byte GLV_ED_DangerRensaSTim_chain00
    .4byte GLV_ED_DangerRensaSTim_chain02
    .4byte GLV_ED_DangerRensaSTim_chain03
    .4byte GLV_ED_DangerRensaSTim_chain04
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05
    .4byte GLV_ED_DangerRensaSTim_chain05

    .global GLV_ST_FlashNum
GLV_ST_FlashNum:
    baserom 0x16C48, 0x7

    .global GLV_ST_BikuFace
GLV_ST_BikuFace:
    baserom 0x16C4F, 0x7

    .global GLV_ST_BakuKan
GLV_ST_BakuKan:
    baserom 0x16C56, 0x7

    .global GLV_ST_RakkaWait
GLV_ST_RakkaWait:
    baserom 0x16C5D, 0x7

    .global GLV_ST_SeriKind
GLV_ST_SeriKind:
    baserom 0x16C64, 0x7

    .global sm_strtspl_rnd1
sm_strtspl_rnd1:
    baserom 0x16C6B, 0x5

    .global sm_strtspl_rnd2
sm_strtspl_rnd2:
    baserom 0x16C70, 0x5

    .global sm_strtspl_rnd3
sm_strtspl_rnd3:
    baserom 0x16C75, 0x5

    .global sm_strtspl_rnd4
sm_strtspl_rnd4:
    baserom 0x16C7A, 0x5

    .global sm_strtspl_rnd5
sm_strtspl_rnd5:
    baserom 0x16C7F, 0x5

    .global sm_strtspl_rnd6
sm_strtspl_rnd6:
    baserom 0x16C84, 0x8

    .global GLV_ST_StartSpeed
GLV_ST_StartSpeed:
    .4byte sm_strtspl_rnd1
    .4byte sm_strtspl_rnd2
    .4byte sm_strtspl_rnd3
    .4byte sm_strtspl_rnd4
    .4byte sm_strtspl_rnd5
    .4byte sm_strtspl_rnd6

    .global sm_pnlkind_rnd1
sm_pnlkind_rnd1:
    baserom 0x16CA4, 0x5

    .global sm_pnlkind_rnd4
sm_pnlkind_rnd4:
    baserom 0x16CA9, 0x7

    .global GLV_ST_Kind
GLV_ST_Kind:
    .4byte sm_pnlkind_rnd1
    .4byte sm_pnlkind_rnd1
    .4byte sm_pnlkind_rnd1
    .4byte sm_pnlkind_rnd4
    .4byte sm_pnlkind_rnd4
    .4byte sm_pnlkind_rnd4

    .global sm_initpnls_rnd1
sm_initpnls_rnd1:
    baserom 0x16CC8, 0x5

    .global sm_initpnls_rnd2
sm_initpnls_rnd2:
    baserom 0x16CCD, 0x5

    .global sm_initpnls_rnd3
sm_initpnls_rnd3:
    baserom 0x16CD2, 0x5

    .global sm_initpnls_rnd4
sm_initpnls_rnd4:
    baserom 0x16CD7, 0x5

    .global GLV_ST_StartPanel
GLV_ST_StartPanel:
    .4byte sm_initpnls_rnd1
    .4byte sm_initpnls_rnd2
    .4byte sm_initpnls_rnd3
    .4byte sm_initpnls_rnd4
    .4byte sm_initpnls_rnd3
    .4byte sm_initpnls_rnd4

    .global sm_clrline_rnd1
sm_clrline_rnd1:
    baserom 0x16CF4, 0x5

    .global sm_clrline_rnd2
sm_clrline_rnd2:
    baserom 0x16CF9, 0x5

    .global sm_clrline_rnd3
sm_clrline_rnd3:
    baserom 0x16CFE, 0x5

    .global sm_clrline_rnd4
sm_clrline_rnd4:
    baserom 0x16D03, 0x5

    .global sm_clrline_rnd5
sm_clrline_rnd5:
    baserom 0x16D08, 0x5

    .global sm_clrline_rnd6
sm_clrline_rnd6:
    baserom 0x16D0D, 0x7

    .global GLV_ST_ClearLine
GLV_ST_ClearLine:
    .4byte sm_clrline_rnd1
    .4byte sm_clrline_rnd2
    .4byte sm_clrline_rnd3
    .4byte sm_clrline_rnd4
    .4byte sm_clrline_rnd5
    .4byte sm_clrline_rnd6

    .global GLV_ST_LevelUp
GLV_ST_LevelUp:
    baserom 0x16D2C, 0xC6

    .global GLV_ST_DojiSTim_doji03
GLV_ST_DojiSTim_doji03:
    baserom 0x16DF2, 0xE

    .global GLV_ST_DojiSTim_doji04
GLV_ST_DojiSTim_doji04:
    baserom 0x16E00, 0xE

    .global GLV_ST_DojiSTim_doji05
GLV_ST_DojiSTim_doji05:
    baserom 0x16E0E, 0xE

    .global GLV_ST_DojiSTim_doji06
GLV_ST_DojiSTim_doji06:
    baserom 0x16E1C, 0xE

    .global GLV_ST_DojiSTim_doji07
GLV_ST_DojiSTim_doji07:
    baserom 0x16E2A, 0xE

    .global GLV_ST_DojiSTim_doji08
GLV_ST_DojiSTim_doji08:
    baserom 0x16E38, 0xE

    .global GLV_ST_DojiSTim_doji09
GLV_ST_DojiSTim_doji09:
    baserom 0x16E46, 0xE

    .global GLV_ST_DojiSTim_doji10
GLV_ST_DojiSTim_doji10:
    baserom 0x16E54, 0xE

    .global GLV_ST_DojiSTim_doji11
GLV_ST_DojiSTim_doji11:
    baserom 0x16E62, 0xE

    .global GLV_ST_DojiSTim_doji12
GLV_ST_DojiSTim_doji12:
    baserom 0x16E70, 0xE

    .global GLV_ST_DojiSTim_doji13
GLV_ST_DojiSTim_doji13:
    baserom 0x16E7E, 0xE

    .global GLV_ST_DojiSTim_doji14
GLV_ST_DojiSTim_doji14:
    baserom 0x16E8C, 0xE

    .global GLV_ST_DojiSTim_doji15
GLV_ST_DojiSTim_doji15:
    baserom 0x16E9A, 0xE

    .global GLV_ST_DojiSTim_doji16
GLV_ST_DojiSTim_doji16:
    baserom 0x16EA8, 0xE

    .global GLV_ST_DojiSTim_doji17
GLV_ST_DojiSTim_doji17:
    baserom 0x16EB6, 0xE

    .global GLV_ST_DojiSTim_doji18
GLV_ST_DojiSTim_doji18:
    baserom 0x16EC4, 0xE

    .global GLV_ST_DojiSTim_doji19
GLV_ST_DojiSTim_doji19:
    baserom 0x16ED2, 0xE

    .global GLV_ST_DojiSTim_doji20
GLV_ST_DojiSTim_doji20:
    baserom 0x16EE0, 0xE

    .global GLV_ST_DojiSTim_doji21
GLV_ST_DojiSTim_doji21:
    baserom 0x16EEE, 0xE

    .global GLV_ST_DojiSTim_doji22
GLV_ST_DojiSTim_doji22:
    baserom 0x16EFC, 0xE

    .global GLV_ST_DojiSTim_doji23
GLV_ST_DojiSTim_doji23:
    baserom 0x16F0A, 0xE

    .global GLV_ST_DojiSTim_doji24
GLV_ST_DojiSTim_doji24:
    baserom 0x16F18, 0xE

    .global GLV_ST_DojiSTim_doji25
GLV_ST_DojiSTim_doji25:
    baserom 0x16F26, 0xE

    .global GLV_ST_DojiSTim_doji26
GLV_ST_DojiSTim_doji26:
    baserom 0x16F34, 0xE

    .global GLV_ST_DojiSTim_doji27
GLV_ST_DojiSTim_doji27:
    baserom 0x16F42, 0xE

    .global GLV_ST_DojiSTim_doji28
GLV_ST_DojiSTim_doji28:
    baserom 0x16F50, 0xE

    .global GLV_ST_DojiSTim_doji29
GLV_ST_DojiSTim_doji29:
    baserom 0x16F5E, 0xE

    .global GLV_ST_DojiSTim_doji30
GLV_ST_DojiSTim_doji30:
    baserom 0x16F6C, 0x10

    .global GLV_ST_DojiSTime
GLV_ST_DojiSTime:
    .4byte GLV_ST_DojiSTim_doji03
    .4byte GLV_ST_DojiSTim_doji03
    .4byte GLV_ST_DojiSTim_doji03
    .4byte GLV_ST_DojiSTim_doji03
    .4byte GLV_ST_DojiSTim_doji04
    .4byte GLV_ST_DojiSTim_doji05
    .4byte GLV_ST_DojiSTim_doji06
    .4byte GLV_ST_DojiSTim_doji07
    .4byte GLV_ST_DojiSTim_doji08
    .4byte GLV_ST_DojiSTim_doji09
    .4byte GLV_ST_DojiSTim_doji10
    .4byte GLV_ST_DojiSTim_doji11
    .4byte GLV_ST_DojiSTim_doji12
    .4byte GLV_ST_DojiSTim_doji13
    .4byte GLV_ST_DojiSTim_doji14
    .4byte GLV_ST_DojiSTim_doji15
    .4byte GLV_ST_DojiSTim_doji16
    .4byte GLV_ST_DojiSTim_doji17
    .4byte GLV_ST_DojiSTim_doji18
    .4byte GLV_ST_DojiSTim_doji19
    .4byte GLV_ST_DojiSTim_doji20
    .4byte GLV_ST_DojiSTim_doji21
    .4byte GLV_ST_DojiSTim_doji22
    .4byte GLV_ST_DojiSTim_doji23
    .4byte GLV_ST_DojiSTim_doji24
    .4byte GLV_ST_DojiSTim_doji25
    .4byte GLV_ST_DojiSTim_doji26
    .4byte GLV_ST_DojiSTim_doji27
    .4byte GLV_ST_DojiSTim_doji28
    .4byte GLV_ST_DojiSTim_doji29
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30
    .4byte GLV_ST_DojiSTim_doji30

    .global GLV_ST_RensaSTim_chain00
GLV_ST_RensaSTim_chain00:
    baserom 0x170BC, 0xE

    .global GLV_ST_RensaSTim_chain02
GLV_ST_RensaSTim_chain02:
    baserom 0x170CA, 0xE

    .global GLV_ST_RensaSTim_chain03
GLV_ST_RensaSTim_chain03:
    baserom 0x170D8, 0xE

    .global GLV_ST_RensaSTim_chain04
GLV_ST_RensaSTim_chain04:
    baserom 0x170E6, 0xE

    .global GLV_ST_RensaSTim_chain05
GLV_ST_RensaSTim_chain05:
    baserom 0x170F4, 0xE

    .global GLV_ST_RensaSTim_chain06
GLV_ST_RensaSTim_chain06:
    baserom 0x17102, 0xE

    .global GLV_ST_RensaSTim_chain07
GLV_ST_RensaSTim_chain07:
    baserom 0x17110, 0xE

    .global GLV_ST_RensaSTim_chain08
GLV_ST_RensaSTim_chain08:
    baserom 0x1711E, 0xE

    .global GLV_ST_RensaSTim_chain09
GLV_ST_RensaSTim_chain09:
    baserom 0x1712C, 0xE

    .global GLV_ST_RensaSTim_chain10
GLV_ST_RensaSTim_chain10:
    baserom 0x1713A, 0xE

    .global GLV_ST_RensaSTim_chain11
GLV_ST_RensaSTim_chain11:
    baserom 0x17148, 0xE

    .global GLV_ST_RensaSTim_chain12
GLV_ST_RensaSTim_chain12:
    baserom 0x17156, 0xE

    .global GLV_ST_RensaSTim_chain13
GLV_ST_RensaSTim_chain13:
    baserom 0x17164, 0x10

    .global GLV_ST_RensaSTime
GLV_ST_RensaSTime:
    .4byte GLV_ST_RensaSTim_chain00
    .4byte GLV_ST_RensaSTim_chain00
    .4byte GLV_ST_RensaSTim_chain02
    .4byte GLV_ST_RensaSTim_chain03
    .4byte GLV_ST_RensaSTim_chain04
    .4byte GLV_ST_RensaSTim_chain05
    .4byte GLV_ST_RensaSTim_chain06
    .4byte GLV_ST_RensaSTim_chain07
    .4byte GLV_ST_RensaSTim_chain08
    .4byte GLV_ST_RensaSTim_chain09
    .4byte GLV_ST_RensaSTim_chain10
    .4byte GLV_ST_RensaSTim_chain11
    .4byte GLV_ST_RensaSTim_chain12
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13
    .4byte GLV_ST_RensaSTim_chain13

    .global GLV_ST_DangerDojiSTim_doji03
GLV_ST_DangerDojiSTim_doji03:
    baserom 0x171C8, 0xE

    .global GLV_ST_DangerDojiSTim_doji04
GLV_ST_DangerDojiSTim_doji04:
    baserom 0x171D6, 0xE

    .global GLV_ST_DangerDojiSTim_doji09
GLV_ST_DangerDojiSTim_doji09:
    baserom 0x171E4, 0xE

    .global GLV_ST_DangerDojiSTim_doji11
GLV_ST_DangerDojiSTim_doji11:
    baserom 0x171F2, 0xE

    .global GLV_ST_DangerDojiSTim_doji16
GLV_ST_DangerDojiSTim_doji16:
    baserom 0x17200, 0x10

    .global GLV_ST_DangerDojiSTime
GLV_ST_DangerDojiSTime:
    .4byte GLV_ST_DangerDojiSTim_doji03
    .4byte GLV_ST_DangerDojiSTim_doji03
    .4byte GLV_ST_DangerDojiSTim_doji03
    .4byte GLV_ST_DangerDojiSTim_doji03
    .4byte GLV_ST_DangerDojiSTim_doji04
    .4byte GLV_ST_DangerDojiSTim_doji04
    .4byte GLV_ST_DangerDojiSTim_doji04
    .4byte GLV_ST_DangerDojiSTim_doji04
    .4byte GLV_ST_DangerDojiSTim_doji04
    .4byte GLV_ST_DangerDojiSTim_doji09
    .4byte GLV_ST_DangerDojiSTim_doji09
    .4byte GLV_ST_DangerDojiSTim_doji11
    .4byte GLV_ST_DangerDojiSTim_doji11
    .4byte GLV_ST_DangerDojiSTim_doji11
    .4byte GLV_ST_DangerDojiSTim_doji11
    .4byte GLV_ST_DangerDojiSTim_doji11
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16
    .4byte GLV_ST_DangerDojiSTim_doji16

    .global GLV_ST_DangerRensaSTim_chain00
GLV_ST_DangerRensaSTim_chain00:
    baserom 0x17350, 0xE

    .global GLV_ST_DangerRensaSTim_chain02
GLV_ST_DangerRensaSTim_chain02:
    baserom 0x1735E, 0xE

    .global GLV_ST_DangerRensaSTim_chain03
GLV_ST_DangerRensaSTim_chain03:
    baserom 0x1736C, 0xE

    .global GLV_ST_DangerRensaSTim_chain04
GLV_ST_DangerRensaSTim_chain04:
    baserom 0x1737A, 0xE

    .global GLV_ST_DangerRensaSTim_chain05
GLV_ST_DangerRensaSTim_chain05:
    baserom 0x17388, 0x10

    .global GLV_ST_DangerRensaSTime
GLV_ST_DangerRensaSTime:
    .4byte GLV_ST_DangerRensaSTim_chain00
    .4byte GLV_ST_DangerRensaSTim_chain00
    .4byte GLV_ST_DangerRensaSTim_chain02
    .4byte GLV_ST_DangerRensaSTim_chain03
    .4byte GLV_ST_DangerRensaSTim_chain04
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05
    .4byte GLV_ST_DangerRensaSTim_chain05

    .global GLV_VSL_Kind
GLV_VSL_Kind:
    baserom 0x173EC, 0xA

    .global GLV_VSL_Line
GLV_VSL_Line:
    baserom 0x173F6, 0xA

    .global GLV_VS_NopNum
GLV_VS_NopNum:
    baserom 0x17400, 0xA

    .global GLV_VS_Kind
GLV_VS_Kind:
    baserom 0x1740A, 0xA

    .global GLV_VST_Kind
GLV_VST_Kind:
    baserom 0x17414, 0xA

    .global GLV_VS_SeriKind
GLV_VS_SeriKind:
    baserom 0x1741E, 0xA

    .global GLV_VS_FlashNum
GLV_VS_FlashNum:
    baserom 0x17428, 0xA

    .global GLV_VS_BikuFace
GLV_VS_BikuFace:
    baserom 0x17432, 0xA

    .global GLV_VS_BakuKan
GLV_VS_BakuKan:
    baserom 0x1743C, 0xA

    .global GLV_VS_StartSpeed
GLV_VS_StartSpeed:
    baserom 0x17446, 0xA

    .global GLV_VS_BikuPanel
GLV_VS_BikuPanel:
    baserom 0x17450, 0xA

    .global GLV_VS_MaxBikuPanel
GLV_VS_MaxBikuPanel:
    baserom 0x1745A, 0xA

    .global GLV_VS_RakkaWait
GLV_VS_RakkaWait:
    baserom 0x17464, 0xA

    .global GLV_VS_MeltRakkaWait
GLV_VS_MeltRakkaWait:
    baserom 0x1746E, 0xA

    .global GLV_VS_GameOverYuyo
GLV_VS_GameOverYuyo:
    baserom 0x17478, 0xA

    .global GLV_VS_MeltCount
GLV_VS_MeltCount:
    baserom 0x17482, 0xA

    .global GLV_VS_LevelUp
GLV_VS_LevelUp:
    baserom 0x1748C, 0x64

    .global GLV_VS_DojiSTim_doji03
GLV_VS_DojiSTim_doji03:
    baserom 0x174F0, 0x14

    .global GLV_VS_DojiSTim_doji04
GLV_VS_DojiSTim_doji04:
    baserom 0x17504, 0x14

    .global GLV_VS_DojiSTim_doji05
GLV_VS_DojiSTim_doji05:
    baserom 0x17518, 0x14

    .global GLV_VS_DojiSTim_doji06
GLV_VS_DojiSTim_doji06:
    baserom 0x1752C, 0x14

    .global GLV_VS_DojiSTim_doji07
GLV_VS_DojiSTim_doji07:
    baserom 0x17540, 0x14

    .global GLV_VS_DojiSTim_doji08
GLV_VS_DojiSTim_doji08:
    baserom 0x17554, 0x14

    .global GLV_VS_DojiSTim_doji09
GLV_VS_DojiSTim_doji09:
    baserom 0x17568, 0x14

    .global GLV_VS_DojiSTim_doji10
GLV_VS_DojiSTim_doji10:
    baserom 0x1757C, 0x14

    .global GLV_VS_DojiSTim_doji11
GLV_VS_DojiSTim_doji11:
    baserom 0x17590, 0x14

    .global GLV_VS_DojiSTim_doji12
GLV_VS_DojiSTim_doji12:
    baserom 0x175A4, 0x14

    .global GLV_VS_DojiSTim_doji13
GLV_VS_DojiSTim_doji13:
    baserom 0x175B8, 0x14

    .global GLV_VS_DojiSTim_doji14
GLV_VS_DojiSTim_doji14:
    baserom 0x175CC, 0x14

    .global GLV_VS_DojiSTim_doji15
GLV_VS_DojiSTim_doji15:
    baserom 0x175E0, 0x14

    .global GLV_VS_DojiSTim_doji16
GLV_VS_DojiSTim_doji16:
    baserom 0x175F4, 0x14

    .global GLV_VS_DojiSTim_doji17
GLV_VS_DojiSTim_doji17:
    baserom 0x17608, 0x14

    .global GLV_VS_DojiSTim_doji18
GLV_VS_DojiSTim_doji18:
    baserom 0x1761C, 0x14

    .global GLV_VS_DojiSTim_doji19
GLV_VS_DojiSTim_doji19:
    baserom 0x17630, 0x14

    .global GLV_VS_DojiSTim_doji20
GLV_VS_DojiSTim_doji20:
    baserom 0x17644, 0x14

    .global GLV_VS_DojiSTim_doji21
GLV_VS_DojiSTim_doji21:
    baserom 0x17658, 0x14

    .global GLV_VS_DojiSTim_doji22
GLV_VS_DojiSTim_doji22:
    baserom 0x1766C, 0x14

    .global GLV_VS_DojiSTim_doji23
GLV_VS_DojiSTim_doji23:
    baserom 0x17680, 0x14

    .global GLV_VS_DojiSTim_doji24
GLV_VS_DojiSTim_doji24:
    baserom 0x17694, 0x14

    .global GLV_VS_DojiSTim_doji25
GLV_VS_DojiSTim_doji25:
    baserom 0x176A8, 0x14

    .global GLV_VS_DojiSTim_doji26
GLV_VS_DojiSTim_doji26:
    baserom 0x176BC, 0x14

    .global GLV_VS_DojiSTim_doji27
GLV_VS_DojiSTim_doji27:
    baserom 0x176D0, 0x14

    .global GLV_VS_DojiSTim_doji28
GLV_VS_DojiSTim_doji28:
    baserom 0x176E4, 0x14

    .global GLV_VS_DojiSTim_doji29
GLV_VS_DojiSTim_doji29:
    baserom 0x176F8, 0x14

    .global GLV_VS_DojiSTim_doji30
GLV_VS_DojiSTim_doji30:
    baserom 0x1770C, 0x14

    .global GLV_VS_DojiSTime
GLV_VS_DojiSTime:
    .4byte GLV_VS_DojiSTim_doji03
    .4byte GLV_VS_DojiSTim_doji03
    .4byte GLV_VS_DojiSTim_doji03
    .4byte GLV_VS_DojiSTim_doji03
    .4byte GLV_VS_DojiSTim_doji04
    .4byte GLV_VS_DojiSTim_doji05
    .4byte GLV_VS_DojiSTim_doji06
    .4byte GLV_VS_DojiSTim_doji07
    .4byte GLV_VS_DojiSTim_doji08
    .4byte GLV_VS_DojiSTim_doji09
    .4byte GLV_VS_DojiSTim_doji10
    .4byte GLV_VS_DojiSTim_doji11
    .4byte GLV_VS_DojiSTim_doji12
    .4byte GLV_VS_DojiSTim_doji13
    .4byte GLV_VS_DojiSTim_doji14
    .4byte GLV_VS_DojiSTim_doji15
    .4byte GLV_VS_DojiSTim_doji16
    .4byte GLV_VS_DojiSTim_doji17
    .4byte GLV_VS_DojiSTim_doji18
    .4byte GLV_VS_DojiSTim_doji19
    .4byte GLV_VS_DojiSTim_doji20
    .4byte GLV_VS_DojiSTim_doji21
    .4byte GLV_VS_DojiSTim_doji22
    .4byte GLV_VS_DojiSTim_doji23
    .4byte GLV_VS_DojiSTim_doji24
    .4byte GLV_VS_DojiSTim_doji25
    .4byte GLV_VS_DojiSTim_doji26
    .4byte GLV_VS_DojiSTim_doji27
    .4byte GLV_VS_DojiSTim_doji28
    .4byte GLV_VS_DojiSTim_doji29
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30
    .4byte GLV_VS_DojiSTim_doji30

    .global GLV_VS_RensaSTim_chain00
GLV_VS_RensaSTim_chain00:
    baserom 0x17860, 0x14

    .global GLV_VS_RensaSTim_chain02
GLV_VS_RensaSTim_chain02:
    baserom 0x17874, 0x14

    .global GLV_VS_RensaSTim_chain03
GLV_VS_RensaSTim_chain03:
    baserom 0x17888, 0x14

    .global GLV_VS_RensaSTim_chain04
GLV_VS_RensaSTim_chain04:
    baserom 0x1789C, 0x14

    .global GLV_VS_RensaSTim_chain05
GLV_VS_RensaSTim_chain05:
    baserom 0x178B0, 0x14

    .global GLV_VS_RensaSTim_chain06
GLV_VS_RensaSTim_chain06:
    baserom 0x178C4, 0x14

    .global GLV_VS_RensaSTim_chain07
GLV_VS_RensaSTim_chain07:
    baserom 0x178D8, 0x14

    .global GLV_VS_RensaSTim_chain08
GLV_VS_RensaSTim_chain08:
    baserom 0x178EC, 0x14

    .global GLV_VS_RensaSTim_chain09
GLV_VS_RensaSTim_chain09:
    baserom 0x17900, 0x14

    .global GLV_VS_RensaSTim_chain10
GLV_VS_RensaSTim_chain10:
    baserom 0x17914, 0x14

    .global GLV_VS_RensaSTim_chain11
GLV_VS_RensaSTim_chain11:
    baserom 0x17928, 0x14

    .global GLV_VS_RensaSTim_chain12
GLV_VS_RensaSTim_chain12:
    baserom 0x1793C, 0x14

    .global GLV_VS_RensaSTim_chain13
GLV_VS_RensaSTim_chain13:
    baserom 0x17950, 0x14

    .global GLV_VS_RensaSTime
GLV_VS_RensaSTime:
    .4byte GLV_VS_RensaSTim_chain00
    .4byte GLV_VS_RensaSTim_chain00
    .4byte GLV_VS_RensaSTim_chain02
    .4byte GLV_VS_RensaSTim_chain03
    .4byte GLV_VS_RensaSTim_chain04
    .4byte GLV_VS_RensaSTim_chain05
    .4byte GLV_VS_RensaSTim_chain06
    .4byte GLV_VS_RensaSTim_chain07
    .4byte GLV_VS_RensaSTim_chain08
    .4byte GLV_VS_RensaSTim_chain09
    .4byte GLV_VS_RensaSTim_chain10
    .4byte GLV_VS_RensaSTim_chain11
    .4byte GLV_VS_RensaSTim_chain12
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13
    .4byte GLV_VS_RensaSTim_chain13

    .global GLV_VS_DangerDojiSTim_doji03
GLV_VS_DangerDojiSTim_doji03:
    baserom 0x179B8, 0x14

    .global GLV_VS_DangerDojiSTim_doji04
GLV_VS_DangerDojiSTim_doji04:
    baserom 0x179CC, 0x14

    .global GLV_VS_DangerDojiSTim_doji09
GLV_VS_DangerDojiSTim_doji09:
    baserom 0x179E0, 0x14

    .global GLV_VS_DangerDojiSTim_doji11
GLV_VS_DangerDojiSTim_doji11:
    baserom 0x179F4, 0x14

    .global GLV_VS_DangerDojiSTim_doji16
GLV_VS_DangerDojiSTim_doji16:
    baserom 0x17A08, 0x14

    .global GLV_VS_DangerDojiSTime
GLV_VS_DangerDojiSTime:
    .4byte GLV_VS_DangerDojiSTim_doji03
    .4byte GLV_VS_DangerDojiSTim_doji03
    .4byte GLV_VS_DangerDojiSTim_doji03
    .4byte GLV_VS_DangerDojiSTim_doji03
    .4byte GLV_VS_DangerDojiSTim_doji04
    .4byte GLV_VS_DangerDojiSTim_doji04
    .4byte GLV_VS_DangerDojiSTim_doji04
    .4byte GLV_VS_DangerDojiSTim_doji04
    .4byte GLV_VS_DangerDojiSTim_doji04
    .4byte GLV_VS_DangerDojiSTim_doji09
    .4byte GLV_VS_DangerDojiSTim_doji09
    .4byte GLV_VS_DangerDojiSTim_doji11
    .4byte GLV_VS_DangerDojiSTim_doji11
    .4byte GLV_VS_DangerDojiSTim_doji11
    .4byte GLV_VS_DangerDojiSTim_doji11
    .4byte GLV_VS_DangerDojiSTim_doji11
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16
    .4byte GLV_VS_DangerDojiSTim_doji16

    .global GLV_VS_DangerRensaSTim_chain00
GLV_VS_DangerRensaSTim_chain00:
    baserom 0x17B5C, 0x14

    .global GLV_VS_DangerRensaSTim_chain02
GLV_VS_DangerRensaSTim_chain02:
    baserom 0x17B70, 0x14

    .global GLV_VS_DangerRensaSTim_chain03
GLV_VS_DangerRensaSTim_chain03:
    baserom 0x17B84, 0x14

    .global GLV_VS_DangerRensaSTim_chain04
GLV_VS_DangerRensaSTim_chain04:
    baserom 0x17B98, 0x14

    .global GLV_VS_DangerRensaSTim_chain05
GLV_VS_DangerRensaSTim_chain05:
    baserom 0x17BAC, 0x14

    .global GLV_VS_DangerRensaSTime
GLV_VS_DangerRensaSTime:
    .4byte GLV_VS_DangerRensaSTim_chain00
    .4byte GLV_VS_DangerRensaSTim_chain00
    .4byte GLV_VS_DangerRensaSTim_chain02
    .4byte GLV_VS_DangerRensaSTim_chain03
    .4byte GLV_VS_DangerRensaSTim_chain04
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05
    .4byte GLV_VS_DangerRensaSTim_chain05

    .global PanelInitData
PanelInitData:
    baserom 0x17C14, 0x54

    .global PanelInitData_StageMode
PanelInitData_StageMode:
    baserom 0x17C68, 0x80

    .global np_bonus_rensa_AGB
np_bonus_rensa_AGB:
    baserom 0x17CE8, 0x54

    .global np_bonus_douji_AGB
np_bonus_douji_AGB:
    baserom 0x17D3C, 0x140

    .global OjamaAttackData
OjamaAttackData:
    baserom 0x17E7C, 0x4B0

    .global nis_shuuketu
nis_shuuketu:
    baserom 0x1832C, 0x3D8

    .global NisRnd_100dat
NisRnd_100dat:
    baserom 0x18704, 0x800

    .global npgmstpnldem_d20
npgmstpnldem_d20:
    baserom 0x18F04, 0x48

    .global npgmstpnldem_d30
npgmstpnldem_d30:
    baserom 0x18F4C, 0x48

    .global npgmstpnldem_d40
npgmstpnldem_d40:
    baserom 0x18F94, 0x48

    .global npgmstpnldem_d50
npgmstpnldem_d50:
    baserom 0x18FDC, 0x48

    .global npgmstpnldem_d60
npgmstpnldem_d60:
    baserom 0x19024, 0x48

    .global npgmstpnldem_d70
npgmstpnldem_d70:
    baserom 0x1906C, 0x48

    .global npgmstpnldem_d80
npgmstpnldem_d80:
    baserom 0x190B4, 0x48

    .global npgmstpnldem_d90
npgmstpnldem_d90:
    baserom 0x190FC, 0x48

    .global npgmstpnldem_dA0
npgmstpnldem_dA0:
    baserom 0x19144, 0x48

    .global npgmstpnldem_dB0
npgmstpnldem_dB0:
    baserom 0x1918C, 0x4E

    .global npgmstpnldem_dB1
npgmstpnldem_dB1:
    baserom 0x191DA, 0x48

    .global npgmstpnldem_k00
npgmstpnldem_k00:
    baserom 0x19222, 0x6

    .global npgmstpnldem_k20
npgmstpnldem_k20:
    baserom 0x19228, 0x30

    .global npgmstpnldem_k21
npgmstpnldem_k21:
    baserom 0x19258, 0x38

    .global npgmstpnldem_k22
npgmstpnldem_k22:
    baserom 0x19290, 0x30

    .global npgmstpnldem_k23
npgmstpnldem_k23:
    baserom 0x192C0, 0x2C

    .global npgmstpnldem_k30
npgmstpnldem_k30:
    baserom 0x192EC, 0x7A

    .global npgmstpnldem_k31
npgmstpnldem_k31:
    baserom 0x19366, 0x7C

    .global npgmstpnldem_k32
npgmstpnldem_k32:
    baserom 0x193E2, 0x84

    .global npgmstpnldem_k40
npgmstpnldem_k40:
    baserom 0x19466, 0xA4

    .global npgmstpnldem_k41
npgmstpnldem_k41:
    baserom 0x1950A, 0xA0

    .global npgmstpnldem_k42
npgmstpnldem_k42:
    baserom 0x195AA, 0xC2

    .global npgmstpnldem_k43
npgmstpnldem_k43:
    baserom 0x1966C, 0xA8

    .global npgmstpnldem_k44
npgmstpnldem_k44:
    baserom 0x19714, 0x8E

    .global npgmstpnldem_k45
npgmstpnldem_k45:
    baserom 0x197A2, 0xD0

    .global npgmstpnldem_k46
npgmstpnldem_k46:
    baserom 0x19872, 0xEC

    .global npgmstpnldem_k50
npgmstpnldem_k50:
    baserom 0x1995E, 0xCE

    .global npgmstpnldem_k51
npgmstpnldem_k51:
    baserom 0x19A2C, 0xD2

    .global npgmstpnldem_k52
npgmstpnldem_k52:
    baserom 0x19AFE, 0x136

    .global npgmstpnldem_k60
npgmstpnldem_k60:
    baserom 0x19C34, 0x128

    .global npgmstpnldem_k61
npgmstpnldem_k61:
    baserom 0x19D5C, 0x10E

    .global npgmstpnldem_k62
npgmstpnldem_k62:
    baserom 0x19E6A, 0x10E

    .global npgmstpnldem_k70
npgmstpnldem_k70:
    baserom 0x19F78, 0xFE

    .global npgmstpnldem_k71
npgmstpnldem_k71:
    baserom 0x1A076, 0x130

    .global npgmstpnldem_k80
npgmstpnldem_k80:
    baserom 0x1A1A6, 0x136

    .global npgmstpnldem_k90
npgmstpnldem_k90:
    baserom 0x1A2DC, 0x19A

    .global npgmstpnldem_kA0
npgmstpnldem_kA0:
    baserom 0x1A476, 0x1E4

    .global npgmstpnldem_kB00
npgmstpnldem_kB00:
    baserom 0x1A65A, 0x198

    .global npgmstpnldem_kB01
npgmstpnldem_kB01:
    baserom 0x1A7F2, 0x1AC

    .global npgmstpnldem_kB02
npgmstpnldem_kB02:
    baserom 0x1A99E, 0x18E

    .global npgmstpnldem_kB03
npgmstpnldem_kB03:
    baserom 0x1AB2C, 0x1B0

    .global npgmstpnldem_kB04
npgmstpnldem_kB04:
    baserom 0x1ACDC, 0x174

    .global npgmstpnldem_kB05
npgmstpnldem_kB05:
    baserom 0x1AE50, 0x1A2

    .global npgmstpnldem_kB10
npgmstpnldem_kB10:
    baserom 0x1AFF2, 0x18C

    .global npgmstpnldem_kB11
npgmstpnldem_kB11:
    baserom 0x1B17E, 0x1FA

    .global npgmstpnldem_kB12
npgmstpnldem_kB12:
    baserom 0x1B378, 0x206

    .global npgmstpnldem_kB13
npgmstpnldem_kB13:
    baserom 0x1B57E, 0x13A

    .global npgmstpnldem_tbl
npgmstpnldem_tbl:
    .word npgmstpnldem_d20
    .word npgmstpnldem_k20
    .word np_Msg_SuperDemo_00
    .word npgmstpnldem_d20
    .word npgmstpnldem_k21
    .word np_Msg_SuperDemo_01
    .word npgmstpnldem_d20
    .word npgmstpnldem_k22
    .word np_Msg_SuperDemo_02
    .word npgmstpnldem_d20
    .word npgmstpnldem_k23
    .word np_Msg_SuperDemo_03
    .word npgmstpnldem_d30
    .word npgmstpnldem_k30
    .word np_Msg_SuperDemo_04
    .word npgmstpnldem_d30
    .word npgmstpnldem_k31
    .word np_Msg_SuperDemo_05
    .word npgmstpnldem_d30
    .word npgmstpnldem_k32
    .word np_Msg_SuperDemo_06
    .word npgmstpnldem_d40
    .word npgmstpnldem_k40
    .word np_Msg_SuperDemo_07
    .word npgmstpnldem_d40
    .word npgmstpnldem_k41
    .word np_Msg_SuperDemo_08
    .word npgmstpnldem_d40
    .word npgmstpnldem_k42
    .word np_Msg_SuperDemo_09
    .word npgmstpnldem_d40
    .word npgmstpnldem_k43
    .word np_Msg_SuperDemo_10
    .word npgmstpnldem_d40
    .word npgmstpnldem_k44
    .word np_Msg_SuperDemo_11
    .word npgmstpnldem_d40
    .word npgmstpnldem_k45
    .word np_Msg_SuperDemo_12
    .word npgmstpnldem_d40
    .word npgmstpnldem_k46
    .word np_Msg_SuperDemo_13
    .word npgmstpnldem_d50
    .word npgmstpnldem_k50
    .word np_Msg_SuperDemo_14
    .word npgmstpnldem_d50
    .word npgmstpnldem_k51
    .word np_Msg_SuperDemo_15
    .word npgmstpnldem_d50
    .word npgmstpnldem_k52
    .word np_Msg_SuperDemo_16
    .word npgmstpnldem_d60
    .word npgmstpnldem_k60
    .word np_Msg_SuperDemo_17
    .word npgmstpnldem_d60
    .word npgmstpnldem_k61
    .word np_Msg_SuperDemo_18
    .word npgmstpnldem_d60
    .word npgmstpnldem_k62
    .word np_Msg_SuperDemo_19
    .word npgmstpnldem_d70
    .word npgmstpnldem_k70
    .word np_Msg_SuperDemo_20
    .word npgmstpnldem_d70
    .word npgmstpnldem_k71
    .word np_Msg_SuperDemo_21
    .word npgmstpnldem_d80
    .word npgmstpnldem_k80
    .word np_Msg_SuperDemo_22
    .word npgmstpnldem_d90
    .word npgmstpnldem_k90
    .word np_Msg_SuperDemo_23
    .word npgmstpnldem_dA0
    .word npgmstpnldem_kA0
    .word np_Msg_SuperDemo_24
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB00
    .word np_Msg_SuperDemo_25
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB01
    .word np_Msg_SuperDemo_26
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB02
    .word np_Msg_SuperDemo_27
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB03
    .word np_Msg_SuperDemo_28
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB05
    .word np_Msg_SuperDemo_29
    .word npgmstpnldem_dB1
    .word npgmstpnldem_kB10
    .word np_Msg_SuperDemo_30
    .word npgmstpnldem_dB1
    .word npgmstpnldem_kB11
    .word np_Msg_SuperDemo_31
    .word npgmstpnldem_dB1
    .word npgmstpnldem_kB12
    .word np_Msg_SuperDemo_32
    .word npgmstpnldem_dB0
    .word npgmstpnldem_kB04
    .word np_Msg_SuperDemo_33
    .word npgmstpnldem_dB1
    .word npgmstpnldem_kB13
    .word np_Msg_SuperDemo_34

    .global Asc_KAZU_v2_gm_logo
Asc_KAZU_v2_gm_logo:
    baserom 0x1B85C, 0x14

    .global Asc_KAZU_Size12_NML_0
Asc_KAZU_Size12_NML_0:
    baserom 0x1B870, 0x4

    .global Asc_KAZU_Size12_NML_1
Asc_KAZU_Size12_NML_1:
    baserom 0x1B874, 0x4

    .global Asc_KAZU_Size12_NML_2
Asc_KAZU_Size12_NML_2:
    baserom 0x1B878, 0x4

    .global Asc_KAZU_Size12_NML_3
Asc_KAZU_Size12_NML_3:
    baserom 0x1B87C, 0x4

    .global Asc_KAZU_Size12_NML_4
Asc_KAZU_Size12_NML_4:
    baserom 0x1B880, 0x4

    .global Asc_KAZU_Size12_NML_5
Asc_KAZU_Size12_NML_5:
    baserom 0x1B884, 0x4

    .global Asc_KAZU_Size12_NML_6
Asc_KAZU_Size12_NML_6:
    baserom 0x1B888, 0x4

    .global Asc_KAZU_Size12_NML_7
Asc_KAZU_Size12_NML_7:
    baserom 0x1B88C, 0x4

    .global Asc_KAZU_Size12_NML_8
Asc_KAZU_Size12_NML_8:
    baserom 0x1B890, 0x4

    .global Asc_KAZU_Size12_NML_9
Asc_KAZU_Size12_NML_9:
    baserom 0x1B894, 0x4

    .global Asc_KAZU_Size12_NML_Tbl
Asc_KAZU_Size12_NML_Tbl:
    .4byte Asc_KAZU_Size12_NML_0
    .4byte Asc_KAZU_Size12_NML_1
    .4byte Asc_KAZU_Size12_NML_2
    .4byte Asc_KAZU_Size12_NML_3
    .4byte Asc_KAZU_Size12_NML_4
    .4byte Asc_KAZU_Size12_NML_5
    .4byte Asc_KAZU_Size12_NML_6
    .4byte Asc_KAZU_Size12_NML_7
    .4byte Asc_KAZU_Size12_NML_8
    .4byte Asc_KAZU_Size12_NML_9

    .global Asc_KAZ2_Size12_NML_0
Asc_KAZ2_Size12_NML_0:
    baserom 0x1B8C0, 0x4

    .global Asc_KAZ2_Size12_NML_1
Asc_KAZ2_Size12_NML_1:
    baserom 0x1B8C4, 0x4

    .global Asc_KAZ2_Size12_NML_2
Asc_KAZ2_Size12_NML_2:
    baserom 0x1B8C8, 0x4

    .global Asc_KAZ2_Size12_NML_3
Asc_KAZ2_Size12_NML_3:
    baserom 0x1B8CC, 0x4

    .global Asc_KAZ2_Size12_NML_4
Asc_KAZ2_Size12_NML_4:
    baserom 0x1B8D0, 0x4

    .global Asc_KAZ2_Size12_NML_5
Asc_KAZ2_Size12_NML_5:
    baserom 0x1B8D4, 0x4

    .global Asc_KAZ2_Size12_NML_6
Asc_KAZ2_Size12_NML_6:
    baserom 0x1B8D8, 0x4

    .global Asc_KAZ2_Size12_NML_7
Asc_KAZ2_Size12_NML_7:
    baserom 0x1B8DC, 0x4

    .global Asc_KAZ2_Size12_NML_8
Asc_KAZ2_Size12_NML_8:
    baserom 0x1B8E0, 0x4

    .global Asc_KAZ2_Size12_NML_9
Asc_KAZ2_Size12_NML_9:
    baserom 0x1B8E4, 0x4

    .global Asc_KAZ2_Size12_NML_Tbl
Asc_KAZ2_Size12_NML_Tbl:
    .4byte Asc_KAZ2_Size12_NML_0
    .4byte Asc_KAZ2_Size12_NML_1
    .4byte Asc_KAZ2_Size12_NML_2
    .4byte Asc_KAZ2_Size12_NML_3
    .4byte Asc_KAZ2_Size12_NML_4
    .4byte Asc_KAZ2_Size12_NML_5
    .4byte Asc_KAZ2_Size12_NML_6
    .4byte Asc_KAZ2_Size12_NML_7
    .4byte Asc_KAZ2_Size12_NML_8
    .4byte Asc_KAZ2_Size12_NML_9

    .global NisOptSel_Buf
NisOptSel_Buf:
    .word np_Msg_OptionSelect_00
    .word NisOptSel_np_sw_markten+1
    .word np_Msg_OptionSelect_01
    .word NisOptSel_np_sw_countstop+1
    .word np_Msg_OptionSelect_02
    .word NisOptSel_np_fld_bscfg+1
    .word np_Msg_OptionSelect_03
    .word NisOptSel_np_sw_PanelNumber+1
    .word np_Msg_OptionSelect_04
    .word NisOptSel_np_sw_no_roll_stop+1
    .word np_Msg_OptionSelect_05
    .word NisOptSel_np_sw_ball_command+1
    .word np_Msg_OptionSelect_06
    .word NisOptSel_np_sw_Put_GOCnt+1
    .word np_Msg_OptionSelect_07
    .word NisOptSel_np_sw_OjamaKaitou+1
    .word np_Msg_OptionSelect_08
    .word NisOptSel_np_sw_AgbKey_mode+1
    .word np_Msg_OptionSelect_09
    .word NisOptSel_np_sw_panelanime+1
    .word np_Msg_OptionSelect_0a
    .word NisOptSel_np_sw_kage_color+1
    .word np_Msg_OptionSelect_0b
    .word NisOptSel_np_sw_field_color+1
    .word np_Msg_OptionSelect_0c
    .word NisOptSel_np_sw_zenkeshi+1
    .word 0
    .word NisOptSel_np_sw_option_def+1
    .word 0
    .word 0
   
    .global NisSelect_DT
NisSelect_DT:
    .byte 0 @; nPage
    .byte 0 @; nCsl
    .byte 1 @; nDown
    .byte 4 @; nUp
    .byte 0 @; nDwTrg
    .byte 1 @; nUpTrg
    .byte 1 @; nAbutt
    .byte 255 @; nBbutt
    .byte 2 @; nPutx
    .byte 5 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_00
    .word np_Msg_Help_00
    .byte 0 @; nPage
    .byte 1 @; nCsl
    .byte 2 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 2 @; nAbutt
    .byte 255 @; nBbutt
    .byte 2 @; nPutx
    .byte 7 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_00
    .word np_Msg_Help_01
    .byte 0 @; nPage
    .byte 2 @; nCsl
    .byte 3 @; nDown
    .byte 1 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 4 @; nAbutt
    .byte 255 @; nBbutt
    .byte 2 @; nPutx
    .byte 9 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_00
    .word np_Msg_Help_04
    .byte 0 @; nPage
    .byte 3 @; nCsl
    .byte 4 @; nDown
    .byte 2 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 3 @; nAbutt
    .byte 255 @; nBbutt
    .byte 2 @; nPutx
    .byte 11 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_00
    .word np_Msg_Help_02
    .byte 0 @; nPage
    .byte 4 @; nCsl
    .byte 0 @; nDown
    .byte 3 @; nUp
    .byte 1 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 255 @; nBbutt
    .byte 2 @; nPutx
    .byte 13 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_00
    .word np_Msg_Help_03
    .byte 1 @; nPage
    .byte 0 @; nCsl
    .byte 1 @; nDown
    .byte 2 @; nUp
    .byte 0 @; nDwTrg
    .byte 1 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 7 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_01
    .word np_Msg_Help_10
    .byte 1 @; nPage
    .byte 1 @; nCsl
    .byte 2 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 9 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_01
    .word np_Msg_Help_11
    .byte 1 @; nPage
    .byte 2 @; nCsl
    .byte 0 @; nDown
    .byte 1 @; nUp
    .byte 1 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 12 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_01
    .word np_Msg_Help_12
    .byte 2 @; nPage
    .byte 0 @; nCsl
    .byte 1 @; nDown
    .byte 2 @; nUp
    .byte 0 @; nDwTrg
    .byte 1 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 7 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_02
    .word np_Msg_Help_20
    .byte 2 @; nPage
    .byte 1 @; nCsl
    .byte 2 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 9 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_02
    .word np_Msg_Help_21
    .byte 2 @; nPage
    .byte 2 @; nCsl
    .byte 0 @; nDown
    .byte 1 @; nUp
    .byte 1 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 12 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_02
    .word np_Msg_Help_22
    .byte 3 @; nPage
    .byte 0 @; nCsl
    .byte 1 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 7 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_30
    .byte 3 @; nPage
    .byte 1 @; nCsl
    .byte 2 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 9 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_31
    .byte 3 @; nPage
    .byte 2 @; nCsl
    .byte 3 @; nDown
    .byte 1 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 11 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_32
    .byte 3 @; nPage
    .byte 3 @; nCsl
    .byte 4 @; nDown
    .byte 2 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 13 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_33
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_34
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_35
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_36
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_37
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_38
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_39
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_3a
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_3b
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_3c
    .byte 3 @; nPage
    .byte 4 @; nCsl
    .byte 4 @; nDown
    .byte 3 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 15 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_03
    .word np_Msg_Help_3d
    .byte 4 @; nPage
    .byte 0 @; nCsl
    .byte 0 @; nDown
    .byte 0 @; nUp
    .byte 0 @; nDwTrg
    .byte 0 @; nUpTrg
    .byte 255 @; nAbutt
    .byte 0 @; nBbutt
    .byte 2 @; nPutx
    .byte 7 @; nPuty
    .byte 0, 0
    .word np_Msg_MainSelect_04
    .word np_Msg_Help_40

    .global NisSelectSub_pCslDat
NisSelectSub_pCslDat:
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_0a
    .4byte Aob_Panel_Select_0a
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0b
    .4byte Aob_Panel_Select_0a
    .4byte Aob_Panel_Select_0a
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_08
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09
    .4byte Aob_Panel_Select_09

    .global NisMoveKabeColor_Tbl
NisMoveKabeColor_Tbl:
    .4byte ponagb2m_kabe_Acl_Nml
    .4byte ponagb2m_kabe_Acl_Red2
    .4byte ponagb2m_kabe_Acl_Ylw2
    .4byte ponagb2m_kabe_Acl_Grn2
    .4byte ponagb2m_kabe_Acl_Miz2
    .4byte ponagb2m_kabe_Acl_Blu2
    .4byte ponagb2m_kabe_Acl_Mur2
    .4byte ponagb2m_kabe_Acl_Blk2
    .4byte ponagb2m_kabe_Acl_Wht2
    .4byte ponagb2m_kabe_Acl_Red
    .4byte ponagb2m_kabe_Acl_Ylw
    .4byte ponagb2m_kabe_Acl_Grn
    .4byte ponagb2m_kabe_Acl_Miz
    .4byte ponagb2m_kabe_Acl_Blu
    .4byte ponagb2m_kabe_Acl_Mur
    .4byte ponagb2m_kabe_Acl_Blk
    .4byte ponagb2m_kabe_Acl_Wht
    .4byte ponagb2m_kabe_Acl_Red1
    .4byte ponagb2m_kabe_Acl_Ylw1
    .4byte ponagb2m_kabe_Acl_Grn1
    .4byte ponagb2m_kabe_Acl_Miz1
    .4byte ponagb2m_kabe_Acl_Blu1
    .4byte ponagb2m_kabe_Acl_Mur1
    .4byte ponagb2m_kabe_Acl_Blk1
    .4byte ponagb2m_kabe_Acl_Wht1

    .global np_pictuescr
np_pictuescr:
    baserom 0x1BC68, 0x16C

    .global nswp_04_frame
nswp_04_frame:
    baserom 0x1BDD4, 0x4

    .global nswp_08_frame
nswp_08_frame:
    baserom 0x1BDD8, 0x8

    .global nswp_0c_frame
nswp_0c_frame:
    baserom 0x1BDE0, 0xC

    .global nswp_10_frame
nswp_10_frame:
    baserom 0x1BDEC, 0x10

    .global nojpt_usutbl
nojpt_usutbl:
    baserom 0x1BDFC, 0x26

    .global nojpt_OJM_1_01
nojpt_OJM_1_01:
    baserom 0x1BE22, 0x3

    .global nojpt_OJM_2_01
nojpt_OJM_2_01:
    baserom 0x1BE25, 0x4

    .global nojpt_OJM_3_01
nojpt_OJM_3_01:
    baserom 0x1BE29, 0x5

    .global nojpt_OJM_4_01
nojpt_OJM_4_01:
    baserom 0x1BE2E, 0x6

    .global nojpt_OJM_5_01
nojpt_OJM_5_01:
    baserom 0x1BE34, 0x7

    .global nojpt_OJM_6_01
nojpt_OJM_6_01:
    baserom 0x1BE3B, 0x8

    .global nojpt_OJM_6_02
nojpt_OJM_6_02:
    baserom 0x1BE43, 0xE

    .global nojpt_OJM_6_03
nojpt_OJM_6_03:
    baserom 0x1BE51, 0x14

    .global nojpt_OJM_6_04
nojpt_OJM_6_04:
    baserom 0x1BE65, 0x1A

    .global nojpt_OJM_6_05
nojpt_OJM_6_05:
    baserom 0x1BE7F, 0x20

    .global nojpt_OJM_6_06
nojpt_OJM_6_06:
    baserom 0x1BE9F, 0x26

    .global nojpt_OJM_6_07
nojpt_OJM_6_07:
    baserom 0x1BEC5, 0x2C

    .global nojpt_OJM_6_08
nojpt_OJM_6_08:
    baserom 0x1BEF1, 0x32

    .global nojpt_OJM_6_09
nojpt_OJM_6_09:
    baserom 0x1BF23, 0x38

    .global nojpt_OJM_6_10
nojpt_OJM_6_10:
    baserom 0x1BF5B, 0x3E

    .global nojpt_OJM_6_11
nojpt_OJM_6_11:
    baserom 0x1BF99, 0x44

    .global nojpt_OJM_6_12
nojpt_OJM_6_12:
    baserom 0x1BFDD, 0x4A

    .global nojpt_OJM_6_13
nojpt_OJM_6_13:
    baserom 0x1C027, 0x50

    .global nojpt_OJM_6_14
nojpt_OJM_6_14:
    baserom 0x1C077, 0x56

    .global nojpt_OJM_6_15
nojpt_OJM_6_15:
    baserom 0x1C0CD, 0x5C

    .global nojpt_OJM_6_16
nojpt_OJM_6_16:
    baserom 0x1C129, 0x62

    .global nojpt_ZET_1_01
nojpt_ZET_1_01:
    baserom 0x1C18B, 0x3

    .global nojpt_ZET_2_01
nojpt_ZET_2_01:
    baserom 0x1C18E, 0x4

    .global nojpt_ZET_3_01
nojpt_ZET_3_01:
    baserom 0x1C192, 0x5

    .global nojpt_ZET_4_01
nojpt_ZET_4_01:
    baserom 0x1C197, 0x6

    .global nojpt_ZET_5_01
nojpt_ZET_5_01:
    baserom 0x1C19D, 0x7

    .global nojpt_ZET_6_01
nojpt_ZET_6_01:
    baserom 0x1C1A4, 0x8

    .global nojpt_tbl
nojpt_tbl:
    .4byte nojpt_OJM_1_01
    .4byte nojpt_OJM_2_01
    .4byte nojpt_OJM_3_01
    .4byte nojpt_OJM_4_01
    .4byte nojpt_OJM_5_01
    .4byte nojpt_OJM_6_01
    .4byte nojpt_OJM_6_02
    .4byte nojpt_OJM_6_03
    .4byte nojpt_OJM_6_04
    .4byte nojpt_OJM_6_05
    .4byte nojpt_OJM_6_06
    .4byte nojpt_OJM_6_07
    .4byte nojpt_OJM_6_08
    .4byte nojpt_OJM_6_09
    .4byte nojpt_OJM_6_10
    .4byte nojpt_OJM_6_11
    .4byte nojpt_OJM_6_12
    .4byte nojpt_OJM_6_13
    .4byte nojpt_OJM_6_14
    .4byte nojpt_OJM_6_15
    .4byte nojpt_OJM_6_16
    .4byte nojpt_ZET_1_01
    .4byte nojpt_ZET_2_01
    .4byte nojpt_ZET_3_01
    .4byte nojpt_ZET_4_01
    .4byte nojpt_ZET_5_01
    .4byte nojpt_ZET_6_01

    .global nojpt_emtbl
nojpt_emtbl:
    baserom 0x1C218, 0x6C

    .global np_Ojm31Yure_stt
np_Ojm31Yure_stt:
    baserom 0x1C284, 0x12

    .global np_Ojm41Yure_stt
np_Ojm41Yure_stt:
    baserom 0x1C296, 0x12

    .global np_Ojm51Yure_stt
np_Ojm51Yure_stt:
    baserom 0x1C2A8, 0x18

    .global np_Ojm61Yure_stt
np_Ojm61Yure_stt:
    baserom 0x1C2C0, 0x2A

    .global np_Ojm62Yure_stt
np_Ojm62Yure_stt:
    baserom 0x1C2EA, 0x42

    .global np_Ojm63Yure_stt
np_Ojm63Yure_stt:
    baserom 0x1C32C, 0x4C

    .global np_srwreq_time3_data
np_srwreq_time3_data:
    baserom 0x1C378, 0x3C

    .global np_fuwafuwa_data
np_fuwafuwa_data:
    baserom 0x1C3B4, 0x20

    .global np_BigMojiYure_Lose
np_BigMojiYure_Lose:
    baserom 0x1C3D4, 0x20

    .global np_BigMojiYure_d3
np_BigMojiYure_d3:
    baserom 0x1C3F4, 0x39

    .global np_BigMojiYure_down
np_BigMojiYure_down:
    baserom 0x1C42D, 0x4B

#if VERSION == 0
    .global str_201C478
str_201C478:
    baserom 0x1C478, 0x4
#else
    .global np_mk_put_agb_number
np_mk_put_agb_number:
    .2byte  0, 1, 2, 3, 4, 5, 6, 7, 8, 9
#endif

    .global np_rdyst_dat_cslmov
np_rdyst_dat_cslmov:
    baserom 0x1C47C, 0x94

    .global np_rdyst_dat_ready
np_rdyst_dat_ready:
    baserom 0x1C510, 0x10

    .global np_rdyst_dat_stage
np_rdyst_dat_stage:
    baserom 0x1C520, 0x14

    .global np_rdyst_dat_timemov
np_rdyst_dat_timemov:
    baserom 0x1C534, 0x44

    .global np_rdyst_dat_timemv2
np_rdyst_dat_timemv2:
    baserom 0x1C578, 0x44

    .global nprks_chaku_stt
nprks_chaku_stt:
    baserom 0x1C5BC, 0xB

    .global np_mk_updt
np_mk_updt:
    baserom 0x1C5C7, 0x2D

    .global np_mk_put_agb_Douj_1keta
np_mk_put_agb_Douj_1keta:
    baserom 0x1C5F4, 0x14

    .global np_mk_put_agb_Rens_1keta
np_mk_put_agb_Rens_1keta:
    baserom 0x1C608, 0x14

    .global np_mk_put_agb_Douj_Lketa
np_mk_put_agb_Douj_Lketa:
    baserom 0x1C61C, 0x14

    .global np_mk_put_agb_Douj_Rketa
np_mk_put_agb_Douj_Rketa:
    baserom 0x1C630, 0x14

    .global np_mk_put_agb_Rens_Lketa
np_mk_put_agb_Rens_Lketa:
    baserom 0x1C644, 0x14

    .global np_mk_put_agb_Rens_Rketa
np_mk_put_agb_Rens_Rketa:
    baserom 0x1C658, 0x14

#if VERSION == 0
    .global np_mk_put_agb_number
np_mk_put_agb_number:
    .2byte  0, 1, 2, 3, 4, 5, 6, 7, 8, 9
#endif

    .global np_zenkeshi_demo_data
np_zenkeshi_demo_data:
    baserom 0x1C680, 0x80

    .global PutDataBgDex
PutDataBgDex:
    baserom 0x1C700, 0x28

    .global MainSeqTable
MainSeqTable:
    .4byte NisATitleInit+1
    .4byte NisATitleMain0+1
    .4byte NisATitleMain1+1
    .4byte NisATitleLast+1
    .4byte NisTitleInit+1
    .4byte NisTitleMain+1
    .4byte NisSelectInit+1
    .4byte NisSelectMain+1
    .4byte nis_game_init+1
    .4byte nis_game_main+1
    .4byte NisTestSelectInit+1
    .4byte NisTestSelectMain+1
    .4byte NisMsgSleepInit+1
    .4byte NisMsgSleepMain+1
    .4byte NisOptField_Init+1
    .4byte NisOptField_Main+1

    .global IntrTable
IntrTable:
    .4byte VBlankIntr+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte GBAJoyIntr+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1
    .4byte IntrDummy+1

    .global NisCtcPara_Data
NisCtcPara_Data:
    baserom 0x1C79C, 0x8

    .global haba.39
haba.39:
    baserom 0x1C7A4, 0x20

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
