	.include "MPlayDef.s"

	.equ	panepon_se_block_d_big_e9_3_grp, voicegroup002
	.equ	panepon_se_block_d_big_e9_3_pri, 50
	.equ	panepon_se_block_d_big_e9_3_rev, 0
	.equ	panepon_se_block_d_big_e9_3_mvl, 110
	.equ	panepon_se_block_d_big_e9_3_key, 0
	.equ	panepon_se_block_d_big_e9_3_tbs, 1
	.equ	panepon_se_block_d_big_e9_3_exg, 0
	.equ	panepon_se_block_d_big_e9_3_cmp, 1

	.section .rodata
	.global	panepon_se_block_d_big_e9_3
	.align	2

@**************** Track 1 (Midi-Chn.1) ****************@

panepon_se_block_d_big_e9_3_1:
	.byte		VOL   , 110
	.byte	KEYSH , panepon_se_block_d_big_e9_3_key+0
	.byte	TEMPO , 150*panepon_se_block_d_big_e9_3_tbs/2
	.byte		VOICE , 27
	.byte		BENDR , 24
	.byte		BEND  , c_v+10
	.byte		N06   , As2 , v076
	.byte	W01
	.byte		BEND  , c_v+7
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		VOL   , 88*panepon_se_block_d_big_e9_3_mvl/mxv
	.byte		BEND  , c_v+0
	.byte	W01
	.byte		        c_v+28
	.byte	W01
	.byte		        c_v+22
	.byte		N04   , Gn2 , v072
	.byte	W01
	.byte		BEND  , c_v+16
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+5
	.byte	W01
	.byte		        c_v+0
	.byte		N05   , Cn3
	.byte	W01
	.byte		BEND  , c_v-3
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-5
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-6
	.byte		N13   , As2 , v127
	.byte	W01
	.byte		BEND  , c_v-7
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-9
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-11
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-13
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-15
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v+16
	.byte		N23   , Fn2 , v076
	.byte	W01
	.byte		BEND  , c_v+14
	.byte	W01
	.byte		        c_v+12
	.byte	W01
	.byte		        c_v+10
	.byte	W01
	.byte		        c_v+8
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		        c_v-2
	.byte	W01
	.byte		        c_v-4
	.byte	W01
	.byte		        c_v-6
	.byte	W01
	.byte		        c_v-8
	.byte	W01
	.byte		        c_v-10
	.byte	W01
	.byte		        c_v-12
	.byte	W01
	.byte		        c_v-14
	.byte	W01
	.byte		        c_v-16
	.byte	W01
	.byte		        c_v-14
	.byte	W24
	.byte	W03
	.byte	W72
	.byte	FINE

@**************** Track 2 (Midi-Chn.2) ****************@

panepon_se_block_d_big_e9_3_2:
	.byte	KEYSH , panepon_se_block_d_big_e9_3_key+0
	.byte		VOICE , 14
	.byte		VOL   , 110
	.byte		N08   , Gs3 , v060
	.byte	W72
	.byte	W72
	.byte	FINE

@**************** Track 3 (Midi-Chn.3) ****************@

panepon_se_block_d_big_e9_3_3:
	.byte	KEYSH , panepon_se_block_d_big_e9_3_key+0
	.byte		VOL   , 110
	.byte	W04
	.byte		BENDR , 24
	.byte	W02
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+0
	.byte	W01
	.byte		VOICE , 18
	.byte		N02   , Dn6 , v048
	.byte	W02
	.byte		        Cs6
	.byte	W01
	.byte		BEND  , c_v+19
	.byte		N05   , Gn1 , v127
	.byte	W01
	.byte		BEND  , c_v+41
	.byte	W01
	.byte		        c_v+58
	.byte	W01
	.byte		        c_v+55
	.byte	W01
	.byte		        c_v+53
	.byte	W01
	.byte		        c_v+51
	.byte	W01
	.byte		        c_v+48
	.byte		N06   , Fn1
	.byte	W01
	.byte		BEND  , c_v+46
	.byte	W01
	.byte		        c_v+44
	.byte	W01
	.byte		        c_v+41
	.byte	W01
	.byte		        c_v+39
	.byte	W01
	.byte		        c_v+37
	.byte	W01
	.byte		        c_v+34
	.byte		N05   , Gn1
	.byte	W01
	.byte		BEND  , c_v+32
	.byte	W01
	.byte		        c_v+30
	.byte	W01
	.byte		        c_v+27
	.byte	W01
	.byte		        c_v+25
	.byte	W01
	.byte		        c_v+23
	.byte	W01
	.byte		        c_v+20
	.byte		N15   , Ds1 , v100
	.byte	W01
	.byte		BEND  , c_v+18
	.byte	W01
	.byte		        c_v+16
	.byte	W01
	.byte		        c_v+13
	.byte	W01
	.byte		        c_v+11
	.byte	W01
	.byte		        c_v+9
	.byte	W01
	.byte		        c_v+6
	.byte	W01
	.byte		        c_v+4
	.byte	W01
	.byte		        c_v+2
	.byte	W01
	.byte		        c_v+0
	.byte	W32
	.byte	W01
	.byte	W72
	.byte	FINE

@******************************************************@
	.align	2

panepon_se_block_d_big_e9_3:
	.byte	3	@ NumTrks
	.byte	0	@ NumBlks
	.byte	panepon_se_block_d_big_e9_3_pri	@ Priority
	.byte	panepon_se_block_d_big_e9_3_rev	@ Reverb.

	.word	panepon_se_block_d_big_e9_3_grp

	.word	panepon_se_block_d_big_e9_3_1
	.word	panepon_se_block_d_big_e9_3_2
	.word	panepon_se_block_d_big_e9_3_3

	.end

