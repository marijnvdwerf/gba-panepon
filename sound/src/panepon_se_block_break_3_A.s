	.include "MPlayDef.s"

	.equ	panepon_se_block_break_3_A_grp, voicegroup002
	.equ	panepon_se_block_break_3_A_pri, 30
	.equ	panepon_se_block_break_3_A_rev, 0
	.equ	panepon_se_block_break_3_A_mvl, 127
	.equ	panepon_se_block_break_3_A_key, 0
	.equ	panepon_se_block_break_3_A_tbs, 1
	.equ	panepon_se_block_break_3_A_exg, 0
	.equ	panepon_se_block_break_3_A_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_3_A
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_3_A_1:
	.byte	KEYSH , panepon_se_block_break_3_A_key+0
	.byte	TEMPO , 150*panepon_se_block_break_3_A_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127
	.byte		N06   , An3 , v127
	.byte	W06
	.byte		        An3 , v044
	.byte	W90
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_3_A:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_3_A_pri	@ Priority
	.byte	panepon_se_block_break_3_A_rev	@ Reverb.

	.word	panepon_se_block_break_3_A_grp

	.word	panepon_se_block_break_3_A_1

	.end

