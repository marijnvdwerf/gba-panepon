	.include "MPlayDef.s"

	.equ	panepon_bgm_title_e_grp, voicegroup000
	.equ	panepon_bgm_title_e_pri, 0
	.equ	panepon_bgm_title_e_rev, 158
	.equ	panepon_bgm_title_e_mvl, 115
	.equ	panepon_bgm_title_e_key, 0
	.equ	panepon_bgm_title_e_tbs, 1
	.equ	panepon_bgm_title_e_exg, 0
	.equ	panepon_bgm_title_e_cmp, 1

	.section .rodata
	.global	panepon_bgm_title_e
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_title_e_1:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_1_B1:
	.byte	TEMPO , 130*panepon_bgm_title_e_tbs/2
	.byte		VOICE , 106
	.byte		VOL   , 108
	.byte		PAN   , c_v+0
	.byte		N07   , An0 , v120
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        An0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        An0
	.byte	W12
	.byte		        En1
	.byte	W12
_2037238:
	.byte		N07   , An0 , v120
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        An0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An1
	.byte	W12
	.byte		        An0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
	.byte	PATT
	 .word	_2037238
_2037291:
	.byte		N10   , Dn0 , v120
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Dn0
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Dn0
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Dn0
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte	PEND
_20372A4:
	.byte		N10   , Cs0 , v120
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		        Cs0
	.byte	W12
	.byte		        Cs1
	.byte	W12
	.byte		        Fs0
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte		        Fs0
	.byte	W12
	.byte		        Fs1
	.byte	W12
	.byte	PEND
	.byte		        BnM1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        BnM1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        An0
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N22   , Cs1
	.byte	W24
	.byte		N10   , An0
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        Cs0
	.byte	W12
	.byte	PATT
	 .word	_2037291
	.byte	PATT
	 .word	_20372A4
	.byte		N10   , BnM1, v120
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        BnM1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        BnM1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        BnM1
	.byte	W12
	.byte		        Bn0
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte		        En0
	.byte	W12
	.byte		        En1
	.byte	W12
	.byte	GOTO
	 .word	panepon_bgm_title_e_1_B1
panepon_bgm_title_e_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_title_e_2:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_2_B1:
	.byte		VOICE , 104
	.byte		VOL   , 90*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N96   , Cs3 , v080
	.byte	W96
	.byte		        Bn2
	.byte	W96
	.byte		N96
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        Bn2
	.byte	W96
	.byte		N96
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        Bn2
	.byte	W96
	.byte		N96
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        Bn2
	.byte	W96
	.byte		N96
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		VOICE , 109
	.byte		VOL   , 99
	.byte		PAN   , c_v-44
	.byte		N12   , Fs4 , v100
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N12   , Bn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N24   , An4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N12   , Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N12   , Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N24   , En4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N12   , Bn4
	.byte	W12
	.byte		        En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N24   , An4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		        Cs5
	.byte	W12
	.byte		N23   , En5
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		N12   , An4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N24
	.byte	W12
	.byte	W12
	.byte		N12   , En4
	.byte	W12
	.byte		N48
	.byte	W72
	.byte	GOTO
	 .word	panepon_bgm_title_e_2_B1
panepon_bgm_title_e_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_bgm_title_e_3:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_3_B1:
	.byte		VOICE , 110
	.byte		VOL   , 99
	.byte		PAN   , c_v+0
	.byte		N36   , En4 , v112
	.byte	W36
	.byte		        Fs4
	.byte	W36
	.byte		N24   , En4
	.byte	W24
_20373BB:
	.byte		N12   , En4 , v112
	.byte	W12
	.byte		N24   , Ds4
	.byte	W24
	.byte		N60   , Bn4
	.byte	W60
	.byte	PEND
_20373C6:
	.byte		N36   , Dn4 , v112
	.byte	W36
	.byte		        En4
	.byte	W36
	.byte		N24   , Dn4
	.byte	W24
	.byte	PEND
_20373D0:
	.byte		N12   , Dn4 , v112
	.byte	W12
	.byte		N24   , Cs4
	.byte	W24
	.byte		N60   , An4
	.byte	W60
	.byte	PEND
_20373DB:
	.byte		N36   , En4 , v112
	.byte	W36
	.byte		        Fs4
	.byte	W36
	.byte		N24   , En4
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_20373BB
_20373EA:
	.byte		N36   , Bn4 , v112
	.byte	W36
	.byte		        An4
	.byte	W36
	.byte		N24   , Gs4
	.byte	W24
	.byte	PEND
	.byte		N36   , Fs4
	.byte	W36
	.byte		N60   , En4
	.byte	W60
	.byte	PATT
	 .word	_20373DB
	.byte	PATT
	 .word	_20373BB
	.byte	PATT
	 .word	_20373C6
	.byte	PATT
	 .word	_20373D0
	.byte	PATT
	 .word	_20373DB
	.byte	PATT
	 .word	_20373BB
	.byte	PATT
	 .word	_20373EA
	.byte		N96   , An4 , v112
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_title_e_3_B1
panepon_bgm_title_e_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

