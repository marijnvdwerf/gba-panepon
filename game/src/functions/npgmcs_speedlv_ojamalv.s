	thumb_func_start npgmcs_speedlv_ojamalv
npgmcs_speedlv_ojamalv:
	ldr	r0, .Lnpgmcs_speedlv_ojamalv_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgmcs_speedlv_ojamalv_21	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgmcs_speedlv_ojamalv_2 + 4 @ .Lnpgmcs_speedlv_ojamalv_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgmcs_speedlv_ojamalv_3:
	.align	2, 0
.Lnpgmcs_speedlv_ojamalv_2:
	.word	ARam
	.word	.Lnpgmcs_speedlv_ojamalv_4
.Lnpgmcs_speedlv_ojamalv_4:
	.word	.Lnpgmcs_speedlv_ojamalv_5
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_9
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
	.word	.Lnpgmcs_speedlv_ojamalv_14
.Lnpgmcs_speedlv_ojamalv_5:
	ldr	r3, .Lnpgmcs_speedlv_ojamalv_16 @ np1p_game_frame_Asc_SpeedLv
	b	.Lnpgmcs_speedlv_ojamalv_18
.Lnpgmcs_speedlv_ojamalv_17:
	.align	2, 0
.Lnpgmcs_speedlv_ojamalv_16:
	.word	np1p_game_frame_Asc_SpeedLv
.Lnpgmcs_speedlv_ojamalv_9:
	ldr	r3, .Lnpgmcs_speedlv_ojamalv_19 @ np1p_game_frame_Asc_OjamaLv
	b	.Lnpgmcs_speedlv_ojamalv_18
.Lnpgmcs_speedlv_ojamalv_20:
	.align	2, 0
.Lnpgmcs_speedlv_ojamalv_19:
	.word	np1p_game_frame_Asc_OjamaLv
.Lnpgmcs_speedlv_ojamalv_21:
	b	.Lnpgmcs_speedlv_ojamalv_21
.Lnpgmcs_speedlv_ojamalv_14:
	mov	r0, #0x0
	cmp	r0, #0
	beq	.Lnpgmcs_speedlv_ojamalv_22	@cond_branch
.Lnpgmcs_speedlv_ojamalv_18:
	ldr	r2, .Lnpgmcs_speedlv_ojamalv_24 @ CRAM_BGA_SCR_GameFrame+0x26c
	mov	r1, #0x7
.Lnpgmcs_speedlv_ojamalv_23:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, r3, #0x2
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.Lnpgmcs_speedlv_ojamalv_23	@cond_branch
.Lnpgmcs_speedlv_ojamalv_22:
	bx	lr
.Lnpgmcs_speedlv_ojamalv_25:
	.align	2, 0
.Lnpgmcs_speedlv_ojamalv_24:
	.word	CRAM_BGA_SCR_GameFrame+0x26c
	thumb_func_end npgmcs_speedlv_ojamalv
