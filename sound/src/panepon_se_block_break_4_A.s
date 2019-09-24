	.include "MPlayDef.s"

	.equ	panepon_se_block_break_4_A_grp, voicegroup002
	.equ	panepon_se_block_break_4_A_pri, 30
	.equ	panepon_se_block_break_4_A_rev, 0
	.equ	panepon_se_block_break_4_A_mvl, 100
	.equ	panepon_se_block_break_4_A_key, 0
	.equ	panepon_se_block_break_4_A_tbs, 1
	.equ	panepon_se_block_break_4_A_exg, 0
	.equ	panepon_se_block_break_4_A_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_4_A
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_4_A_1:
	.byte		VOL   , 100
	.byte	KEYSH , panepon_se_block_break_4_A_key+0
	.byte	TEMPO , 150*panepon_se_block_break_4_A_tbs/2
	.byte		VOICE , 13
	.byte		N05   , An3 , v127
	.byte	W05
	.byte		        An3 , v016
	.byte	W90
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_4_A:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_4_A_pri	@ Priority
	.byte	panepon_se_block_break_4_A_rev	@ Reverb.

	.word	panepon_se_block_break_4_A_grp

	.word	panepon_se_block_break_4_A_1

	.end

