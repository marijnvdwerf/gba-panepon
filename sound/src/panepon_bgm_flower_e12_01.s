	.include "MPlayDef.s"

	.equ	panepon_bgm_flower_e12_01_grp, voicegroup000
	.equ	panepon_bgm_flower_e12_01_pri, 0
	.equ	panepon_bgm_flower_e12_01_rev, 158
	.equ	panepon_bgm_flower_e12_01_mvl, 110
	.equ	panepon_bgm_flower_e12_01_key, 0
	.equ	panepon_bgm_flower_e12_01_tbs, 1
	.equ	panepon_bgm_flower_e12_01_exg, 0
	.equ	panepon_bgm_flower_e12_01_cmp, 1

	.section .rodata
	.global	panepon_bgm_flower_e12_01
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_flower_e12_01_1:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte	TEMPO , 180*panepon_bgm_flower_e12_01_tbs/2
	.byte		VOICE , 80
	.byte		VOL   , 110
	.byte	W02
	.byte		TIE   , Fn3 , v127
	.byte	W04
	.byte		MOD   , 1
	.byte	W90
	.byte	W44
	.byte	W03
	.byte		EOT
	.byte		N48   , Cn4
	.byte	W48
	.byte	W01
	.byte		TIE   , Fn4 , v108
	.byte	W96
	.byte	W68
	.byte	W01
	.byte		EOT
	.byte	W24
	.byte	W03
panepon_bgm_flower_e12_01_1_B1:
	.byte	W96
	.byte	W72
	.byte		N22   , Fn4 , v080
	.byte	W24
_2035C3A:
	.byte		N32   , Gn4 , v080
	.byte	W36
	.byte		        Fn4
	.byte	W36
	.byte		N22   , En4
	.byte	W24
	.byte	PEND
_2035C44:
	.byte		N32   , Fn4 , v080
	.byte	W36
	.byte		        Gn4
	.byte	W60
	.byte	PEND
	.byte	W96
	.byte	W72
	.byte		N22   , Fn4
	.byte	W24
	.byte	PATT
	 .word	_2035C3A
	.byte	PATT
	 .word	_2035C44
_2035C5A:
	.byte		N32   , An3 , v127
	.byte	W36
	.byte		N12   , As3
	.byte	W36
	.byte		N60   , Cn4
	.byte	W24
	.byte	PEND
_2035C65:
	.byte	W48
	.byte		N12   , As3 , v127
	.byte	W24
	.byte		N06   , An3
	.byte	W24
	.byte	PEND
	.byte		N32   , As3
	.byte	W36
	.byte		N12   , An3
	.byte	W36
	.byte		N68   , Gn3
	.byte	W24
_2035C77:
	.byte	W48
	.byte		N18   , Fn3 , v127
	.byte	W24
	.byte		N12   , Gn3
	.byte	W24
	.byte	PEND
_2035C80:
	.byte		N10   , An3 , v127
	.byte	W12
	.byte		N06   , Gn3
	.byte	W24
	.byte		N10   , An4 , v076
	.byte	W12
	.byte		N06   , Gn4
	.byte	W24
	.byte		N10   , An3 , v127
	.byte	W12
	.byte		N06   , Gn3
	.byte	W12
	.byte	PEND
_2035C96:
	.byte	W12
	.byte		N10   , An2 , v127
	.byte	W12
	.byte		N06   , Gn2
	.byte	W24
	.byte		N18   , As3
	.byte	W24
	.byte		N12   , An3
	.byte	W24
	.byte	PEND
_2035CA5:
	.byte		N32   , Gn3 , v127
	.byte	W36
	.byte		N12   , Fn3
	.byte	W36
	.byte		N72   , Gn3
	.byte	W24
	.byte	PEND
	.byte	W96
	.byte	PATT
	 .word	_2035C5A
_2035CB6:
	.byte	W48
	.byte		N12   , As3 , v127
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte	PEND
_2035CBE:
	.byte		N32   , As3 , v127
	.byte	W36
	.byte		N12   , Cn4
	.byte	W36
	.byte		N68   , Dn4
	.byte	W24
	.byte	PEND
