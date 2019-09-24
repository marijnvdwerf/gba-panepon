	.include "MPlayDef.s"

	.equ	panepon_se_fanfare_3_grp, voicegroup000
	.equ	panepon_se_fanfare_3_pri, 40
	.equ	panepon_se_fanfare_3_rev, 0
	.equ	panepon_se_fanfare_3_mvl, 110
	.equ	panepon_se_fanfare_3_key, 0
	.equ	panepon_se_fanfare_3_tbs, 1
	.equ	panepon_se_fanfare_3_exg, 0
	.equ	panepon_se_fanfare_3_cmp, 1

	.section .rodata
	.global	panepon_se_fanfare_3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_fanfare_3_1:
	.byte	KEYSH , panepon_se_fanfare_3_key+0
	.byte	TEMPO , 150*panepon_se_fanfare_3_tbs/2
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
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Cn5
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		        Bn4
	.byte	W06
	.byte		N42   , Dn5
	.byte	W06
	.byte	W96
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_fanfare_3_2:
	.byte	KEYSH , panepon_se_fanfare_3_key+0
	.byte		VOICE , 95
	.byte		VOL   , 64*panepon_se_fanfare_3_mvl/mxv
	.byte		N04   , En3 , v076
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N05   , Gn3
	.byte	W06
	.byte		        En3
	.byte	W06
	.byte		N04   , Gn3
	.byte	W06
	.byte		N05   , Cn4
	.byte	W06
	.byte		        Gn3
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Cn4
	.byte	W06
	.byte		        En4
	.byte	W06
	.byte		        Gn4
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N36   , Bn4 , v032
	.byte	W06
	.byte	W96
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_fanfare_3_3:
	.byte	KEYSH , panepon_se_fanfare_3_key+0
	.byte		VOICE , 94
	.byte		VOL   , 110
	.byte		N05   , Cn3 , v127
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
	.byte		        En3
	.byte	W06
	.byte		        Gn3
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
	.byte		N05
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N42   , Gn4
	.byte	W06
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_fanfare_3:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_fanfare_3_pri	@ Priority
	.byte	panepon_se_fanfare_3_rev	@ Reverb.

	.word	panepon_se_fanfare_3_grp

	.word	panepon_se_fanfare_3_1
	.word	panepon_se_fanfare_3_2
	.word	panepon_se_fanfare_3_3

	.end

