	.include "MPlayDef.s"

	.equ	panepon_se_cursor_grp, voicegroup002
	.equ	panepon_se_cursor_pri, 40
	.equ	panepon_se_cursor_rev, 0
	.equ	panepon_se_cursor_mvl, 80
	.equ	panepon_se_cursor_key, 0
	.equ	panepon_se_cursor_tbs, 1
	.equ	panepon_se_cursor_exg, 0
	.equ	panepon_se_cursor_cmp, 1

	.section .rodata
	.global	panepon_se_cursor
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_cursor_1:
	.byte	KEYSH , panepon_se_cursor_key+0
	.byte	TEMPO , 150*panepon_se_cursor_tbs/2
	.byte		VOICE , 0
	.byte		VOL   , 80
	.byte		N01   , Cn3 , v127
	.byte	W03
	.byte		        Cn3 , v016
	.byte	W21
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_cursor_2:
	.byte	KEYSH , panepon_se_cursor_key+0
	.byte		VOICE , 4
	.byte		VOL   , 95*panepon_se_cursor_mvl/mxv
	.byte	W03
	.byte		N01   , Cs5 , v040
	.byte	W21
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_cursor:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_cursor_pri	@ Priority
	.byte	panepon_se_cursor_rev	@ Reverb.

	.word	panepon_se_cursor_grp

	.word	panepon_se_cursor_1
	.word	panepon_se_cursor_2

	.end

