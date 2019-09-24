	.include "MPlayDef.s"

	.equ	panepon_bgm_result_e1_grp, voicegroup000
	.equ	panepon_bgm_result_e1_pri, 0
	.equ	panepon_bgm_result_e1_rev, 158
	.equ	panepon_bgm_result_e1_mvl, 110
	.equ	panepon_bgm_result_e1_key, 0
	.equ	panepon_bgm_result_e1_tbs, 1
	.equ	panepon_bgm_result_e1_exg, 0
	.equ	panepon_bgm_result_e1_cmp, 1

	.section .rodata
	.global	panepon_bgm_result_e1
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_result_e1_1:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte	TEMPO , 184*panepon_bgm_result_e1_tbs/2
	.byte		VOICE , 93
	.byte		VOL   , 110
	.byte	W64
	.byte		N07   , En4 , v127
	.byte	W08
	.byte		N14   , Ds4
	.byte	W16
	.byte		N07   , En4
	.byte	W08
panepon_bgm_result_e1_1_B1:
	.byte		N07   , An4 , v092
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		N14   , Fs4 , v127
	.byte	W16
	.byte		N07   , Cs4
	.byte	W24
	.byte		N19   , En4
	.byte	W08
_2036C5F:
	.byte	W64
	.byte		N07   , En4 , v127
	.byte	W08
	.byte		N14   , Fs4
	.byte	W16
	.byte		N07   , En4
	.byte	W08
	.byte	PEND
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , En4
	.byte	W24
	.byte		N22   , Bn3
	.byte	W08
	.byte	W64
	.byte		N07   , Dn4
	.byte	W08
	.byte		N14   , Cs4
	.byte	W16
	.byte		N07   , Dn4
	.byte	W08
	.byte		        Bn4 , v092
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		N14   , Gs4
	.byte	W16
	.byte		N07   , Dn4 , v127
	.byte	W24
	.byte		N23   , Fs4
	.byte	W08
	.byte	W64
	.byte		N07
	.byte	W08
	.byte		N14   , Gs4 , v092
	.byte	W16
	.byte		N07   , Fs4 , v127
	.byte	W08
	.byte		N14   , En4
	.byte	W16
	.byte		N07   , Ds4
	.byte	W08
	.byte		N14   , En4
	.byte	W16
	.byte		N07   , Ds4
	.byte	W08
	.byte		N14   , En4
	.byte	W16
	.byte		N07   , Fs4
	.byte	W24
	.byte		N18   , En4
	.byte	W08
_2036CB9:
	.byte	W64
	.byte		N07   , En4 , v127
	.byte	W08
	.byte		N14   , Ds4
	.byte	W16
	.byte		N07   , En4
	.byte	W08
	.byte	PEND
	.byte		        An4 , v092
	.byte	W24
	.byte		        Gs4
	.byte	W24
	.byte		N14   , Fs4 , v127
	.byte	W16
	.byte		N07   , Cs4
	.byte	W24
	.byte		N21   , En4
	.byte	W08
	.byte	PATT
	 .word	_2036C5F
	.byte		N14   , Dn4 , v127
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , En4
	.byte	W24
	.byte		N18   , Bn3
	.byte	W08
	.byte	W64
	.byte		N07
	.byte	W08
	.byte		N14   , As3
	.byte	W16
	.byte		N07   , Bn3
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		N14   , Dn4
	.byte	W16
	.byte		N07   , Fs4
	.byte	W08
	.byte		N14   , An4 , v092
	.byte	W16
	.byte		N07   , Gs4
	.byte	W08
	.byte		        An4
	.byte	W16
	.byte		        Cs5
	.byte	W08
	.byte		N14   , Bn4
	.byte	W16
	.byte		N07   , Gs4
	.byte	W08
	.byte		N14   , En4 , v127
	.byte	W16
	.byte		N07   , Cs4
	.byte	W24
	.byte		N07
	.byte	W08
	.byte		N14   , Cn4
	.byte	W16
	.byte		N07   , Cs4
	.byte	W08
	.byte		        En4
	.byte	W24
	.byte		        Dn4
	.byte	W24
	.byte		N14   , An3
	.byte	W16
	.byte		N07   , Bn3
	.byte	W24
	.byte		N16   , An3
	.byte	W08
	.byte	PATT
	 .word	_2036CB9
	.byte	GOTO
	 .word	panepon_bgm_result_e1_1_B1