_2035CC9:
	.byte	W48
	.byte		N12   , Cn4 , v127
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte	PEND
_2035CD1:
	.byte		N36   , An3 , v127
	.byte	W48
	.byte		N10
	.byte	W12
	.byte		N22   , As3
	.byte	W24
	.byte		N10   , An3
	.byte	W12
	.byte	PEND
_2035CDE:
	.byte		N36   , Gn3 , v127
	.byte	W48
	.byte		N10
	.byte	W12
	.byte		N22   , An3
	.byte	W24
	.byte		N10   , Gn3
	.byte	W12
	.byte	PEND
	.byte		TIE   , Fn3
	.byte	W96
	.byte	W48
	.byte		EOT
	.byte	W48
	.byte	PATT
	 .word	_2035C5A
	.byte	PATT
	 .word	_2035C65
	.byte		N36   , As3 , v127
	.byte	W36
	.byte		N12   , An3
	.byte	W36
	.byte		N68   , Gn3
	.byte	W24
	.byte	PATT
	 .word	_2035C77
	.byte	PATT
	 .word	_2035C80
	.byte	PATT
	 .word	_2035C96
	.byte	PATT
	 .word	_2035CA5
	.byte	W96
	.byte	PATT
	 .word	_2035C5A
	.byte	PATT
	 .word	_2035CB6
	.byte	PATT
	 .word	_2035CBE
	.byte	PATT
	 .word	_2035CC9
	.byte	PATT
	 .word	_2035CD1
	.byte	PATT
	 .word	_2035CDE
_2035D38:
	.byte		N06   , Fn3 , v127
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte	PEND
_2035D45:
	.byte		N06   , Fn3 , v127
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_2035D38
	.byte	PATT
	 .word	_2035D45
	.byte	PATT
	 .word	_2035D38
	.byte	PATT
	 .word	_2035D45
	.byte	PATT
	 .word	_2035D38
	.byte		N06   , Fn3 , v127
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_1_B1
panepon_bgm_flower_e12_01_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_flower_e12_01_2:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		VOICE , 97
	.byte		VOL   , 110
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W60
	.byte		N02   , Gn3 , v072
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		        As3
	.byte	W02
	.byte		        Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		N23   , Fn4
	.byte	W24
