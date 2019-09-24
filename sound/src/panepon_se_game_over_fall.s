	.include "MPlayDef.s"

	.equ	panepon_se_game_over_fall_grp, voicegroup002
	.equ	panepon_se_game_over_fall_pri, 50
	.equ	panepon_se_game_over_fall_rev, 0
	.equ	panepon_se_game_over_fall_mvl, 65
	.equ	panepon_se_game_over_fall_key, 0
	.equ	panepon_se_game_over_fall_tbs, 1
	.equ	panepon_se_game_over_fall_exg, 0
	.equ	panepon_se_game_over_fall_cmp, 1

	.section .rodata
	.global	panepon_se_game_over_fall
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_game_over_fall_1:
	.byte	KEYSH , panepon_se_game_over_fall_key+0
	.byte	TEMPO , 150*panepon_se_game_over_fall_tbs/2
	.byte		VOICE , 10
	.byte		BENDR , 24
	.byte		VOL   , 65
	.byte		BEND  , c_v+63
	.byte		N24   , Gn2 , v096
	.byte	W01
	.byte		BEND  , c_v+63
	.byte	W01
	.byte		        c_v+63
	.byte	W01
	.byte		        c_v+61
	.byte	W01
	.byte		        c_v+60
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+49
	.byte	W01
	.byte		        c_v+45
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+36
	.byte	W01
	.byte		        c_v+31
	.byte	W01
	.byte		        c_v+26
	.byte	W01
	.byte		        c_v+20
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v-1
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-17
	.byte	W01
	.byte		        c_v-26
	.byte	W01
	.byte		        c_v-35
	.byte	W01
	.byte		        c_v-44
	.byte	W01
	.byte		        c_v-54
	.byte	W01
	.byte		        c_v-64
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_game_over_fall:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_game_over_fall_pri	@ Priority
	.byte	panepon_se_game_over_fall_rev	@ Reverb.

	.word	panepon_se_game_over_fall_grp

	.word	panepon_se_game_over_fall_1

	.end

