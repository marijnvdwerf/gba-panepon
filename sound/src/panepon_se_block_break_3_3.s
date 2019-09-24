	.include "MPlayDef.s"

	.equ	panepon_se_block_break_3_3_grp, voicegroup002
	.equ	panepon_se_block_break_3_3_pri, 30
	.equ	panepon_se_block_break_3_3_rev, 0
	.equ	panepon_se_block_break_3_3_mvl, 127
	.equ	panepon_se_block_break_3_3_key, 0
	.equ	panepon_se_block_break_3_3_tbs, 1
	.equ	panepon_se_block_break_3_3_exg, 0
	.equ	panepon_se_block_break_3_3_cmp, 1

	.section .rodata
	.global	panepon_se_block_break_3_3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_break_3_3_1:
	.byte	KEYSH , panepon_se_block_break_3_3_key+0
	.byte	TEMPO , 150*panepon_se_block_break_3_3_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 127
	.byte		N06   , Dn3 , v127
	.byte	W06
	.byte		        Dn3 , v044
	.byte	W90
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_break_3_3:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_break_3_3_pri	@ Priority
	.byte	panepon_se_block_break_3_3_rev	@ Reverb.

	.word	panepon_se_block_break_3_3_grp

	.word	panepon_se_block_break_3_3_1

	.end

