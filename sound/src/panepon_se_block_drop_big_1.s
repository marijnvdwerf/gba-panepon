	.include "MPlayDef.s"

	.equ	panepon_se_block_drop_big_1_grp, voicegroup002
	.equ	panepon_se_block_drop_big_1_pri, 50
	.equ	panepon_se_block_drop_big_1_rev, 0
	.equ	panepon_se_block_drop_big_1_mvl, 100
	.equ	panepon_se_block_drop_big_1_key, 0
	.equ	panepon_se_block_drop_big_1_tbs, 1
	.equ	panepon_se_block_drop_big_1_exg, 0
	.equ	panepon_se_block_drop_big_1_cmp, 1

	.section .rodata
	.global	panepon_se_block_drop_big_1
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_drop_big_1_1:
	.byte	KEYSH , panepon_se_block_drop_big_1_key+0
	.byte	TEMPO , 150*panepon_se_block_drop_big_1_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 90*panepon_se_block_drop_big_1_mvl/mxv
	.byte		N08   , Cn3 , v056
	.byte	W08
	.byte		N03   , As3 , v072
	.byte	W04
	.byte		N07   , En3 , v068
	.byte	W60
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_block_drop_big_1_2:
	.byte	KEYSH , panepon_se_block_drop_big_1_key+0
	.byte		VOICE , 14
	.byte		VOL   , 100
	.byte		N07   , Fn3 , v072
	.byte	W72
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_block_drop_big_1_3:
	.byte	KEYSH , panepon_se_block_drop_big_1_key+0
	.byte		VOL   , 100
	.byte	W08
	.byte		VOICE , 18
	.byte		N03   , As2 , v072
	.byte	W04
	.byte		N08   , An4 , v127
	.byte	W60
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_drop_big_1:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_drop_big_1_pri	@ Priority
	.byte	panepon_se_block_drop_big_1_rev	@ Reverb.

	.word	panepon_se_block_drop_big_1_grp

	.word	panepon_se_block_drop_big_1_1
	.word	panepon_se_block_drop_big_1_2
	.word	panepon_se_block_drop_big_1_3

	.end

