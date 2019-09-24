	.include "MPlayDef.s"

	.equ	panepon_se_sys_menu_ok_grp, voicegroup002
	.equ	panepon_se_sys_menu_ok_pri, 40
	.equ	panepon_se_sys_menu_ok_rev, 0
	.equ	panepon_se_sys_menu_ok_mvl, 100
	.equ	panepon_se_sys_menu_ok_key, 0
	.equ	panepon_se_sys_menu_ok_tbs, 1
	.equ	panepon_se_sys_menu_ok_exg, 0
	.equ	panepon_se_sys_menu_ok_cmp, 1

	.section .rodata
	.global	panepon_se_sys_menu_ok
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_sys_menu_ok_1:
	.byte	KEYSH , panepon_se_sys_menu_ok_key+0
	.byte	TEMPO , 150*panepon_se_sys_menu_ok_tbs/2
	.byte		VOICE , 1
	.byte		VOL   , 64*panepon_se_sys_menu_ok_mvl/mxv
	.byte	W02
	.byte		N06   , Fn4 , v116
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W64
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_sys_menu_ok_2:
	.byte	KEYSH , panepon_se_sys_menu_ok_key+0
	.byte		VOICE , 7
	.byte		VOL   , 100
	.byte		N06   , Fn4 , v116
	.byte	W06
	.byte		        Cn5 , v092
	.byte	W06
	.byte		        Fn5 , v064
	.byte	W06
	.byte		        Fn4 , v052
	.byte	W06
	.byte		        Cn5 , v036
	.byte	W06
	.byte		        Fn5 , v040
	.byte	W66
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_sys_menu_ok:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_sys_menu_ok_pri	@ Priority
	.byte	panepon_se_sys_menu_ok_rev	@ Reverb.

	.word	panepon_se_sys_menu_ok_grp

	.word	panepon_se_sys_menu_ok_1
	.word	panepon_se_sys_menu_ok_2

	.end