panepon_bgm_result_e1_1_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_result_e1_2:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOICE , 12
	.byte		VOL   , 100*panepon_bgm_result_e1_mvl/mxv
	.byte	W48
	.byte		N12   , En3 , v100
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        An3
	.byte	W06
	.byte		        Bn3
	.byte	W06
	.byte		        Cs4
	.byte	W06
	.byte		N09   , Dn4
	.byte	W06
	.byte		N05   , En4
	.byte	W06
panepon_bgm_result_e1_2_B1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
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
	 .word	panepon_bgm_result_e1_2_B1
panepon_bgm_result_e1_2_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_bgm_result_e1_3:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOICE , 34
	.byte		VOL   , 110
	.byte		PAN   , c_v+0
	.byte	W48
	.byte		N21   , En2 , v127
	.byte	W24
	.byte		        En1
	.byte	W24
panepon_bgm_result_e1_3_B1:
	.byte		N21   , An1 , v127
	.byte	W48
	.byte		        En1
	.byte	W48
	.byte	PEND
_2036DEB:
	.byte		N21   , An1 , v127
	.byte	W48
	.byte		        As1
	.byte	W48
	.byte	PEND
_2036DF2:
	.byte		N21   , Bn1 , v127
	.byte	W48
	.byte		        Fs1
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	_2036DF2
	.byte	PATT
	 .word	_2036DF2
	.byte		N21   , Bn1 , v127
	.byte	W48
	.byte		        Cn2
	.byte	W48
	.byte		        Cs2
	.byte	W48
	.byte		        Cn2
	.byte	W48
_2036E0D:
	.byte		N21   , Bn1 , v127
	.byte	W48
	.byte		        En1
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	panepon_bgm_result_e1_3_B1
	.byte	PATT
	 .word	_2036DEB
	.byte	PATT
	 .word	_2036DF2
	.byte	PATT
	 .word	_2036DF2
	.byte		N21   , Bn0 , v127
	.byte	W48
	.byte		        Dn1
	.byte	W48
	.byte		        Cs1
	.byte	W48
	.byte		        Fs1
	.byte	W48
	.byte	PATT
	 .word	_2036E0D
	.byte	PATT
	 .word	panepon_bgm_result_e1_3_B1
	.byte	GOTO
	 .word	panepon_bgm_result_e1_3_B1
panepon_bgm_result_e1_3_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

panepon_bgm_result_e1_4:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOICE , 82
	.byte		VOL   , 85*panepon_bgm_result_e1_mvl/mxv
	.byte	W05
	.byte		PAN   , c_v+16
	.byte	W90
	.byte	W01
panepon_bgm_result_e1_4_B1:
	.byte	W24
	.byte		N09   , Gs2 , v064
	.byte		N09   , En3
	.byte	W48
	.byte		        Fs2
	.byte		N09   , En3
	.byte	W24
	.byte	PEND
_2036E8D:
	.byte	W24
	.byte		N09   , Gs2 , v064
	.byte		N09   , En3
	.byte	W48
	.byte		        Gn2
	.byte		N09   , En3
	.byte	W24
	.byte	PEND
_2036E99:
	.byte	W24
	.byte		N09   , An2 , v064
	.byte		N09   , Fs3
	.byte	W48
	.byte		        An2
	.byte		N09   , Fs3
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_2036E99
	.byte	PATT
	 .word	_2036E99
	.byte	PATT
	 .word	_2036E99
_2036EB4:
	.byte	W24
	.byte		N09   , Bn2 , v064
	.byte		N09   , Gs3
	.byte	W48
	.byte		        As2
	.byte		N09   , Gs3
	.byte	W24
	.byte	PEND
