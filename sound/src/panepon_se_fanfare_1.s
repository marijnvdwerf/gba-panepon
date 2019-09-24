	.include "MPlayDef.s"

	.equ	panepon_se_fanfare_1_grp, voicegroup000
	.equ	panepon_se_fanfare_1_pri, 40
	.equ	panepon_se_fanfare_1_rev, 0
	.equ	panepon_se_fanfare_1_mvl, 110
	.equ	panepon_se_fanfare_1_key, 0
	.equ	panepon_se_fanfare_1_tbs, 1
	.equ	panepon_se_fanfare_1_exg, 0
	.equ	panepon_se_fanfare_1_cmp, 1

	.section .rodata
	.global	panepon_se_fanfare_1
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_fanfare_1_1:
	.byte	KEYSH , panepon_se_fanfare_1_key+0
	.byte	TEMPO , 150*panepon_se_fanfare_1_tbs/2
	.byte		VOICE , 94
	.byte		VOL   , 110
	.byte		N05   , Gn3 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		N40   , En4
	.byte	W78
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_fanfare_1_2:
	.byte	KEYSH , panepon_se_fanfare_1_key+0
	.byte		VOICE , 94
	.byte		VOL   , 110
	.byte		N05   , En3 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N40   , Cn4
	.byte	W78
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_fanfare_1_3:
	.byte	KEYSH , panepon_se_fanfare_1_key+0
	.byte		VOICE , 95
	.byte		VOL   , 58*panepon_se_fanfare_1_mvl/mxv
	.byte		N05   , Cn3 , v064
	.byte	W06
	.byte		        Cn3 , v052
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N36   , Gn3 , v044
	.byte	W78
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_fanfare_1:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_fanfare_1_pri	@ Priority
	.byte	panepon_se_fanfare_1_rev	@ Reverb.

	.word	panepon_se_fanfare_1_grp

	.word	panepon_se_fanfare_1_1
	.word	panepon_se_fanfare_1_2
	.word	panepon_se_fanfare_1_3

	.end

