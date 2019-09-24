	.include "MPlayDef.s"

	.equ	panepon_se_sys_pause_grp, voicegroup000
	.equ	panepon_se_sys_pause_pri, 40
	.equ	panepon_se_sys_pause_rev, 0
	.equ	panepon_se_sys_pause_mvl, 120
	.equ	panepon_se_sys_pause_key, 0
	.equ	panepon_se_sys_pause_tbs, 1
	.equ	panepon_se_sys_pause_exg, 0
	.equ	panepon_se_sys_pause_cmp, 1

	.section .rodata
	.global	panepon_se_sys_pause
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_sys_pause_1:
	.byte	KEYSH , panepon_se_sys_pause_key+0
	.byte	TEMPO , 150*panepon_se_sys_pause_tbs/2
	.byte		VOICE , 12
	.byte		VOL   , 120
	.byte		N02   , Gn5 , v127
	.byte	W02
	.byte		        Gn4 , v088
	.byte	W01
	.byte		N01   , Cn5 , v020
	.byte	W02
	.byte		N02   , Gn5 , v044
	.byte	W02
	.byte		        Gn4 , v028
	.byte	W01
	.byte		N01   , Cn5 , v020
	.byte	W02
	.byte		N02   , Gn5
	.byte	W02
	.byte		        Gn4 , v032
	.byte	W01
	.byte		N01   , Cn5 , v020
	.byte	W05
	.byte		N02   , Gn5 , v052
	.byte	W02
	.byte		        Gn4 , v036
	.byte	W01
	.byte		N01   , Cn5 , v008
	.byte	W02
	.byte		N02   , Gn5 , v020
	.byte	W02
	.byte		        Gn4 , v012
	.byte	W01
	.byte		N01   , Cn5 , v008
	.byte	W02
	.byte		N02   , Gn5
	.byte	W02
	.byte		        Gn4 , v012
	.byte	W01
	.byte		N01   , Cn5 , v008
	.byte	W06
	.byte		N02   , Gn5 , v028
	.byte	W02
	.byte		        Gn4 , v020
	.byte	W01
	.byte		N01   , Cn5 , v004
	.byte	W02
	.byte		N02   , Gn5 , v008
	.byte	W02
	.byte		        Gn4
	.byte	W01
	.byte		N01   , Cn5 , v004
	.byte	W02
	.byte		N02   , Gn5
	.byte	W02
	.byte		        Gn4 , v008
	.byte	W01
	.byte		N01   , Cn5 , v004
	.byte	W22
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_sys_pause:
	.byte	1	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_sys_pause_pri	@ Priority
	.byte	panepon_se_sys_pause_rev	@ Reverb.

	.word	panepon_se_sys_pause_grp

	.word	panepon_se_sys_pause_1

	.end

