	.include "MPlayDef.s"

	.equ	cnt_bgm_stop_grp, voicegroup000
	.equ	cnt_bgm_stop_pri, 10
	.equ	cnt_bgm_stop_rev, 128
	.equ	cnt_bgm_stop_mvl, 0
	.equ	cnt_bgm_stop_key, 0
	.equ	cnt_bgm_stop_tbs, 1
	.equ	cnt_bgm_stop_exg, 0
	.equ	cnt_bgm_stop_cmp, 1

	.section .rodata
	.global	cnt_bgm_stop
	.align	2

@******************************************************@
	.align	2

cnt_bgm_stop:
	.byte	0	@ NumTrks
	.byte	0	@ NumBlks
	.byte	cnt_bgm_stop_pri	@ Priority
	.byte	cnt_bgm_stop_rev	@ Reverb.

	.word	cnt_bgm_stop_grp


	.end