_2036EC0:
	.byte	W24
	.byte		N09   , An2 , v064
	.byte		N09   , Fs3
	.byte	W48
	.byte		        Gs2
	.byte		N09   , Fs3
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	panepon_bgm_result_e1_4_B1
	.byte	PATT
	 .word	_2036E8D
	.byte	PATT
	 .word	_2036EC0
	.byte	PATT
	 .word	_2036E99
	.byte	W24
	.byte		N09   , An2 , v064
	.byte		N09   , Fs3
	.byte	W48
	.byte		        Bn2
	.byte		N09   , An3
	.byte	W24
	.byte	PATT
	 .word	_2036EB4
	.byte	PATT
	 .word	_2036EC0
	.byte	PATT
	 .word	panepon_bgm_result_e1_4_B1
	.byte	GOTO
	 .word	panepon_bgm_result_e1_4_B1
panepon_bgm_result_e1_4_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

panepon_bgm_result_e1_5:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOICE , 71
	.byte		VOL   , 100*panepon_bgm_result_e1_mvl/mxv
	.byte		PAN   , c_v-30
	.byte	W96
panepon_bgm_result_e1_5_B1:
	.byte	W96
_2036F3E:
	.byte	W16
	.byte		N06   , An3 , v092
	.byte	W08
	.byte		N13   , Bn3
	.byte	W16
	.byte		N06   , Cn4
	.byte	W08
	.byte		N13   , Cs4
	.byte	W16
	.byte		N06   , Dn4
	.byte	W08
	.byte		N13   , En4
	.byte	W16
	.byte		N06   , Fn4
	.byte	W08
	.byte	PEND
_2036F56:
	.byte		N13   , Fs4 , v092
	.byte	W16
	.byte		N06   , Fn4
	.byte	W08
	.byte		N13   , Fs4
	.byte	W16
	.byte		N06   , Fn4
	.byte	W08
	.byte		N13   , Fs4
	.byte	W16
	.byte		N06   , Dn4
	.byte	W08
	.byte		N13   , Bn3
	.byte	W16
	.byte		N06   , Fn3
	.byte	W08
	.byte	PEND
	.byte		N13   , Fs3
	.byte	W16
	.byte		N06   , Bn3
	.byte	W08
	.byte		N13   , Dn4
	.byte	W16
	.byte		        Fs4
	.byte	W56
	.byte	W96
	.byte	W16
	.byte		N06   , Bn3
	.byte	W08
	.byte		N13   , Cs4
	.byte	W16
	.byte		N06   , Dn4
	.byte	W08
	.byte		N13   , Ds4
	.byte	W16
	.byte		N06   , Cn4
	.byte	W08
	.byte		N13   , An3
	.byte	W16
	.byte		N06   , Fs3
	.byte	W08
	.byte		N48   , En3
	.byte	W96
	.byte	W16
	.byte		N06   , En4
	.byte	W08
	.byte		N13   , An4
	.byte	W16
	.byte		N06   , Cs5
	.byte	W08
	.byte		N13   , Dn5
	.byte	W16
	.byte		N06   , Bn4
	.byte	W08
	.byte		N13   , Gs4
	.byte	W16
	.byte		N17   , En4
	.byte	W08
	.byte	W96
	.byte	PATT
	 .word	_2036F3E
	.byte	PATT
	 .word	_2036F56
	.byte		N13   , Fs3 , v092
	.byte	W16
	.byte		N06   , Bn3
	.byte	W08
	.byte		N13   , Dn4
	.byte	W16
	.byte		N12   , Fs4
	.byte	W56
	.byte		N13   , Bn3
	.byte	W16
	.byte		N06   , As3
	.byte	W08
	.byte		N13   , Bn3
	.byte	W16
	.byte		N06   , Dn4
	.byte	W08
	.byte		N13   , Fn4
	.byte	W16
	.byte		N06   , En4
	.byte	W08
	.byte		N13   , Fn4
	.byte	W16
	.byte		N06   , An4
	.byte	W08
	.byte		N13   , Gs4
	.byte	W16
	.byte		N06   , En4
	.byte	W08
	.byte		N13   , Cs4
	.byte	W16
	.byte		N09   , As3
	.byte	W56
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_result_e1_5_B1
panepon_bgm_result_e1_5_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

