	.include "MPlayDef.s"

	.equ	panepon_se_chain_voice_e_grp, voicegroup002
	.equ	panepon_se_chain_voice_e_pri, 40
	.equ	panepon_se_chain_voice_e_rev, 0
	.equ	panepon_se_chain_voice_e_mvl, 110
	.equ	panepon_se_chain_voice_e_key, 0
	.equ	panepon_se_chain_voice_e_tbs, 1
	.equ	panepon_se_chain_voice_e_exg, 0
	.equ	panepon_se_chain_voice_e_cmp, 1

	.section .rodata
	.global	panepon_se_chain_voice_e
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_chain_voice_e_1:
	.byte	KEYSH , panepon_se_chain_voice_e_key+0
	.byte	TEMPO , 150*panepon_se_chain_voice_e_tbs/2
	.byte		VOICE , 24
	.byte		VOL   , 110
	.byte		BEND  , c_v+0
	.byte		N09   , Cn3 , v127
	.byte	W09
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_chain_voice_e_2:
	.byte	KEYSH , panepon_se_chain_voice_e_key+0
	.byte		VOICE , 25
	.byte		VOL   , 110
	.byte		BEND  , c_v+0
	.byte	W10
	.byte		N03   , Cn3 , v127
	.byte	W04
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_chain_voice_e_3:
	.byte	KEYSH , panepon_se_chain_voice_e_key+0
	.byte		VOICE , 26
	.byte		VOL   , 110
	.byte		BEND  , c_v+0
	.byte	W15
	.byte		N24   , Cn3 , v127
	.byte	W24
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_chain_voice_e:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_chain_voice_e_pri	@ Priority
	.byte	panepon_se_chain_voice_e_rev	@ Reverb.

	.word	panepon_se_chain_voice_e_grp

	.word	panepon_se_chain_voice_e_1
	.word	panepon_se_chain_voice_e_2
	.word	panepon_se_chain_voice_e_3

	.end

