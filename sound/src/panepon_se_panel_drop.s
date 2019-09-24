	.include "MPlayDef.s"

	.equ	panepon_se_panel_drop_grp, voicegroup002
	.equ	panepon_se_panel_drop_pri, 30
	.equ	panepon_se_panel_drop_rev, 0
	.equ	panepon_se_panel_drop_mvl, 80
	.equ	panepon_se_panel_drop_key, 0
	.equ	panepon_se_panel_drop_tbs, 1
	.equ	panepon_se_panel_drop_exg, 0
	.equ	panepon_se_panel_drop_cmp, 1

	.section .rodata
	.global	panepon_se_panel_drop
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_panel_drop_1:
	.byte	KEYSH , panepon_se_panel_drop_key+0
	.byte	TEMPO , 150*panepon_se_panel_drop_tbs/2
	.byte		VOICE , 18
	.byte		VOL   , 80
	.byte		BENDR , 24
	.byte		BEND  , c_v+0
	.byte		N03   , Gn4 , v092
	.byte	W04
	.byte		N05   , Cn4 , v127
	.byte	W44
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_panel_drop:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_panel_drop_pri	@ Priority
	.byte	panepon_se_panel_drop_rev	@ Reverb.

	.word	panepon_se_panel_drop_grp

	.word	panepon_se_panel_drop_1

	.end

