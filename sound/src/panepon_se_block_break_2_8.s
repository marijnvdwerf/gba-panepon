	.include "MPlayDef.s"

	.equ	panepon_se_block_break_2_8_grp, voicegroup002
	.equ	panepon_se_block_break_2_8_pri, 30
	.equ	panepon_se_block_break_2_8_rev, 0
	.equ	panepon_se_block_break_2_8_mvl, 120
	.equ	panepon_se_block_break_2_8_key, 0
	.equ	panepon_se_block_break_2_8_tbs, 1
	.equ	panepon_se_block_break_2_8_exg, 0
	.equ	panepon_se_block_break_2_8_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_2_8
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_2_8_1:
	.byte	KEYSH , panepon_se_block_break_2_8_key+0
	.byte	TEMPO , 150*panepon_se_block_break_2_8_tbs/2
	.byte		VOICE , 11
	.byte		VOL   , 120
	.byte		N04   , Gn3 , v127
	.byte	W04
	.byte		N02   , Gn3 , v032
	.byte	W02
	.byte		N04   , Gn4 , v096
	.byte	W04
	.byte		        Gn3 , v072
	.byte	W84
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_2_8:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_2_8_pri	@ Priority
	.byte	panepon_se_block_break_2_8_rev	@ Reverb.

	.word	panepon_se_block_break_2_8_grp

	.word	panepon_se_block_break_2_8_1

	.end

