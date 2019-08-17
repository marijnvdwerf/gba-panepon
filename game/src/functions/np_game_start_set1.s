	thumb_func_start np_game_start_set1
np_game_start_set1:
	push	{r4, r5, lr}
	ldr	r0, .Lnp_game_start_set1_3 @ ARam
	ldrb	r0, [r0, #0x17]
	cmp	r0, #0
	bne	.Lnp_game_start_set1_1	@cond_branch
	ldr	r2, .Lnp_game_start_set1_3 + 4 @ NRam
	mov	r0, #0xb1
	lsl	r0, r0, #0x4
	add	r1, r2, r0
	ldr	r0, .Lnp_game_start_set1_3 + 8 @ 0x1869f
	b	.Lnp_game_start_set1_2
.Lnp_game_start_set1_4:
	.align	2, 0
.Lnp_game_start_set1_3:
	.word	ARam
	.word	NRam
	.word	0x1869f
.Lnp_game_start_set1_1:
	ldr	r2, .Lnp_game_start_set1_6 @ NRam
	mov	r0, #0xb1
	lsl	r0, r0, #0x4
	add	r1, r2, r0
	ldr	r0, .Lnp_game_start_set1_6 + 4 @ 0xf423f
.Lnp_game_start_set1_2:
	str	r0, [r1]
	add	r5, r2, #0
	mov	r4, #0x0
	mov	r0, #0x1
	strb	r0, [r5, #0x9]
	mov	r0, #0x2
	strb	r0, [r5, #0x4]
	strb	r4, [r5, #0x8]
	ldr	r1, .Lnp_game_start_set1_6 + 8 @ 0xb1c
	add	r0, r5, r1
	strb	r4, [r0]
	bl	np_OjamaAttackInit
	mov	r0, #0xa
	mov	r1, #0x1
	bl	KeyRead_SetPara
	ldr	r0, .Lnp_game_start_set1_6 + 12 @ b_BG0HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_6 + 16 @ b_BG0VOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_6 + 20 @ b_BG1HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_6 + 24 @ b_BG1VOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_6 + 28 @ b_BG2HOFS
	strh	r4, [r0]
	ldr	r0, .Lnp_game_start_set1_6 + 32 @ b_BG2VOFS
	strh	r4, [r0]
	bl	np_rlup_set
	bl	np_AgbKey_Init
	ldr	r0, .Lnp_game_start_set1_6 + 36 @ ARam
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_game_start_set1_5	@cond_branch
	ldr	r0, .Lnp_game_start_set1_6 + 40 @ 0xad9
	add	r1, r5, r0
	mov	r0, #0x0
	strb	r0, [r1]
.Lnp_game_start_set1_5:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_game_start_set1_7:
	.align	2, 0
.Lnp_game_start_set1_6:
	.word	NRam
	.word	0xf423f
	.word	0xb1c
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	.word	ARam
	.word	0xad9
	thumb_func_end np_game_start_set1
