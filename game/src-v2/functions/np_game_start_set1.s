	thumb_func_start np_game_start_set1
np_game_start_set1:
	push	{r4, r5, r6, lr}
	ldr	r0, .Lnp_game_start_set1_3 @ ARam
	ldrb	r1, [r0, #0x17]
	add	r6, r0, #0
	cmp	r1, #0
	bne	.Lnp_game_start_set1_1	@cond_branch
	ldr	r2, .Lnp_game_start_set1_3 + 4 @ NRam
	ldr	r0, .Lnp_game_start_set1_3 + 8 @ 0xa94
	add	r1, r2, r0
	ldr	r0, .Lnp_game_start_set1_3 + 12 @ 0x1869f
	b	.Lnp_game_start_set1_2
.Lnp_game_start_set1_4:
	.align	2, 0
.Lnp_game_start_set1_3:
	.word	ARam
	.word	NRam
	.word	0xa94
	.word	0x1869f
.Lnp_game_start_set1_1:
	ldr	r2, .Lnp_game_start_set1_7 @ NRam
	ldr	r0, .Lnp_game_start_set1_7 + 4 @ 0xa94
	add	r1, r2, r0
	ldr	r0, .Lnp_game_start_set1_7 + 8 @ 0xf423f
.Lnp_game_start_set1_2:
	str	r0, [r1]
	add	r5, r2, #0
	add	r1, r5, #0
	mov	r4, #0x0
	mov	r0, #0x1
	strb	r0, [r1, #0x9]
	mov	r2, #0x2
	strb	r2, [r1, #0x4]
	ldrb	r0, [r6, #0x2]
	cmp	r0, #0x9
	bne	.Lnp_game_start_set1_5	@cond_branch
	strb	r2, [r1]
	mov	r0, #0x6
	strh	r0, [r1, #0x2]
.Lnp_game_start_set1_5:
	strb	r4, [r5, #0x8]
	mov	r1, #0xaa
	lsl	r1, r1, #0x4
	add	r0, r5, r1
	strb	r4, [r0]
	bl	np_OjamaAttackInit
	mov	r0, #0xa
	mov	r1, #0x1
	bl	KeyRead_SetPara
	ldr	r0, .Lnp_game_start_set1_7 + 12 @ b_BG0HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_7 + 16 @ b_BG0VOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_7 + 20 @ b_BG1HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_7 + 24 @ b_BG1VOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_7 + 28 @ b_BG2HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_7 + 32 @ b_BG2VOFS
	strh	r4, [r0]
	bl	np_rlup_set
	bl	np_AgbKey_Init
	add	r0, r6, #0
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_game_start_set1_6	@cond_branch
	ldr	r0, .Lnp_game_start_set1_7 + 36 @ 0xa59
	add	r1, r5, r0
	mov	r0, #0x0
	strb	r0, [r1]
.Lnp_game_start_set1_6:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_game_start_set1_8:
	.align	2, 0
.Lnp_game_start_set1_7:
	.word	NRam
	.word	0xa94
	.word	0xf423f
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	.word	0xa59
	thumb_func_end np_game_start_set1
