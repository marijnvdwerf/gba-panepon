	.include "MPlayDef.s"

	.equ	panepon_se_block_break_1_A_grp, voicegroup002
	.equ	panepon_se_block_break_1_A_pri, 30
	.equ	panepon_se_block_break_1_A_rev, 0
	.equ	panepon_se_block_break_1_A_mvl, 90
	.equ	panepon_se_block_break_1_A_key, 0
	.equ	panepon_se_block_break_1_A_tbs, 1
	.equ	panepon_se_block_break_1_A_exg, 0
	.equ	panepon_se_block_break_1_A_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_1_A
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_1_A_1:
	.byte	KEYSH , panepon_se_block_break_1_A_key+0
	.byte	TEMPO , 180*panepon_se_block_break_1_A_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 90
	.byte		N03   , As4 , v127
	.byte	W06
	.byte		N05   , As3
	.byte	W05
	.byte		N03   , As3 , v020
	.byte	W13
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_1_A:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_1_A_pri	@ Priority
	.byte	panepon_se_block_break_1_A_rev	@ Reverb.

	.word	panepon_se_block_break_1_A_grp

	.word	panepon_se_block_break_1_A_1

	.end

