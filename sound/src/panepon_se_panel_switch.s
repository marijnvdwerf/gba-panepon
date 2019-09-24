	.include "MPlayDef.s"

	.equ	panepon_se_panel_switch_grp, voicegroup002
	.equ	panepon_se_panel_switch_pri, 40
	.equ	panepon_se_panel_switch_rev, 0
	.equ	panepon_se_panel_switch_mvl, 90
	.equ	panepon_se_panel_switch_key, 0
	.equ	panepon_se_panel_switch_tbs, 1
	.equ	panepon_se_panel_switch_exg, 0
	.equ	panepon_se_panel_switch_cmp, 1

	.section .rodata
	.global	panepon_se_panel_switch
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_panel_switch_1:
	.byte	KEYSH , panepon_se_panel_switch_key+0
	.byte	TEMPO , 150*panepon_se_panel_switch_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 90
	.byte		N01   , En2 , v127
	.byte	W03
	.byte		        En2 , v084
	.byte	W04
	.byte		        En2 , v028
	.byte	W17
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_panel_switch_2:
	.byte	KEYSH , panepon_se_panel_switch_key+0
	.byte		VOICE , 3
	.byte		VOL   , 90
	.byte		N07   , Ds4 , v127
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_panel_switch:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_panel_switch_pri	@ Priority
	.byte	panepon_se_panel_switch_rev	@ Reverb.

	.word	panepon_se_panel_switch_grp

	.word	panepon_se_panel_switch_1
	.word	panepon_se_panel_switch_2

	.end

