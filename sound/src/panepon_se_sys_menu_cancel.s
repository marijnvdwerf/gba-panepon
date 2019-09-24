	.include "MPlayDef.s"

	.equ	panepon_se_sys_menu_cancel_grp, voicegroup002
	.equ	panepon_se_sys_menu_cancel_pri, 40
	.equ	panepon_se_sys_menu_cancel_rev, 0
	.equ	panepon_se_sys_menu_cancel_mvl, 100
	.equ	panepon_se_sys_menu_cancel_key, 0
	.equ	panepon_se_sys_menu_cancel_tbs, 1
	.equ	panepon_se_sys_menu_cancel_exg, 0
	.equ	panepon_se_sys_menu_cancel_cmp, 1

	.section .rodata
	.global	panepon_se_sys_menu_cancel
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_sys_menu_cancel_1:
	.byte	KEYSH , panepon_se_sys_menu_cancel_key+0
	.byte	TEMPO , 180*panepon_se_sys_menu_cancel_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 100
	.byte		N03   , Gn4 , v064
	.byte	W96
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_sys_menu_cancel_2:
	.byte	KEYSH , panepon_se_sys_menu_cancel_key+0
	.byte		VOICE , 7
	.byte		VOL   , 100
	.byte	W02
	.byte		N03   , Gn4 , v064
	.byte	W92
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_sys_menu_cancel:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_sys_menu_cancel_pri	@ Priority
	.byte	panepon_se_sys_menu_cancel_rev	@ Reverb.

	.word	panepon_se_sys_menu_cancel_grp

	.word	panepon_se_sys_menu_cancel_1
	.word	panepon_se_sys_menu_cancel_2

	.end

