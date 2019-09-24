	.include "MPlayDef.s"

	.equ	panepon_se_stop_voice_e4_grp, voicegroup002
	.equ	panepon_se_stop_voice_e4_pri, 40
	.equ	panepon_se_stop_voice_e4_rev, 0
	.equ	panepon_se_stop_voice_e4_mvl, 110
	.equ	panepon_se_stop_voice_e4_key, 0
	.equ	panepon_se_stop_voice_e4_tbs, 1
	.equ	panepon_se_stop_voice_e4_exg, 0
	.equ	panepon_se_stop_voice_e4_cmp, 1

	.section .rodata
	.global	panepon_se_stop_voice_e4
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_stop_voice_e4_1:
	.byte	KEYSH , panepon_se_stop_voice_e4_key+0
	.byte	TEMPO , 150*panepon_se_stop_voice_e4_tbs/2
	.byte		VOICE , 28
	.byte		VOL   , 110
	.byte		BEND  , c_v+0
	.byte		N06   , Cn3 , v127
	.byte	W06
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_stop_voice_e4_2:
	.byte	KEYSH , panepon_se_stop_voice_e4_key+0
	.byte		VOICE , 29
	.byte		VOL   , 110
	.byte		BEND  , c_v+0
	.byte	W09
	.byte		N15   , Cn3 , v127
	.byte	W15
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_stop_voice_e4:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_stop_voice_e4_pri	@ Priority
	.byte	panepon_se_stop_voice_e4_rev	@ Reverb.

	.word	panepon_se_stop_voice_e4_grp

	.word	panepon_se_stop_voice_e4_1
	.word	panepon_se_stop_voice_e4_2

	.end

