	.include "MPlayDef.s"

	.equ	panepon_bgm_flower_02_grp, voicegroup000
	.equ	panepon_bgm_flower_02_pri, 0
	.equ	panepon_bgm_flower_02_rev, 158
	.equ	panepon_bgm_flower_02_mvl, 120
	.equ	panepon_bgm_flower_02_key, 0
	.equ	panepon_bgm_flower_02_tbs, 1
	.equ	panepon_bgm_flower_02_exg, 0
	.equ	panepon_bgm_flower_02_cmp, 1

	.section .rodata
	.global	panepon_bgm_flower_02
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_flower_02_1:
	.byte	KEYSH , panepon_bgm_flower_02_key+0
panepon_bgm_flower_02_1_B1:
	.byte	TEMPO , 128*panepon_bgm_flower_02_tbs/2
	.byte		VOICE , 37
	.byte		VOL   , 120
	.byte		N04   , Fn1 , v127
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N05   , Ds1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		        Ds1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		        As0
	.byte	W12
	.byte		        Cn1
	.byte	W06
	.byte		N10   , Fn1
	.byte	W06
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Ds1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		        Ds1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N10   , As0
	.byte	W12
	.byte		N05   , Cn1
	.byte	W06
	.byte		N10   , Fn1
	.byte	W06
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Ds1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		N10   , Ds1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N10   , As0
	.byte	W12
	.byte		N05   , Cn1
	.byte	W06
	.byte		N10   , Fn1
	.byte	W06
	.byte	W06
	.byte		N05
	.byte	W06
	.byte		        Ds1
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W18
	.byte		        Ds1
	.byte	W12
	.byte		N05
	.byte	W06
	.byte		        Dn1
	.byte	W06
	.byte		        Cn1
	.byte	W06
	.byte		N10   , As0
	.byte	W12
	.byte		N05   , Cn1
	.byte	W12
	.byte	GOTO
	 .word	panepon_bgm_flower_02_1_B1
panepon_bgm_flower_02_1_B2:
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_flower_02_2:
	.byte	KEYSH , panepon_bgm_flower_02_key+0
panepon_bgm_flower_02_2_B1:
	.byte		VOICE , 56
	.byte		VOL   , 82*panepon_bgm_flower_02_mvl/mxv
	.byte		N15   , Cn4 , v100
	.byte		N15   , Fs4
	.byte	W18
	.byte		N05   , Cn4
	.byte		N05   , Fs4
	.byte	W18
	.byte		TIE   , Cn4
	.byte		TIE   , Fn4
	.byte	W60
	.byte	W72
	.byte		EOT   , Cn4
	.byte		        Fn4
	.byte	W24
	.byte		N15   , Cn4
	.byte		N15   , Fs4
	.byte	W18
	.byte		N05   , Cn4
	.byte		N05   , Fs4
	.byte	W18
	.byte		TIE   , Cn4
	.byte		TIE   , Fn4
	.byte	W60
	.byte	W72
	.byte		EOT   , Cn4
	.byte		        Fn4
	.byte	W24
	.byte	GOTO
	 .word	panepon_bgm_flower_02_2_B1
panepon_bgm_flower_02_2_B2:
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_bgm_flower_02_3:
	.byte	KEYSH , panepon_bgm_flower_02_key+0
panepon_bgm_flower_02_3_B1:
	.byte		VOICE , 126
	.byte		VOL   , 120
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
_203669D:
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte		N06   , Cn1 , v127
	.byte	W12
	.byte		N04   , Fs1 , v032
	.byte	W06
	.byte		N04
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	_203669D
	.byte	PATT
	 .word	_203669D
	.byte	GOTO
	 .word	panepon_bgm_flower_02_3_B1
panepon_bgm_flower_02_3_B2:
	.byte	FINE

@**************** Track 4 (Midi-Chn.4) ****************@

panepon_bgm_flower_02_4:
	.byte	KEYSH , panepon_bgm_flower_02_key+0
panepon_bgm_flower_02_4_B1:
	.byte		VOICE , 80
	.byte		VOL   , 62*panepon_bgm_flower_02_mvl/mxv
	.byte		PAN   , c_v+0
	.byte		N03   , Fs3 , v084
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
_2036700:
	.byte		N03   , Fs3 , v084
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte	PEND
	.byte	PATT
	 .word	_2036700
	.byte		N03   , Fs3 , v084
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        As3
	.byte	W06
	.byte		        Gs3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte		        Ds3
	.byte	W06
	.byte		        Fn3
	.byte	W06
	.byte		        Fs3
	.byte	W06
	.byte	GOTO
	 .word	panepon_bgm_flower_02_4_B1
panepon_bgm_flower_02_4_B2:
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_flower_02:
	.byte	4	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_flower_02_pri	@ Priority
	.byte	panepon_bgm_flower_02_rev	@ Reverb.

	.word	panepon_bgm_flower_02_grp

	.word	panepon_bgm_flower_02_1
	.word	panepon_bgm_flower_02_2
	.word	panepon_bgm_flower_02_3
	.word	panepon_bgm_flower_02_4

	.end

