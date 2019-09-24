	.include "MPlayDef.s"

	.equ	panepon_se_block_break_2_3_grp, voicegroup002
	.equ	panepon_se_block_break_2_3_pri, 30
	.equ	panepon_se_block_break_2_3_rev, 0
	.equ	panepon_se_block_break_2_3_mvl, 120
	.equ	panepon_se_block_break_2_3_key, 0
	.equ	panepon_se_block_break_2_3_tbs, 1
	.equ	panepon_se_block_break_2_3_exg, 0
	.equ	panepon_se_block_break_2_3_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_2_3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_2_3_1:
	.byte	KEYSH , panepon_se_block_break_2_3_key+0
	.byte	TEMPO , 150*panepon_se_block_break_2_3_tbs/2
	.byte		VOICE , 11
	.byte		VOL   , 120
	.byte		N04   , Dn3 , v127
	.byte	W04
	.byte		N02   , Dn3 , v032
	.byte	W02
	.byte		N04   , Dn4 , v096
	.byte	W04
	.byte		        Dn3 , v072
	.byte	W84
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_2_3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_2_3_pri	@ Priority
	.byte	panepon_se_block_break_2_3_rev	@ Reverb.

	.word	panepon_se_block_break_2_3_grp

	.word	panepon_se_block_break_2_3_1

	.end

