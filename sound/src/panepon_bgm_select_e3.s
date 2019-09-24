	.include "MPlayDef.s"

	.equ	panepon_bgm_select_e3_grp, voicegroup000
	.equ	panepon_bgm_select_e3_pri, 0
	.equ	panepon_bgm_select_e3_rev, 158
	.equ	panepon_bgm_select_e3_mvl, 100
	.equ	panepon_bgm_select_e3_key, 0
	.equ	panepon_bgm_select_e3_tbs, 1
	.equ	panepon_bgm_select_e3_exg, 0
	.equ	panepon_bgm_select_e3_cmp, 1

	.section .rodata
	.global	panepon_bgm_select_e3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_select_e3_1:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_1_B1:
	.byte	TEMPO , 94*panepon_bgm_select_e3_tbs/2
	.byte		VOICE , 92
	.byte		MOD   , 0
	.byte		VOL   , 100
	.byte		N05   , En4 , v088
	.byte		N05   , Cn5
	.byte	W06
	.byte		        En4
	.byte		N05   , Cn5
	.byte	W12
	.byte		        Cn4
	.byte		N05   , Gn4
	.byte	W06
	.byte		        Cn4
	.byte		N05   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W06
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W12
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W12
	.byte		        En4
	.byte		N05   , Gn4
	.byte	W06
	.byte		        Dn4
	.byte		N05   , Fn4
	.byte	W12
	.byte		N05
	.byte		N05   , An4
	.byte	W12
	.byte		        En4
	.byte		N05   , Gn4
	.byte	W54
	.byte		        An3 , v127
	.byte		N05   , Fn4
	.byte	W12
	.byte		        An3
	.byte		N05   , Fn4
	.byte	W06
	.byte		        Gn3
	.byte		N05   , En4
	.byte	W12
	.byte		        Fn3
	.byte		N05   , Dn4
	.byte	W12
	.byte		        En4 , v084
	.byte		N05   , Cn5
	.byte	W06
	.byte		        En4
	.byte		N05   , Cn5
	.byte	W12
	.byte		        Cn4
	.byte		N05   , Gn4
	.byte	W06
	.byte		        Cn4
	.byte		N05   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W06
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W12
	.byte		        Dn4
	.byte		N05   , Fn4
	.byte	W06
	.byte		        En4
	.byte		N05   , Gn4
	.byte	W06
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W06
	.byte		        Gn4
	.byte		N05   , Bn4
	.byte	W06
	.byte		        Fs4
	.byte		N05   , As4
	.byte	W06
	.byte		        Fn4
	.byte		N05   , An4
	.byte	W06
	.byte		        Fn4
	.byte		N05   , Gs4
	.byte	W06
	.byte		N02   , En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v080
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v072
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v064
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v060
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v048
	.byte	W02
	.byte		        En4
	.byte	W01
	.byte		        Gn4 , v044
	.byte	W02
	.byte		        En4 , v036
	.byte	W56
	.byte	W01
	.byte	GOTO
	 .word	panepon_bgm_select_e3_1_B1
panepon_bgm_select_e3_1_B2:
	.byte	W96
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_select_e3_2:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_2_B1:
	.byte		VOICE , 34
	.byte		VOL   , 100
	.byte		PAN   , c_v+0
	.byte		N12   , Cn2 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
_20369B5:
	.byte		N12   , En2 , v127
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , An1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte	PEND
	.byte		N12   , Cn2
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Dn2
	.byte	W18
	.byte		N06
	.byte	W06
	.byte		N12   , Gn1
	.byte	W18
	.byte		N06
	.byte	W06
	.byte	PATT
	 .word	_20369B5
	.byte	GOTO
	 .word	panepon_bgm_select_e3_2_B1
panepon_bgm_select_e3_2_B2:
	.byte	W96
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_bgm_select_e3_3:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_3_B1:
	.byte		VOICE , 85
	.byte		VOL   , 74*panepon_bgm_select_e3_mvl/mxv
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
_2036A2B:
	.byte		N01   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	_2036A2B
	.byte		N01   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N01
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N05   , Bn4 , v024
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		N02   , An4 , v028
	.byte	W06
	.byte		N06   , Bn4 , v024
	.byte	W06
	.byte	GOTO
	 .word	panepon_bgm_select_e3_3_B1
