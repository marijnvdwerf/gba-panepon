	.include "MPlayDef.s"

	.equ	panepon_se_block_break_1_6_grp, voicegroup002
	.equ	panepon_se_block_break_1_6_pri, 30
	.equ	panepon_se_block_break_1_6_rev, 0
	.equ	panepon_se_block_break_1_6_mvl, 90
	.equ	panepon_se_block_break_1_6_key, 0
	.equ	panepon_se_block_break_1_6_tbs, 1
	.equ	panepon_se_block_break_1_6_exg, 0
	.equ	panepon_se_block_break_1_6_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_1_6
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_1_6_1:
	.byte	KEYSH , panepon_se_block_break_1_6_key+0
	.byte	TEMPO , 180*panepon_se_block_break_1_6_tbs/2
	.byte		VOICE , 5
	.byte		VOL   , 90
	.byte		N03   , Fs4 , v127
	.byte	W06
	.byte		N05   , Fs3
	.byte	W05
	.byte		N03   , Fs3 , v020
	.byte	W13
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_1_6:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_1_6_pri	@ Priority
	.byte	panepon_se_block_break_1_6_rev	@ Reverb.

	.word	panepon_se_block_break_1_6_grp

	.word	panepon_se_block_break_1_6_1

	.end

