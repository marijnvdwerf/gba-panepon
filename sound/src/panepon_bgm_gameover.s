	.include "MPlayDef.s"

	.equ	panepon_bgm_gameover_grp, voicegroup000
	.equ	panepon_bgm_gameover_pri, 0
	.equ	panepon_bgm_gameover_rev, 178
	.equ	panepon_bgm_gameover_mvl, 110
	.equ	panepon_bgm_gameover_key, 0
	.equ	panepon_bgm_gameover_tbs, 1
	.equ	panepon_bgm_gameover_exg, 0
	.equ	panepon_bgm_gameover_cmp, 1

	.section .rodata
	.global	panepon_bgm_gameover
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_bgm_gameover_1:
	.byte	KEYSH , panepon_bgm_gameover_key+0
panepon_bgm_gameover_1_B1:
	.byte	TEMPO , 100*panepon_bgm_gameover_tbs/2
	.byte		VOICE , 13
	.byte		VOL   , 100*panepon_bgm_gameover_mvl/mxv
	.byte		PAN   , c_v+30
	.byte		N24   , Cs4 , v080
	.byte		N24   , An4
	.byte	W24
	.byte		        Bn3
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An3
	.byte		N24   , Fs4
	.byte	W24
_2036780:
	.byte		N24   , Gs3 , v080
	.byte		N24   , Fn4
	.byte	W24
	.byte		        An3
	.byte		N24   , Fs4
	.byte	W24
	.byte		        Bn3
	.byte		N24   , Gs4
	.byte	W24
	.byte	PEND
	.byte		N72   , An3
	.byte		N72   , Fs4
	.byte	W72
	.byte		N48   , Gs3
	.byte		N48   , Cs4
	.byte	W72
	.byte		N24
	.byte		N24   , An4
	.byte	W24
	.byte		        Bn3
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An3
	.byte		N24   , Fs4
	.byte	W24
	.byte	PATT
	 .word	_2036780
	.byte		N72   , An3 , v080
	.byte		N72   , Fs4
	.byte	W72
	.byte		N24   , As3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        Cs4
	.byte	W24
	.byte		        Fs4
	.byte		N24   , Dn5
	.byte	W24
	.byte		        En4
	.byte		N24   , Cs5
	.byte	W24
	.byte		        Dn4
	.byte		N24   , Bn4
	.byte	W24
	.byte		        Cs4
	.byte		N24   , As4
	.byte	W24
	.byte		        Dn4
	.byte		N24   , Bn4
	.byte	W24
	.byte		        En4
	.byte		N24   , Cs5
	.byte	W24
	.byte		N72   , Dn4
	.byte		N72   , Bn4
	.byte	W72
	.byte		N48   , Fs4
	.byte		N48   , Dn5
	.byte	W72
	.byte		        Fs4
	.byte		N24   , Cs5
	.byte	W24
	.byte		        Bn4
	.byte	W24
	.byte		        Cs4
	.byte		N24   , An4
	.byte	W24
	.byte		N48   , Ds4
	.byte		N24   , Gs4
	.byte	W24
	.byte		        An4
	.byte	W24
	.byte		        Ds4
	.byte		N24   , Fs4
	.byte	W24
	.byte		N72   , Cs4
	.byte		TIE   , Gs4
	.byte	W72
	.byte		N24   , Dn4
	.byte	W24
	.byte		        Cs4
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		EOT   , Gs4
	.byte	GOTO
	 .word	panepon_bgm_gameover_1_B1
panepon_bgm_gameover_1_B2:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_bgm_gameover_2:
	.byte	KEYSH , panepon_bgm_gameover_key+0
panepon_bgm_gameover_2_B1:
	.byte		VOICE , 13
	.byte		VOL   , 80*panepon_bgm_gameover_mvl/mxv
	.byte		PAN   , c_v-30
	.byte		N24   , Fs2 , v100
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Fs3
	.byte	W24
_2036834:
	.byte		N24   , Fs2 , v100
	.byte	W24
	.byte		        Dn3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte	PEND
_203683D:
	.byte		N24   , Fs2 , v100
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte	PEND
	.byte		        Fs2
	.byte	W24
	.byte		        Bn2
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte	PATT
	 .word	_203683D
	.byte	PATT
	 .word	_2036834
	.byte	PATT
	 .word	_203683D
	.byte		N24   , Fs2 , v100
	.byte	W24
	.byte		        Gs2
	.byte	W24
	.byte		        As2
	.byte	W24
_2036863:
	.byte		N24   , Bn2 , v100
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte	PEND
	.byte		        Bn2
	.byte	W24
	.byte		        Gn3
	.byte	W24
	.byte		        As3
	.byte	W24
	.byte	PATT
	 .word	_2036863
	.byte		N24   , Gs2 , v100
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Fs3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		N48   , Cn3
	.byte	W24
	.byte		N24   , Fs3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Cs3
	.byte	W24
	.byte		        Fn3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte		        Bn3
	.byte	W24
	.byte		        An3
	.byte	W24
	.byte		        Gs3
	.byte	W24
	.byte	GOTO
	 .word	panepon_bgm_gameover_2_B1
panepon_bgm_gameover_2_B2:
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

panepon_bgm_gameover:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_bgm_gameover_pri	@ Priority
	.byte	panepon_bgm_gameover_rev	@ Reverb.

	.word	panepon_bgm_gameover_grp

	.word	panepon_bgm_gameover_1
	.word	panepon_bgm_gameover_2

	.end