panepon_bgm_flower_e12_01_2_B1:
	.byte		PAN   , c_v+0
	.byte		N18   , Cn4 , v072
	.byte		N18   , Fn4
	.byte		N18   , An4
	.byte	W36
	.byte		        Cn4
	.byte		N18   , Fn4
	.byte		N18   , An4
	.byte	W48
	.byte		        Cn4
	.byte		N18   , Fn4
	.byte		N18   , Gn4
	.byte	W12
	.byte	W36
	.byte		N36   , En4
	.byte		N36   , Cn5
	.byte	W60
	.byte	W96
	.byte	W96
	.byte		N18   , Cn4
	.byte		N18   , Fn4
	.byte		N18   , An4
	.byte	W36
	.byte		        Cn4
	.byte		N18   , Fn4
	.byte		N18   , An4
	.byte	W48
	.byte		        Cn4
	.byte		N18   , Fn4
	.byte		N18   , Gn4
	.byte	W12
	.byte	W36
	.byte		N24   , En4
	.byte		N24   , Cn5
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N16   , Fn4 , v072
	.byte	W36
	.byte	W96
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N12   , Fn4 , v072
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N14   , Fn4 , v072
	.byte	W36
	.byte	W96
	.byte		N10   , Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		        Fn4 , v072
	.byte	W12
	.byte		        Fn3 , v100
	.byte	W12
	.byte		        Cn4
	.byte	W12
	.byte		N11   , Fn4 , v072
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W22
	.byte		PAN   , c_v+20
	.byte	W72
	.byte	W02
	.byte		VOICE , 56
	.byte		N06   , As3 , v064
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Ds4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Fn4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W42
	.byte	W01
	.byte		VOICE , 97
	.byte	W17
	.byte		N02   , Gn3 , v072
	.byte	W02
	.byte		        An3
	.byte	W02
	.byte		        As3
	.byte	W02
	.byte		        Cn4
	.byte	W02
	.byte		        Dn4
	.byte	W02
	.byte		        En4
	.byte	W02
	.byte		N19   , Fn4
	.byte	W24
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_2_B1
panepon_bgm_flower_e12_01_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_bgm_flower_e12_01_3:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		VOICE , 56
	.byte		PAN   , c_v-45
	.byte	W24
	.byte		VOL   , 100*panepon_bgm_flower_e12_01_mvl/mxv
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	W96
panepon_bgm_flower_e12_01_3_B1:
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W12
	.byte		N11   , An4 , v096
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		N12   , An4
	.byte	W24
	.byte		N11   , Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v+44
	.byte	W12
	.byte		N12   , An4
	.byte	W12
	.byte		        Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		        An4
	.byte	W24
	.byte		        Gn4
	.byte	W12
	.byte		        Fn4
	.byte	W12
	.byte		PAN   , c_v-45
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		N06   , Cn4
	.byte		N06   , Gn4
	.byte	W11
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		N06   , Cn4
	.byte		N06   , Gn4
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        Cn4
	.byte		N06   , Fn4
	.byte	W10
	.byte		PAN   , c_v-45
	.byte	W02
	.byte		N06   , Cn4
	.byte		N06   , Fn4
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W48
	.byte		        Dn4
	.byte		N06   , Gn4
	.byte	W11
	.byte		PAN   , c_v+45
	.byte	W01
	.byte		N06   , Dn4
	.byte		N06   , Gn4
	.byte	W36
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		PAN   , c_v-44
	.byte		N06   , Cn4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Fn4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        An4
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_3_B1
panepon_bgm_flower_e12_01_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

panepon_bgm_flower_e12_01_4:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		VOICE , 37
	.byte		VOL   , 110
	.byte		N05   , Fn1 , v127
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Ds1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N15   , Cn1
	.byte	W36
	.byte		N17   , Ds1
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N15   , As0
	.byte	W24
	.byte		N11   , Cn1
	.byte	W12
	.byte		N22   , Fn1
	.byte	W12
	.byte	W12
	.byte		N05
	.byte	W12
	.byte		N11   , Ds1
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		N17   , Cn1
	.byte	W36
	.byte		N22   , Ds1
	.byte	W12
	.byte	W12
	.byte		N11
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte		N22   , As0
	.byte	W24
	.byte		N11   , Cn1
	.byte	W24
panepon_bgm_flower_e12_01_4_B1:
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N09   , Fn2
	.byte	W12
	.byte		N16   , Fn1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N16   , Fn1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N14   , Fn1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		N09   , Fn2
	.byte	W12
	.byte		N10   , Fn1
	.byte	W12
	.byte		N21   , As0
	.byte	W24
	.byte		N08   , As1
	.byte	W12
	.byte		N16   , As0
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		        As0
	.byte	W12
_2035FA3:
	.byte		N21   , Cn1 , v127
	.byte	W24
	.byte		N10   , Cn2
	.byte	W12
	.byte		N16   , Cn1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		        Cn2
	.byte	W12
	.byte		N09   , Cn1
	.byte	W12
	.byte	PEND
	.byte		N21   , Fn1
	.byte	W24
	.byte		N10   , Fn2
	.byte	W12
	.byte		N16   , Fn1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N16   , Fn1
	.byte	W12
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		N15   , Fn1
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		N09   , Fn2
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte		N21   , As0
	.byte	W24
	.byte		N08   , As1
	.byte	W12
	.byte		N16   , As0
	.byte	W24
	.byte		N10
	.byte	W12
	.byte		        As1
	.byte	W12
	.byte		N09   , As0
	.byte	W12
	.byte	PATT
	 .word	_2035FA3
_2035FE9:
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N13   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N13   , Fn2
	.byte	W24
	.byte	PEND
