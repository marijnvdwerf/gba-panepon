	.include "MPlayDef.s"

	.equ	panepon_se_block_drop_big_2_grp, voicegroup002
	.equ	panepon_se_block_drop_big_2_pri, 50
	.equ	panepon_se_block_drop_big_2_rev, 0
	.equ	panepon_se_block_drop_big_2_mvl, 100
	.equ	panepon_se_block_drop_big_2_key, 0
	.equ	panepon_se_block_drop_big_2_tbs, 1
	.equ	panepon_se_block_drop_big_2_exg, 0
	.equ	panepon_se_block_drop_big_2_cmp, 1

	.section .rodata
	.global	panepon_se_block_drop_big_2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_drop_big_2_1:
	.byte	KEYSH , panepon_se_block_drop_big_2_key+0
	.byte	TEMPO , 150*panepon_se_block_drop_big_2_tbs/2
	.byte		VOICE , 27
	.byte		VOL   , 90*panepon_se_block_drop_big_2_mvl/mxv
	.byte		N05   , Cn3 , v084
	.byte	W06
	.byte		N04   , Cn3 , v092
	.byte	W06
	.byte		        Cn3 , v108
	.byte	W05
	.byte		        Bn2 , v068
	.byte	W04
	.byte		N04
	.byte	W48
	.byte	W03
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_block_drop_big_2_2:
	.byte	KEYSH , panepon_se_block_drop_big_2_key+0
	.byte		VOICE , 14
	.byte		VOL   , 100*panepon_se_block_drop_big_2_mvl/mxv
	.byte		N08   , Fn3 , v088
	.byte	W72
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_block_drop_big_2_3:
	.byte	KEYSH , panepon_se_block_drop_big_2_key+0
	.byte		VOL   , 100
	.byte	W08
	.byte		VOICE , 18
	.byte		N02   , An5 , v076
	.byte	W02
	.byte		        Gs5
	.byte	W04
	.byte		        An2 , v072
	.byte	W02
	.byte		N04   , Gs2 , v084
	.byte	W04
	.byte		N07   , Gs2 , v127
	.byte	W52
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_drop_big_2:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_drop_big_2_pri	@ Priority
	.byte	panepon_se_block_drop_big_2_rev	@ Reverb.

	.word	panepon_se_block_drop_big_2_grp

	.word	panepon_se_block_drop_big_2_1
	.word	panepon_se_block_drop_big_2_2
	.word	panepon_se_block_drop_big_2_3

	.end

