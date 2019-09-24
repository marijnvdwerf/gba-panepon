	.include "MPlayDef.s"

	.equ	panepon_se_panel_over_e2_grp, voicegroup002
	.equ	panepon_se_panel_over_e2_pri, 40
	.equ	panepon_se_panel_over_e2_rev, 0
	.equ	panepon_se_panel_over_e2_mvl, 100
	.equ	panepon_se_panel_over_e2_key, 0
	.equ	panepon_se_panel_over_e2_tbs, 1
	.equ	panepon_se_panel_over_e2_exg, 0
	.equ	panepon_se_panel_over_e2_cmp, 1

	.section .rodata
	.global	panepon_se_panel_over_e2
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_panel_over_e2_1:
	.byte	KEYSH , panepon_se_panel_over_e2_key+0
	.byte	TEMPO , 150*panepon_se_panel_over_e2_tbs/2
	.byte		VOICE , 8
	.byte		VOL   , 90*panepon_se_panel_over_e2_mvl/mxv
	.byte		N04   , Dn4 , v112
	.byte	W06
	.byte		N03   , Gn4
	.byte	W03
	.byte		        An4
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		        Gs4
	.byte	W03
	.byte		        Fs4
	.byte	W03
	.byte		        En4
	.byte	W03
	.byte		        Dn4
	.byte	W03
	.byte		        Cn4
	.byte	W03
	.byte		        As3
	.byte	W03
	.byte		N04   , Gs3
	.byte	W04
	.byte		        Fs3
	.byte	W04
	.byte		        Fn3
	.byte	W04
	.byte		        Ds3
	.byte	W04
	.byte		N05   , Cs3
	.byte	W05
	.byte		        Bn2
	.byte	W06
	.byte		        As2
	.byte	W06
	.byte		        Gs2
	.byte	W08
	.byte		N06   , Fs2
	.byte	W08
	.byte		        Cs2
	.byte	W06
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_panel_over_e2_2:
	.byte	KEYSH , panepon_se_panel_over_e2_key+0
	.byte		VOICE , 13
	.byte		VOL   , 100
	.byte		N04   , Fs1 , v127
	.byte	W04
	.byte		        Dn2
	.byte	W04
	.byte		        Fs1
	.byte	W04
	.byte		        Dn2
	.byte	W05
	.byte		        Dn2 , v104
	.byte	W05
	.byte		        Dn2 , v068
	.byte	W05
	.byte		        Dn2 , v036
	.byte	W04
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_panel_over_e2:
	.byte	2	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_panel_over_e2_pri	@ Priority
	.byte	panepon_se_panel_over_e2_rev	@ Reverb.

	.word	panepon_se_panel_over_e2_grp

	.word	panepon_se_panel_over_e2_1
	.word	panepon_se_panel_over_e2_2

	.end