panepon_bgm_title_e_4:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_4_B1:
	.byte		VOICE , 111
	.byte		VOL   , 80*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		TIE   , En4 , v072
	.byte	W96
	.byte		N48   , Fs4
	.byte	W01
	.byte		EOT   , En4
	.byte	W44
	.byte	W03
	.byte		N48   , Ds4
	.byte	W48
	.byte		TIE   , Bn4
	.byte	W96
	.byte	W12
	.byte		N24   , An4
	.byte	W01
	.byte		EOT   , Bn4
	.byte	W23
	.byte		N60   , En4
	.byte	W60
	.byte		TIE
	.byte	W96
	.byte		N48   , Fs4
	.byte	W01
	.byte		EOT   , En4
	.byte	W44
	.byte	W03
	.byte		N48   , Ds4
	.byte	W48
	.byte		TIE   , Bn4
	.byte	W96
	.byte		N84   , An4
	.byte	W01
	.byte		EOT   , Bn4
	.byte	W92
	.byte	W03
	.byte		TIE   , En4
	.byte	W96
	.byte		N48   , Fs4
	.byte	W01
	.byte		EOT   , En4
	.byte	W44
	.byte	W03
	.byte		N48   , Ds4
	.byte	W48
	.byte		TIE   , Bn4
	.byte	W96
	.byte	W12
	.byte		N24   , An4
	.byte	W01
	.byte		EOT   , Bn4
	.byte	W23
	.byte		N60   , En4
	.byte	W60
	.byte		TIE
	.byte	W96
	.byte		N48   , Fs4
	.byte	W01
	.byte		EOT   , En4
	.byte	W44
	.byte	W03
	.byte		N48   , Ds4
	.byte	W48
	.byte		TIE   , Bn4
	.byte	W96
	.byte		N84   , An4
	.byte	W01
	.byte		EOT   , Bn4
	.byte	W92
	.byte	W03
	.byte		VOICE , 104
	.byte		PAN   , c_v-64
	.byte		N48   , Fs3 , v080
	.byte	W48
	.byte		        Gs3
	.byte	W48
	.byte		        Bn3
	.byte	W48
	.byte		        An3
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		        Fs3
	.byte	W48
	.byte		N36   , Gs3
	.byte	W36
	.byte		N60   , Gn3
	.byte	W60
	.byte		N48   , Fs3
	.byte	W48
	.byte		        Gs3
	.byte	W48
	.byte		        Bn3
	.byte	W48
	.byte		        Cs4
	.byte	W48
	.byte		N96   , An3
	.byte	W96
	.byte		N24   , Fs3
	.byte	W24
	.byte		N72   , En3
	.byte	W72
	.byte	GOTO
	 .word	panepon_bgm_title_e_4_B1
panepon_bgm_title_e_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

panepon_bgm_title_e_5:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_5_B1:
	.byte		VOICE , 107
	.byte		VOL   , 108
	.byte		PAN   , c_v-64
	.byte		N03   , An4 , v100
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
_20374E2:
	.byte		N03   , An4 , v100
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte	PATT
	 .word	_20374E2
	.byte		VOICE , 102
	.byte		VOL   , 70*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N48   , Dn3 , v080
	.byte	W48
	.byte		        En3 , v052
	.byte	W48
	.byte		        Gs3
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		        An2
	.byte	W48
	.byte		        Dn3
	.byte	W48
	.byte		N36   , En3
	.byte	W36
	.byte		N60
	.byte	W60
	.byte		N48   , Dn3
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		        Gs3
	.byte	W48
	.byte		        An3
	.byte	W48
	.byte		N96   , Fs3
	.byte	W96
	.byte		        Dn3
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_title_e_5_B1
panepon_bgm_title_e_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

panepon_bgm_title_e_6:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_6_B1:
	.byte		VOICE , 101
	.byte		VOL   , 40*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v+63
	.byte	W06
	.byte		N03   , An4 , v072
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W06
_2037584:
	.byte	W06
	.byte		N03   , An4 , v072
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W12
	.byte		        An5
	.byte	W12
	.byte		        An4
	.byte	W12
	.byte		        En5
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte	PATT
	 .word	_2037584
	.byte		VOICE , 103
	.byte		N48   , An2 , v092
	.byte	W48
	.byte		        Bn2
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		        Cs3
	.byte	W48
	.byte		        Fs2
	.byte	W48
	.byte		        Gs2
	.byte	W48
	.byte		N36   , An2
	.byte	W36
	.byte		N60
	.byte	W60
	.byte		N48
	.byte	W48
	.byte		        Bn2
	.byte	W48
	.byte		        En3
	.byte	W48
	.byte		N48
	.byte	W48
	.byte		N96   , Dn3
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_title_e_6_B1
panepon_bgm_title_e_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

