	.include "MPlayDef.s"

	.equ	panepon_se_block_break_2_9_grp, voicegroup002
	.equ	panepon_se_block_break_2_9_pri, 30
	.equ	panepon_se_block_break_2_9_rev, 0
	.equ	panepon_se_block_break_2_9_mvl, 120
	.equ	panepon_se_block_break_2_9_key, 0
	.equ	panepon_se_block_break_2_9_tbs, 1
	.equ	panepon_se_block_break_2_9_exg, 0
	.equ	panepon_se_block_break_2_9_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_2_9
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_2_9_1:
	.byte	KEYSH , panepon_se_block_break_2_9_key+0
	.byte	TEMPO , 150*panepon_se_block_break_2_9_tbs/2
	.byte		VOICE , 11
	.byte		VOL   , 120
	.byte		N04   , Gs3 , v127
	.byte	W04
	.byte		N02   , Gs3 , v032
	.byte	W02
	.byte		N04   , Gs4 , v096
	.byte	W04
	.byte		        Gs3 , v072
	.byte	W84
	.byte	W02
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_2_9:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_2_9_pri	@ Priority
	.byte	panepon_se_block_break_2_9_rev	@ Reverb.

	.word	panepon_se_block_break_2_9_grp

	.word	panepon_se_block_break_2_9_1

	.end