_2035FF9:
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N13   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte	PEND
	.byte		N21
	.byte	W24
	.byte		N13   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N15   , Fn2
	.byte	W24
	.byte	PATT
	 .word	_2035FE9
	.byte		N21   , As1 , v127
	.byte	W24
	.byte		N12   , As2
	.byte	W24
	.byte		N21   , As1
	.byte	W24
	.byte		N10   , As2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N21   , An1
	.byte	W24
	.byte		N10   , An2
	.byte	W24
	.byte		        An1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        An2
	.byte	W24
_2036037:
	.byte		N21   , Gn1 , v127
	.byte	W24
	.byte		N10   , Gn2
	.byte	W12
	.byte		N21   , An1
	.byte	W24
	.byte		N10   , An2
	.byte	W12
	.byte		N21   , As1
	.byte	W24
	.byte	PEND
_2036048:
	.byte		N10   , As2 , v127
	.byte	W12
	.byte		N21   , Cn2
	.byte	W24
	.byte		N10   , Cn3
	.byte	W12
	.byte		N21   , Cn1
	.byte	W24
	.byte		N15   , Cn2
	.byte	W24
	.byte	PEND
_2036059:
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N14   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N14   , Fn2
	.byte	W24
	.byte	PEND
	.byte		N21   , Fn1
	.byte	W24
	.byte		N14   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte	PATT
	 .word	_2035FE9
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N13   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N12   , Fn2
	.byte	W24
	.byte		N10   , As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N13   , As2
	.byte	W24
	.byte		N10   , As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N13   , As2
	.byte	W24
	.byte		N21   , Cn2
	.byte	W24
	.byte		N13   , Cn3
	.byte	W24
	.byte		N10   , Cn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N13   , Cn3
	.byte	W24
	.byte		N21   , Ds1
	.byte	W24
	.byte		N13   , Ds2
	.byte	W24
	.byte		N10   , Ds1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N13   , Ds2
	.byte	W24
	.byte	PATT
	 .word	_2035FE9
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N15   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N15   , Fn2
	.byte	W24
	.byte		N21   , Fn1
	.byte	W24
	.byte		N15   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W12
	.byte		        Fn1
	.byte	W12
	.byte	PATT
	 .word	_2036059
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N14   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W24
	.byte		N21   , As1
	.byte	W24
	.byte		N14   , As2
	.byte	W24
	.byte		N21   , As1
	.byte	W24
	.byte		N10   , As2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N21   , An1
	.byte	W24
	.byte		N12   , An2
	.byte	W24
	.byte		N10   , An1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N12   , An2
	.byte	W24
	.byte	PATT
	 .word	_2036037
	.byte	PATT
	 .word	_2036048
	.byte	PATT
	 .word	_2035FE9
	.byte	PATT
	 .word	_2035FF9
	.byte	PATT
	 .word	_2035FE9
	.byte		N21   , Fn1 , v127
	.byte	W24
	.byte		N13   , Fn2
	.byte	W24
	.byte		N10   , Fn1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		        Fn2
	.byte	W24
	.byte		        As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N14   , As2
	.byte	W24
	.byte		N10   , As1
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N14   , As2
	.byte	W24
	.byte		N21   , Cn2
	.byte	W24
	.byte		N14   , Cn3
	.byte	W24
	.byte		N10   , Cn2
	.byte	W12
	.byte		N10
	.byte	W12
	.byte		N14   , Cn3
	.byte	W24
_203614E:
	.byte		N08   , Fn1 , v127
	.byte	W12
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte	PEND
_203615B:
	.byte		N08   , Fn1 , v127
	.byte	W36
	.byte		N08
	.byte	W24
	.byte		N08
	.byte	W12
	.byte		N08
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_203614E
	.byte	PATT
	 .word	_203615B
	.byte	PATT
	 .word	_203614E
	.byte	PATT
	 .word	_203615B
	.byte	PATT
	 .word	_203614E
	.byte		N08   , Fn1 , v127
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_4_B1
panepon_bgm_flower_e12_01_4_B2:
	.byte	FINE

@**************** Track 5 (Midi-Chn.5) ****************@

