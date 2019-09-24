	.include "MPlayDef.s"

	.equ	panepon_se_block_break_4_5_grp, voicegroup002
	.equ	panepon_se_block_break_4_5_pri, 30
	.equ	panepon_se_block_break_4_5_rev, 0
	.equ	panepon_se_block_break_4_5_mvl, 100
	.equ	panepon_se_block_break_4_5_key, 0
	.equ	panepon_se_block_break_4_5_tbs, 1
	.equ	panepon_se_block_break_4_5_exg, 0
	.equ	panepon_se_block_break_4_5_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_4_5
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_4_5_1:
	.byte		VOL   , 100
	.byte	KEYSH , panepon_se_block_break_4_5_key+0
	.byte	TEMPO , 150*panepon_se_block_break_4_5_tbs/2
	.byte		VOICE , 13
	.byte		N05   , En3 , v127
	.byte	W05
	.byte		        En3 , v016
	.byte	W90
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_4_5:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_4_5_pri	@ Priority
	.byte	panepon_se_block_break_4_5_rev	@ Reverb.

	.word	panepon_se_block_break_4_5_grp

	.word	panepon_se_block_break_4_5_1

	.end

