#include "asm/macros.inc"

    .section .rodata2

    .global haba.39
haba.39:
   .2byte 8, 0x10, 0x20, 0x40, 0x10, 0x20, 0x20, 0x40, 8, 8, 0x10, 0x20, 0, 0, 0, 0


    .global ponagb2m_bga_Acl
ponagb2m_bga_Acl:
    .incbin "ponagb2m_bga.acl"

    .global ponagb2m_title_Acl
ponagb2m_title_Acl:
    .incbin "ponagb2m_title.acl"

    .global ponagb2m_title_Asc_LZ
ponagb2m_title_Asc_LZ:
    .incbin "ponagb2m_title.asc.lz"

    .global ponagb2m_sel_help_Asc_LZ
ponagb2m_sel_help_Asc_LZ:
    .incbin "ponagb2m_sel_help.asc.lz"

    .global ponagb2m_title_Acg_LZ
ponagb2m_title_Acg_LZ:
    .incbin "ponagb2m_title.acg.lz"

    .global ponagb2m_obj_Acg_LZ
ponagb2m_obj_Acg_LZ:
    .incbin "ponagb2m_obj.acg.lz"

    .global ponagb2m_bga_Acg_LZ
ponagb2m_bga_Acg_LZ:
    .incbin "ponagb2m_bga.acg.lz"

    .global ponagb2m_pause_Asc_LZ
ponagb2m_pause_Asc_LZ:
    .incbin "ponagb2m_pause.asc.lz"

    .global ponagb2m_title_obj_Acg_LZ
ponagb2m_title_obj_Acg_LZ:
    .incbin "ponagb2m_title_obj.acg.lz"

    .global healthsafety_jp_Acl
healthsafety_jp_Acl:
    .incbin "healthsafety_jp.acl"

    .global healthsafety_jp_Acg_LZ
healthsafety_jp_Acg_LZ:
    .incbin "healthsafety_jp.acg.lz"

    .global healthsafety_jp_Asc_LZ
healthsafety_jp_Asc_LZ:
    .incbin "healthsafety_jp.asc.lz"

    .global ponagb2m_obj_Acl
ponagb2m_obj_Acl:
    .incbin "ponagb2m_obj.acl"

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

    .global ponagb2m_select_Asc_LZ
ponagb2m_select_Asc_LZ:
    .incbin "ponagb2m_select.asc.lz"

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

#if VERSION == 2


#endif