panepon_bgm_title_e_7:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_7_B1:
	.byte		VOICE , 104
	.byte		VOL   , 90*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v-64
	.byte		N96   , En3 , v080
	.byte	W96
	.byte		        Ds3
	.byte	W96
	.byte		        Dn3
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		        Ds3
	.byte	W96
	.byte		        Dn3
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		        Ds3
	.byte	W96
	.byte		        Dn3
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte		        Ds3
	.byte	W96
	.byte		        Dn3
	.byte	W96
	.byte		        Cs3
	.byte	W96
	.byte		VOICE , 109
	.byte		PAN   , c_v+46
	.byte	W06
	.byte		N12   , Fs4 , v040
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N12   , Bn4
	.byte	W06
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N24   , An4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N12   , Cs4
	.byte	W06
	.byte	W06
	.byte		        Dn4
	.byte	W12
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		        En4
	.byte	W24
	.byte		N12   , Dn4
	.byte	W06
	.byte	W06
	.byte		        Cs4
	.byte	W12
	.byte		        Dn4
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		N24   , En4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Ds4
	.byte	W12
	.byte		        En4
	.byte	W06
	.byte	W06
	.byte		        Fs4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N12   , Bn4
	.byte	W06
	.byte	W06
	.byte		        En4
	.byte	W12
	.byte		        Fs4
	.byte	W12
	.byte		        Gs4
	.byte	W12
	.byte		N24   , An4
	.byte	W24
	.byte		N12
	.byte	W12
	.byte		        Bn4
	.byte	W12
	.byte		        Cs5
	.byte	W06
	.byte	W06
	.byte		N23   , En5
	.byte	W24
	.byte		        Dn5
	.byte	W24
	.byte		N12   , An4
	.byte	W12
	.byte		N24   , Fs4
	.byte	W24
	.byte		N24
	.byte	W06
	.byte	W18
	.byte		N12   , En4
	.byte	W12
	.byte		N72
	.byte	W66
	.byte	GOTO
	 .word	panepon_bgm_title_e_7_B1
panepon_bgm_title_e_7_B2:
	.byte	W06
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

panepon_bgm_title_e_8:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_8_B1:
	.byte		VOICE , 108
	.byte		VOL   , 90*panepon_bgm_title_e_mvl/mxv
	.byte		PAN   , c_v+63
	.byte		N96   , An2 , v080
	.byte	W96
	.byte		        Fs2
	.byte	W96
	.byte		        Fn2
	.byte	W96
	.byte		        En2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Fs2
	.byte	W96
	.byte		        Fn2
	.byte	W96
	.byte		        En2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Fs2
	.byte	W96
	.byte		        Fn2
	.byte	W96
	.byte		        En2
	.byte	W96
	.byte		        An2
	.byte	W96
	.byte		        Fs2
	.byte	W96
	.byte		        Fn2
	.byte	W96
	.byte		        En2
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_title_e_8_B1
panepon_bgm_title_e_8_B2:
	.byte	FINE

@**************** Track 9 (Midi-Chn.9) ****************@

panepon_bgm_title_e_9:
	.byte	KEYSH , panepon_bgm_title_e_key+0
panepon_bgm_title_e_9_B1:
	.byte		VOICE , 126
	.byte		VOL   , 99
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		N05   , Dn1 , v092
	.byte		N06   , Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		N05   , Dn1 , v092
	.byte		N06   , Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v032
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v060
	.byte	W06
	.byte		        Fs1 , v040
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N06   , Fs1 , v052
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte	W12
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		        Fs1 , v036
	.byte	W06
	.byte		N12   , Cn1 , v120
	.byte		N05   , Dn1 , v092
	.byte	W12
	.byte		N05
	.byte		N06   , Fs1 , v056
	.byte	W06
	.byte		N05   , Dn1 , v092
	.byte		N06   , Fs1 , v036
	.byte	W06
	.byte	GOTO
	 .word	panepon_bgm_title_e_9_B1
panepon_bgm_title_e_9_B2:
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_title_e:
	.byte	9	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_title_e_pri	@ Priority
	.byte	panepon_bgm_title_e_rev	@ Reverb.

	.word	panepon_bgm_title_e_grp

	.word	panepon_bgm_title_e_1
	.word	panepon_bgm_title_e_2
	.word	panepon_bgm_title_e_3
	.word	panepon_bgm_title_e_4
	.word	panepon_bgm_title_e_5
	.word	panepon_bgm_title_e_6
	.word	panepon_bgm_title_e_7
	.word	panepon_bgm_title_e_8
	.word	panepon_bgm_title_e_9

	.end