panepon_bgm_result_e1_6:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOICE , 126
	.byte		VOL   , 110
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N03   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
panepon_bgm_result_e1_6_B1:
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N02   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N03   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N07   , Ds1
	.byte	W16
	.byte		N08   , Cn1
	.byte	W08
_2037067:
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N03   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte	PEND
_203707E:
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N06   , Ds1
	.byte	W16
	.byte		N08   , Cn1
	.byte	W08
	.byte	PEND
	.byte	PATT
	 .word	_2037067
	.byte	PATT
	 .word	_203707E
	.byte	PATT
	 .word	_2037067
	.byte	PATT
	 .word	_203707E
_20370A7:
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N05   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte	PEND
_20370BE:
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N05   , Ds1
	.byte	W16
	.byte		N08   , Cn1
	.byte	W08
	.byte	PEND
	.byte		N08
	.byte	W24
	.byte		N05   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte	PATT
	 .word	_203707E
	.byte	PATT
	 .word	_20370A7
	.byte		N08   , Cn1 , v127
	.byte	W24
	.byte		N05   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N06   , Ds1
	.byte	W16
	.byte		N08   , Cn1
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte		N08
	.byte	W24
	.byte		N04   , Fs1 , v064
	.byte	W16
	.byte		N08   , Cn1 , v127
	.byte	W08
	.byte	PATT
	 .word	_20370BE
	.byte	GOTO
	 .word	panepon_bgm_result_e1_6_B1
panepon_bgm_result_e1_6_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

panepon_bgm_result_e1_7:
	.byte	KEYSH , panepon_bgm_result_e1_key+0
	.byte		VOL   , 64*panepon_bgm_result_e1_mvl/mxv
	.byte	W96
panepon_bgm_result_e1_7_B1:
	.byte	W24
	.byte		VOICE , 83
	.byte		N09   , Cs3 , v068
	.byte	W48
	.byte		N09
	.byte	W24
_2037166:
	.byte	W24
	.byte		N09   , Cs3 , v068
	.byte	W48
	.byte		N09
	.byte	W24
	.byte	PEND
_203716E:
	.byte	W24
	.byte		N09   , Dn3 , v068
	.byte	W48
	.byte		N09
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_203716E
	.byte	PATT
	 .word	_203716E
	.byte	W24
	.byte		N09   , Dn3 , v068
	.byte	W48
	.byte		        Ds3
	.byte	W24
_2037187:
	.byte	W24
	.byte		N09   , En3 , v068
	.byte	W48
	.byte		N09
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_203716E
	.byte	PATT
	 .word	_2037166
	.byte	PATT
	 .word	_2037166
	.byte	PATT
	 .word	_203716E
	.byte	PATT
	 .word	_203716E
	.byte	W24
	.byte		N09   , Dn3 , v068
	.byte	W48
	.byte		        Fn3
	.byte	W24
	.byte	PATT
	 .word	_2037187
	.byte	PATT
	 .word	_203716E
	.byte	PATT
	 .word	_2037166
	.byte	GOTO
	 .word	panepon_bgm_result_e1_7_B1
panepon_bgm_result_e1_7_B2:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_result_e1:
	.byte	7	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_result_e1_pri	@ Priority
	.byte	panepon_bgm_result_e1_rev	@ Reverb.

	.word	panepon_bgm_result_e1_grp

	.word	panepon_bgm_result_e1_1
	.word	panepon_bgm_result_e1_2
	.word	panepon_bgm_result_e1_3
	.word	panepon_bgm_result_e1_4
	.word	panepon_bgm_result_e1_5
	.word	panepon_bgm_result_e1_6
	.word	panepon_bgm_result_e1_7

	.end