panepon_bgm_flower_e12_01_5:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		PAN   , c_v+0
	.byte		VOL   , 110
	.byte	W13
	.byte		MOD   , 1
	.byte	W80
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
panepon_bgm_flower_e12_01_5_B1:
	.byte		VOICE , 27
	.byte	W96
	.byte	W96
_203619B:
	.byte		N12   , As3 , v096
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	PEND
_20361A2:
	.byte		N12   , Cn4 , v096
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	_203619B
	.byte	PATT
	 .word	_20361A2
_20361B5:
	.byte		N32   , An3 , v092
	.byte	W36
	.byte		N08
	.byte	W36
	.byte		N32
	.byte	W24
	.byte	PEND
_20361BE:
	.byte	W12
	.byte		N08   , An3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PEND
_20361C8:
	.byte		N32   , Gn3 , v092
	.byte	W36
	.byte		N08
	.byte	W36
	.byte		N32
	.byte	W24
	.byte	PEND
_20361D1:
	.byte	W12
	.byte		N08   , Gn3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PEND
	.byte		N92   , Fn3
	.byte	W96
	.byte		        En3
	.byte	W96
_20361E0:
	.byte		N32   , Dn3 , v092
	.byte	W36
	.byte		        En3
	.byte	W36
	.byte		        Fn3
	.byte	W24
	.byte	PEND
	.byte	W12
	.byte		N10
	.byte	W36
	.byte		N11   , Gn3
	.byte	W24
	.byte		N11
	.byte	W24
	.byte	PATT
	 .word	_20361B5
	.byte	PATT
	 .word	_20361BE
_20361FB:
	.byte		N32   , As3 , v092
	.byte	W36
	.byte		N08
	.byte	W36
	.byte		N32
	.byte	W24
	.byte	PEND
_2036204:
	.byte	W12
	.byte		N08   , As3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PEND
_203620E:
	.byte		N32   , An3 , v092
	.byte	W36
	.byte		N08
	.byte	W60
	.byte	PEND
	.byte		N32   , Gn3
	.byte	W36
	.byte		N07
	.byte	W60
	.byte		N32   , Fn3
	.byte	W36
	.byte		N32
	.byte	W36
	.byte		N68   , Ds3
	.byte	W24
	.byte	W96
	.byte	PATT
	 .word	_20361B5
	.byte	PATT
	 .word	_20361BE
	.byte	PATT
	 .word	_20361C8
	.byte	PATT
	 .word	_20361D1
	.byte		N92   , Fn3 , v092
	.byte	W96
	.byte		        En3
	.byte	W96
	.byte	PATT
	 .word	_20361E0
	.byte	W12
	.byte		N08   , Fn3 , v092
	.byte	W36
	.byte		N07   , Gn3
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PATT
	 .word	_20361B5
	.byte	W12
	.byte		N08   , An3 , v092
	.byte	W36
	.byte		N07   , As3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte	PATT
	 .word	_20361FB
	.byte	PATT
	 .word	_2036204
	.byte	PATT
	 .word	_203620E
	.byte		N32   , Gn3 , v092
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_5_B1
panepon_bgm_flower_e12_01_5_B2:
	.byte	FINE

@**************** Track 6 (Midi-Chn.6) ****************@

panepon_bgm_flower_e12_01_6:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
panepon_bgm_flower_e12_01_6_B1:
	.byte		VOICE , 99
	.byte		PAN   , c_v+0
	.byte		MOD   , 0
	.byte		VOL   , 110
	.byte	W96
	.byte	W96
_203628E:
	.byte		N06   , Dn4 , v080
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	PEND
_2036295:
	.byte		N06   , En4 , v080
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	_203628E
	.byte	PATT
	 .word	_2036295
_20362A8:
	.byte		N30   , Cn4 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		N30
	.byte	W24
	.byte	PEND
_20362B1:
	.byte	W12
	.byte		N06   , Cn4 , v080
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
_20362BB:
	.byte		N30   , As3 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		N30
	.byte	W24
	.byte	PEND