panepon_bgm_select_e3_3_B2:
	.byte	W96
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

panepon_bgm_select_e3_4:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_4_B1:
	.byte		VOICE , 80
	.byte		VOL   , 80*panepon_bgm_select_e3_mvl/mxv
	.byte		PAN   , c_v-20
	.byte		N02   , Gn4 , v080
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W12
_2036AC8:
	.byte		N02   , Gn4 , v080
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	_2036AC8
	.byte	PATT
	 .word	_2036AC8
	.byte	GOTO
	 .word	panepon_bgm_select_e3_4_B1
panepon_bgm_select_e3_4_B2:
	.byte	W96
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

panepon_bgm_select_e3_5:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_5_B1:
	.byte		VOICE , 80
	.byte		VOL   , 80*panepon_bgm_select_e3_mvl/mxv
	.byte		PAN   , c_v+20
	.byte		N02   , En4 , v076
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		N02
	.byte	W12
_2036B0A:
	.byte		N02   , Dn4 , v076
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		        Cs4
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		N02
	.byte	W12
	.byte	PEND
	.byte		        En4
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		N02
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N02
	.byte	W12
	.byte		N02
	.byte	W06
	.byte		        Bn3
	.byte	W12
	.byte		N02
	.byte	W12
	.byte	PATT
	 .word	_2036B0A
	.byte	GOTO
	 .word	panepon_bgm_select_e3_5_B1
panepon_bgm_select_e3_5_B2:
	.byte	W96
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

panepon_bgm_select_e3_6:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_6_B1:
	.byte		VOICE , 91
	.byte		VOL   , 100
	.byte		PAN   , c_v+0
	.byte		N03   , Bn3 , v112
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W12
	.byte		N03
	.byte	W12
_2036B59:
	.byte		N03   , Bn3 , v112
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		        An3
	.byte	W06
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W12
	.byte		N03
	.byte	W06
	.byte		        Gn3
	.byte	W12
	.byte		N03
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	_2036B59
	.byte	PATT
	 .word	_2036B59
	.byte	GOTO
	 .word	panepon_bgm_select_e3_6_B1
panepon_bgm_select_e3_6_B2:
	.byte	W96
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

panepon_bgm_select_e3_7:
	.byte	KEYSH , panepon_bgm_select_e3_key+0
panepon_bgm_select_e3_7_B1:
	.byte		VOICE , 126
	.byte		PAN   , c_v+0
	.byte		VOL   , 100
	.byte		N06   , Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W05
	.byte		        Cs1 , v072
	.byte	W07
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W05
	.byte		        Cs1 , v072
	.byte	W07
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Ds2
	.byte	W05
	.byte		        Cs1 , v072
	.byte	W13
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W05
	.byte		        Cs1 , v072
	.byte	W07
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W11
	.byte		        Cs1 , v072
	.byte	W07
	.byte		        Ds2 , v080
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W06
	.byte		        Ds2 , v080
	.byte	W12
	.byte		        Cs1 , v072
	.byte	W12
	.byte		        Ds2 , v080
	.byte	W05
	.byte		        Cs1 , v072
	.byte	W07
	.byte		        Cn1 , v080
	.byte	W06
	.byte		        Ds2
	.byte	W06
	.byte		        Cs1 , v072
	.byte	W12
	.byte	GOTO
	 .word	panepon_bgm_select_e3_7_B1
panepon_bgm_select_e3_7_B2:
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_select_e3:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_select_e3_pri	@ Priority
	.byte	panepon_bgm_select_e3_rev	@ Reverb.

	.word	panepon_bgm_select_e3_grp

	.word	panepon_bgm_select_e3_1
	.word	panepon_bgm_select_e3_2
	.word	panepon_bgm_select_e3_3
	.word	panepon_bgm_select_e3_4
	.word	panepon_bgm_select_e3_5
	.word	panepon_bgm_select_e3_6
	.word	panepon_bgm_select_e3_7

	.end

