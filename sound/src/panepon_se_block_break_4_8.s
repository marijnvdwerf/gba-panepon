	.include "MPlayDef.s"

	.equ	panepon_se_block_break_4_8_grp, voicegroup002
	.equ	panepon_se_block_break_4_8_pri, 30
	.equ	panepon_se_block_break_4_8_rev, 0
	.equ	panepon_se_block_break_4_8_mvl, 100
	.equ	panepon_se_block_break_4_8_key, 0
	.equ	panepon_se_block_break_4_8_tbs, 1
	.equ	panepon_se_block_break_4_8_exg, 0
	.equ	panepon_se_block_break_4_8_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_4_8
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_4_8_1:
	.byte		VOL   , 100
	.byte	KEYSH , panepon_se_block_break_4_8_key+0
	.byte	TEMPO , 150*panepon_se_block_break_4_8_tbs/2
	.byte		VOICE , 13
	.byte		N05   , Gn3 , v127
	.byte	W05
	.byte		        Gn3 , v016
	.byte	W90
	.byte	W01
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_4_8:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_4_8_pri	@ Priority
	.byte	panepon_se_block_break_4_8_rev	@ Reverb.

	.word	panepon_se_block_break_4_8_grp

	.word	panepon_se_block_break_4_8_1

	.end

