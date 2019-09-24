	.include "MPlayDef.s"

	.equ	panepon_se_fanfare_2_grp, voicegroup000
	.equ	panepon_se_fanfare_2_pri, 40
	.equ	panepon_se_fanfare_2_rev, 0
	.equ	panepon_se_fanfare_2_mvl, 110
	.equ	panepon_se_fanfare_2_key, 0
	.equ	panepon_se_fanfare_2_tbs, 1
	.equ	panepon_se_fanfare_2_exg, 0
	.equ	panepon_se_fanfare_2_cmp, 1

	.section .rodata
	.global	panepon_se_fanfare_2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_fanfare_2_1:
	.byte	KEYSH , panepon_se_fanfare_2_key+0
	.byte	TEMPO , 150*panepon_se_fanfare_2_tbs/2
	.byte		VOICE , 94
	.byte		VOL   , 110
	.byte		N05   , Gn3 , v127
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Dn4
	.byte	W06
	.byte		N36   , Gn4
	.byte	W42
	.byte	W96
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_fanfare_2_2:
	.byte	KEYSH , panepon_se_fanfare_2_key+0
	.byte		VOICE , 94
	.byte		VOL   , 98
	.byte		N05   , En3 , v104
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		N36   , Dn4
	.byte	W42
	.byte	W96
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_fanfare_2_3:
	.byte	KEYSH , panepon_se_fanfare_2_key+0
	.byte		VOICE , 95
	.byte		VOL   , 64*panepon_se_fanfare_2_mvl/mxv
	.byte		N05   , Cn3 , v056
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Cn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Dn3
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		N32   , Bn3 , v048
	.byte	W42
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_fanfare_2:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_fanfare_2_pri	@ Priority
	.byte	panepon_se_fanfare_2_rev	@ Reverb.

	.word	panepon_se_fanfare_2_grp

	.word	panepon_se_fanfare_2_1
	.word	panepon_se_fanfare_2_2
	.word	panepon_se_fanfare_2_3

	.end

