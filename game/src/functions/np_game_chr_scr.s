	thumb_func_start np_game_chr_scr
np_game_chr_scr:
	push	{r4, r5, lr}
	ldr	r0, .Lnp_game_chr_scr_2 @ ponagb2m_frame_Asc_LZ
	ldr	r1, .Lnp_game_chr_scr_2 + 4 @ CRAM_BGA_SCR_GameFrame
	bl	LZ77UnCompVram
	bl	npgmcs_speedlv_ojamalv
	ldr	r0, .Lnp_game_chr_scr_2 + 8 @ ARam
	ldrb	r0, [r0, #0x6]
	cmp	r0, #0x5
	bhi	.Lnp_game_chr_scr_36	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_game_chr_scr_2 + 12 @ .Lnp_game_chr_scr_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_game_chr_scr_3:
	.align	2, 0
.Lnp_game_chr_scr_2:
	.word	ponagb2m_frame_Asc_LZ
	.word	CRAM_BGA_SCR_GameFrame
	.word	ARam
	.word	.Lnp_game_chr_scr_4
.Lnp_game_chr_scr_4:
	.word	.Lnp_game_chr_scr_5
	.word	.Lnp_game_chr_scr_6
	.word	.Lnp_game_chr_scr_7
	.word	.Lnp_game_chr_scr_8
	.word	.Lnp_game_chr_scr_9
	.word	.Lnp_game_chr_scr_10
.Lnp_game_chr_scr_5:
	ldr	r4, .Lnp_game_chr_scr_12 @ np1p_game_frame_Asc_EASY
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_13:
	.align	2, 0
.Lnp_game_chr_scr_12:
	.word	np1p_game_frame_Asc_EASY
.Lnp_game_chr_scr_6:
	ldr	r4, .Lnp_game_chr_scr_15 @ np1p_game_frame_Asc_NORMAL
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_16:
	.align	2, 0
.Lnp_game_chr_scr_15:
	.word	np1p_game_frame_Asc_NORMAL
.Lnp_game_chr_scr_7:
	ldr	r4, .Lnp_game_chr_scr_18 @ np1p_game_frame_Asc_HARD
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_19:
	.align	2, 0
.Lnp_game_chr_scr_18:
	.word	np1p_game_frame_Asc_HARD
.Lnp_game_chr_scr_8:
	ldr	r4, .Lnp_game_chr_scr_21 @ np1p_game_frame_Asc_S_HARD
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_22:
	.align	2, 0
.Lnp_game_chr_scr_21:
	.word	np1p_game_frame_Asc_S_HARD
.Lnp_game_chr_scr_9:
	ldr	r4, .Lnp_game_chr_scr_24 @ np1p_game_frame_Asc_V_HARD
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_25:
	.align	2, 0
.Lnp_game_chr_scr_24:
	.word	np1p_game_frame_Asc_V_HARD
.Lnp_game_chr_scr_10:
	ldr	r0, .Lnp_game_chr_scr_30 @ ARam
	ldrb	r0, [r0, #0x14]
	cmp	r0, #0x1
	beq	.Lnp_game_chr_scr_26	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnp_game_chr_scr_27	@cond_branch
	cmp	r0, #0
	beq	.Lnp_game_chr_scr_28	@cond_branch
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_31:
	.align	2, 0
.Lnp_game_chr_scr_30:
	.word	ARam
.Lnp_game_chr_scr_27:
	cmp	r0, #0x2
	bne	.Lnp_game_chr_scr_36	@cond_branch
	ldr	r4, .Lnp_game_chr_scr_34 @ np1p_game_frame_Asc_SLOW1
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_35:
	.align	2, 0
.Lnp_game_chr_scr_34:
	.word	np1p_game_frame_Asc_SLOW1
.Lnp_game_chr_scr_28:
	ldr	r4, .Lnp_game_chr_scr_37 @ np1p_game_frame_Asc_SLOW2
	b	.Lnp_game_chr_scr_36
.Lnp_game_chr_scr_38:
	.align	2, 0
.Lnp_game_chr_scr_37:
	.word	np1p_game_frame_Asc_SLOW2
.Lnp_game_chr_scr_26:
	ldr	r4, .Lnp_game_chr_scr_41 @ np1p_game_frame_Asc_SLOW3
.Lnp_game_chr_scr_36:
	mov	r0, #0xd
	ldr	r5, .Lnp_game_chr_scr_41 + 4 @ CRAM_BGA_SCR_GameFrame
.Lnp_game_chr_scr_40:
	add	r3, r0, #1
	lsl	r0, r0, #0x6
	add	r0, r0, r5
	add	r1, r0, #0
	add	r1, r1, #0x2e
	mov	r2, #0x5
.Lnp_game_chr_scr_39:
	ldrh	r0, [r4]
	strh	r0, [r1]
	add	r4, r4, #0x2
	add	r1, r1, #0x2
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.Lnp_game_chr_scr_39	@cond_branch
	add	r0, r3, #0
	cmp	r0, #0xe
	ble	.Lnp_game_chr_scr_40	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_game_chr_scr_42:
	.align	2, 0
.Lnp_game_chr_scr_41:
	.word	np1p_game_frame_Asc_SLOW3
	.word	CRAM_BGA_SCR_GameFrame
	thumb_func_end np_game_chr_scr
