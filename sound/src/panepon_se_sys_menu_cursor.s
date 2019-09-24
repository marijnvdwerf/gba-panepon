	.include "MPlayDef.s"

	.equ	panepon_se_sys_menu_cursor_grp, voicegroup002
	.equ	panepon_se_sys_menu_cursor_pri, 40
	.equ	panepon_se_sys_menu_cursor_rev, 0
	.equ	panepon_se_sys_menu_cursor_mvl, 80
	.equ	panepon_se_sys_menu_cursor_key, 0
	.equ	panepon_se_sys_menu_cursor_tbs, 1
	.equ	panepon_se_sys_menu_cursor_exg, 0
	.equ	panepon_se_sys_menu_cursor_cmp, 1

	.section .rodata
	.global	panepon_se_sys_menu_cursor
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_sys_menu_cursor_1:
	.byte	KEYSH , panepon_se_sys_menu_cursor_key+0
	.byte	TEMPO , 150*panepon_se_sys_menu_cursor_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 80
	.byte		N01   , Fs3 , v127
	.byte	W04
	.byte		        Fn3
	.byte	W20
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_sys_menu_cursor:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_sys_menu_cursor_pri	@ Priority
	.byte	panepon_se_sys_menu_cursor_rev	@ Reverb.

	.word	panepon_se_sys_menu_cursor_grp

	.word	panepon_se_sys_menu_cursor_1

	.end

