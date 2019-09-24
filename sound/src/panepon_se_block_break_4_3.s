	.include "MPlayDef.s"

	.equ	panepon_se_block_break_4_3_grp, voicegroup002
	.equ	panepon_se_block_break_4_3_pri, 30
	.equ	panepon_se_block_break_4_3_rev, 0
	.equ	panepon_se_block_break_4_3_mvl, 100
	.equ	panepon_se_block_break_4_3_key, 0
	.equ	panepon_se_block_break_4_3_tbs, 1
	.equ	panepon_se_block_break_4_3_exg, 0
	.equ	panepon_se_block_break_4_3_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_4_3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_4_3_1:
	.byte		VOL   , 100
	.byte	KEYSH , panepon_se_block_break_4_3_key+0
	.byte	TEMPO , 150*panepon_se_block_break_4_3_tbs/2
	.byte		VOICE , 13
	.byte		N05   , Dn3 , v127
	.byte	W05
	.byte		        Dn3 , v016
	.byte	W90
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_4_3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_4_3_pri	@ Priority
	.byte	panepon_se_block_break_4_3_rev	@ Reverb.

	.word	panepon_se_block_break_4_3_grp

	.word	panepon_se_block_break_4_3_1

	.end

