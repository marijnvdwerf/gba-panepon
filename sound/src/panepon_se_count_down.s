	.include "MPlayDef.s"

	.equ	panepon_se_count_down_grp, voicegroup000
	.equ	panepon_se_count_down_pri, 50
	.equ	panepon_se_count_down_rev, 0
	.equ	panepon_se_count_down_mvl, 120
	.equ	panepon_se_count_down_key, 0
	.equ	panepon_se_count_down_tbs, 1
	.equ	panepon_se_count_down_exg, 0
	.equ	panepon_se_count_down_cmp, 1

	.section .rodata
	.global	panepon_se_count_down
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_count_down_1:
	.byte	KEYSH , panepon_se_count_down_key+0
	.byte	TEMPO , 150*panepon_se_count_down_tbs/2
	.byte		VOICE , 86
	.byte		VOL   , 120
	.byte	W02
	.byte		N06   , As4 , v084
	.byte	W22
	.byte	W24
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_count_down_2:
	.byte		VOL   , 120
	.byte	KEYSH , panepon_se_count_down_key+0
	.byte		VOICE , 12
	.byte	W03
	.byte		N02   , As4 , v064
	.byte	W04
	.byte		        As4 , v028
	.byte	W02
	.byte		        As4 , v008
	.byte	W15
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_count_down:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_count_down_pri	@ Priority
	.byte	panepon_se_count_down_rev	@ Reverb.

	.word	panepon_se_count_down_grp

	.word	panepon_se_count_down_1
	.word	panepon_se_count_down_2

	.end