_20362C4:
	.byte	W12
	.byte		N06   , As3 , v080
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N42   , An3
	.byte	W96
	.byte		        Gn3
	.byte	W96
_20362D3:
	.byte		N32   , Fn3 , v080
	.byte	W36
	.byte		        Gn3
	.byte	W36
	.byte		        An3
	.byte	W24
	.byte	PEND
_20362DC:
	.byte	W12
	.byte		N12   , As3 , v080
	.byte	W36
	.byte		N12
	.byte	W24
	.byte		N12
	.byte	W24
	.byte	PEND
	.byte	PATT
	 .word	_20362A8
	.byte	PATT
	 .word	_20362B1
_20362F0:
	.byte		N30   , Dn4 , v080
	.byte	W36
	.byte		N06
	.byte	W36
	.byte		N30
	.byte	W24
	.byte	PEND
_20362F9:
	.byte	W12
	.byte		N06   , Dn4 , v080
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W24
	.byte	PEND
	.byte		N30
	.byte	W36
	.byte		N06
	.byte	W60
_2036307:
	.byte		N32   , As3 , v080
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	PEND
	.byte		N32   , Gs3
	.byte	W36
	.byte		        Gn3
	.byte	W36
	.byte		N54   , Fn3
	.byte	W24
	.byte	W96
	.byte	PATT
	 .word	_20362A8
	.byte	PATT
	 .word	_20362B1
	.byte	PATT
	 .word	_20362BB
	.byte	PATT
	 .word	_20362C4
	.byte		N42   , An3 , v080
	.byte	W96
	.byte		        Gn3
	.byte	W96
	.byte	PATT
	 .word	_20362D3
	.byte	PATT
	 .word	_20362DC
	.byte	PATT
	 .word	_20362A8
	.byte	PATT
	 .word	_20362B1
	.byte	PATT
	 .word	_20362F0
	.byte	PATT
	 .word	_20362F9
	.byte		N28   , Dn4 , v080
	.byte	W36
	.byte		N06
	.byte	W60
	.byte	PATT
	 .word	_2036307
	.byte	W96
	.byte	W84
	.byte		VOICE , 84
	.byte	W12
	.byte		VOL   , 64*panepon_bgm_flower_e12_01_mvl/mxv
	.byte		N06   , Fn3 , v044
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        As3
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W24
	.byte		        Fn3
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W36
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_6_B1
panepon_bgm_flower_e12_01_6_B2:
	.byte	FINE

@**************** Track 7 (Midi-Chn.7) ****************@

panepon_bgm_flower_e12_01_7:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		PAN   , c_v+0
	.byte		VOL   , 110
	.byte	W13
	.byte		MOD   , 1
	.byte	W80
	.byte	W03
	.byte	W96
	.byte	W96
	.byte	W96
panepon_bgm_flower_e12_01_7_B1:
	.byte		VOICE , 27
	.byte	W96
	.byte	W96
_20363AB:
	.byte		N12   , Fn3 , v096
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	PEND
_20363B2:
	.byte		N12   , Gn3 , v096
	.byte	W36
	.byte		N12
	.byte	W60
	.byte	PEND
	.byte	W96
	.byte	W96
	.byte	PATT
	 .word	_20363AB
	.byte	PATT
	 .word	_20363B2
_20363C5:
	.byte		N32   , Fn3 , v092
	.byte	W36
	.byte		N08
	.byte	W36
	.byte		N32
	.byte	W24
	.byte	PEND
_20363CE:
	.byte	W12
	.byte		N08   , Fn3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PEND
_20363D8:
	.byte		N32   , Ds3 , v092
	.byte	W36
	.byte		N08
	.byte	W36
	.byte		N32
	.byte	W24
	.byte	PEND
_20363E1:
	.byte	W12
	.byte		N08   , Ds3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PEND
	.byte		N92   , Dn3
	.byte	W96
	.byte		        Cn3
	.byte	W96
