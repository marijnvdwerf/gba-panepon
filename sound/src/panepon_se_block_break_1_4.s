	.include "MPlayDef.s"

	.equ	panepon_se_block_break_1_4_grp, voicegroup002
	.equ	panepon_se_block_break_1_4_pri, 30
	.equ	panepon_se_block_break_1_4_rev, 0
	.equ	panepon_se_block_break_1_4_mvl, 90
	.equ	panepon_se_block_break_1_4_key, 0
	.equ	panepon_se_block_break_1_4_tbs, 1
	.equ	panepon_se_block_break_1_4_exg, 0
	.equ	panepon_se_block_break_1_4_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_1_4
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_1_4_1:
	.byte	KEYSH , panepon_se_block_break_1_4_key+0
	.byte	TEMPO , 180*panepon_se_block_break_1_4_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 90
	.byte		N03   , En4 , v127
	.byte	W06
	.byte		N05   , En3
	.byte	W05
	.byte		N03   , En3 , v020
	.byte	W13
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_1_4:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_1_4_pri	@ Priority
	.byte	panepon_se_block_break_1_4_rev	@ Reverb.

	.word	panepon_se_block_break_1_4_grp

	.word	panepon_se_block_break_1_4_1

	.end

