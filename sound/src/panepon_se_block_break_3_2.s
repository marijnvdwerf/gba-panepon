	.include "MPlayDef.s"

	.equ	panepon_se_block_break_3_2_grp, voicegroup002
	.equ	panepon_se_block_break_3_2_pri, 30
	.equ	panepon_se_block_break_3_2_rev, 0
	.equ	panepon_se_block_break_3_2_mvl, 127
	.equ	panepon_se_block_break_3_2_key, 0
	.equ	panepon_se_block_break_3_2_tbs, 1
	.equ	panepon_se_block_break_3_2_exg, 0
	.equ	panepon_se_block_break_3_2_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_3_2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_3_2_1:
	.byte	KEYSH , panepon_se_block_break_3_2_key+0
	.byte	TEMPO , 150*panepon_se_block_break_3_2_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127
	.byte		N06   , Cs3 , v127
	.byte	W06
	.byte		        Cs3 , v044
	.byte	W90
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_3_2:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_3_2_pri	@ Priority
	.byte	panepon_se_block_break_3_2_rev	@ Reverb.

	.word	panepon_se_block_break_3_2_grp

	.word	panepon_se_block_break_3_2_1

	.end