_20363F0:
	.byte		N32   , As2 , v092
	.byte	W36
	.byte		        Cn3
	.byte	W36
	.byte		        Dn3
	.byte	W24
	.byte	PEND
	.byte	W12
	.byte		N10
	.byte	W36
	.byte		N11
	.byte	W24
	.byte		N11
	.byte	W24
	.byte	PATT
	 .word	_20363C5
	.byte	PATT
	 .word	_20363CE
	.byte	PATT
	 .word	_20363C5
	.byte	PATT
	 .word	_20363CE
_2036414:
	.byte		N32   , Fn3 , v092
	.byte	W36
	.byte		N08
	.byte	W60
	.byte	PEND
	.byte		N32   , Dn3
	.byte	W36
	.byte		N07   , En3
	.byte	W60
	.byte		N32   , Cs3
	.byte	W36
	.byte		        Cn3
	.byte	W36
	.byte		N68   , As2
	.byte	W24
	.byte	W96
	.byte	PATT
	 .word	_20363C5
	.byte	PATT
	 .word	_20363CE
	.byte	PATT
	 .word	_20363D8
	.byte	PATT
	 .word	_20363E1
	.byte		N92   , Dn3 , v092
	.byte	W96
	.byte		        Cn3
	.byte	W96
	.byte	PATT
	 .word	_20363F0
	.byte	W12
	.byte		N08   , Dn3 , v092
	.byte	W36
	.byte		N07
	.byte	W24
	.byte		N07
	.byte	W24
	.byte	PATT
	 .word	_20363C5
	.byte	PATT
	 .word	_20363CE
	.byte	PATT
	 .word	_20363C5
	.byte	PATT
	 .word	_20363CE
	.byte	PATT
	 .word	_2036414
	.byte		N32   , Dn3 , v092
	.byte	W36
	.byte		N06   , En3
	.byte	W60
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_7_B1
panepon_bgm_flower_e12_01_7_B2:
	.byte	FINE

@**************** Track 8 (Midi-Chn.8) ****************@

panepon_bgm_flower_e12_01_8:
	.byte	KEYSH , panepon_bgm_flower_e12_01_key+0
	.byte		VOICE , 126
	.byte		VOL   , 110
	.byte	W60
	.byte		N05   , Ds1 , v084
	.byte	W12
	.byte		N07
	.byte	W24
	.byte	W96
	.byte	W56
	.byte	W03
	.byte		N01
	.byte	W01
	.byte		N04
	.byte	W12
	.byte		N08
	.byte	W24
	.byte	W96
panepon_bgm_flower_e12_01_8_B1:
	.byte		N06   , Cn1 , v127
	.byte	W24
	.byte		        Dn1
	.byte	W24
	.byte		        Cn1
	.byte	W24
	.byte		        Dn1
	.byte	W24
	.byte	PEND
_20364A2:
	.byte		N06   , Cn1 , v127
	.byte	W24
	.byte		        Dn1
	.byte	W24
	.byte		        Cn1
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte	PATT
	 .word	_20364A2
	.byte	PATT
	 .word	panepon_bgm_flower_e12_01_8_B1
	.byte		N06   , Cn1 , v127
	.byte	W24
	.byte		N06
	.byte	W24
	.byte		N06
	.byte	W12
	.byte		N06
	.byte	W12
	.byte		        Dn1
	.byte	W12
	.byte		        Cn1
	.byte	W12
	.byte	GOTO
	 .word	panepon_bgm_flower_e12_01_8_B1
panepon_bgm_flower_e12_01_8_B2:
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_flower_e12_01:
	.byte	8	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_flower_e12_01_pri	@ Priority
	.byte	panepon_bgm_flower_e12_01_rev	@ Reverb.

	.word	panepon_bgm_flower_e12_01_grp

	.word	panepon_bgm_flower_e12_01_1
	.word	panepon_bgm_flower_e12_01_2
	.word	panepon_bgm_flower_e12_01_3
	.word	panepon_bgm_flower_e12_01_4
	.word	panepon_bgm_flower_e12_01_5
	.word	panepon_bgm_flower_e12_01_6
	.word	panepon_bgm_flower_e12_01_7
	.word	panepon_bgm_flower_e12_01_8

	.end

