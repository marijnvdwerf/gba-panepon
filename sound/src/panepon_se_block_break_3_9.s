	.include "MPlayDef.s"

	.equ	panepon_se_block_break_3_9_grp, voicegroup002
	.equ	panepon_se_block_break_3_9_pri, 30
	.equ	panepon_se_block_break_3_9_rev, 0
	.equ	panepon_se_block_break_3_9_mvl, 127
	.equ	panepon_se_block_break_3_9_key, 0
	.equ	panepon_se_block_break_3_9_tbs, 1
	.equ	panepon_se_block_break_3_9_exg, 0
	.equ	panepon_se_block_break_3_9_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_3_9
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_3_9_1:
	.byte	KEYSH , panepon_se_block_break_3_9_key+0
	.byte	TEMPO , 150*panepon_se_block_break_3_9_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127
	.byte		N06   , Gs3 , v127
	.byte	W06
	.byte		        Gs3 , v044
	.byte	W90
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_3_9:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_3_9_pri	@ Priority
	.byte	panepon_se_block_break_3_9_rev	@ Reverb.

	.word	panepon_se_block_break_3_9_grp

	.word	panepon_se_block_break_3_9_1

	.end

