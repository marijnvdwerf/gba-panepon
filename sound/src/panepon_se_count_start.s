	.include "MPlayDef.s"

	.equ	panepon_se_count_start_grp, voicegroup000
	.equ	panepon_se_count_start_pri, 50
	.equ	panepon_se_count_start_rev, 0
	.equ	panepon_se_count_start_mvl, 120
	.equ	panepon_se_count_start_key, 0
	.equ	panepon_se_count_start_tbs, 1
	.equ	panepon_se_count_start_exg, 0
	.equ	panepon_se_count_start_cmp, 1

	.section .rodata
	.global	panepon_se_count_start
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_count_start_1:
	.byte	KEYSH , panepon_se_count_start_key+0
	.byte	TEMPO , 150*panepon_se_count_start_tbs/2
	.byte		VOICE , 13
	.byte		VOL   , 120
	.byte	W01
	.byte		N44   , As5 , v127
	.byte	W68
	.byte	W03
	.byte	W72
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_count_start_2:
	.byte	KEYSH , panepon_se_count_start_key+0
	.byte		VOICE , 88
	.byte		VOL   , 120
	.byte		N01   , An5 , v032
	.byte	W01
	.byte		N44   , As5 , v127
	.byte	W68
	.byte	W03
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_count_start:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_count_start_pri	@ Priority
	.byte	panepon_se_count_start_rev	@ Reverb.

	.word	panepon_se_count_start_grp

	.word	panepon_se_count_start_1
	.word	panepon_se_count_start_2

	.end

