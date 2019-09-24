	.include "MPlayDef.s"

	.equ	panepon_se_block_break_4_4_grp, voicegroup002
	.equ	panepon_se_block_break_4_4_pri, 30
	.equ	panepon_se_block_break_4_4_rev, 0
	.equ	panepon_se_block_break_4_4_mvl, 100
	.equ	panepon_se_block_break_4_4_key, 0
	.equ	panepon_se_block_break_4_4_tbs, 1
	.equ	panepon_se_block_break_4_4_exg, 0
	.equ	panepon_se_block_break_4_4_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_4_4
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_4_4_1:
	.byte		VOL   , 100
	.byte	KEYSH , panepon_se_block_break_4_4_key+0
	.byte	TEMPO , 150*panepon_se_block_break_4_4_tbs/2
	.byte		VOICE , 13
	.byte		N05   , Ds3 , v127
	.byte	W05
	.byte		        Ds3 , v016
	.byte	W90
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_4_4:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_4_4_pri	@ Priority
	.byte	panepon_se_block_break_4_4_rev	@ Reverb.

	.word	panepon_se_block_break_4_4_grp

	.word	panepon_se_block_break_4_4_1

	.end

