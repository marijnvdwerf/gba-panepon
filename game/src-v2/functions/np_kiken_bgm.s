	thumb_func_start np_kiken_bgm
np_kiken_bgm:
	push	{lr}
	ldr	r0, .Lnp_kiken_bgm_12 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x3
	beq	.Lnp_kiken_bgm_14	@cond_branch
	cmp	r0, #0x9
	beq	.Lnp_kiken_bgm_14	@cond_branch
	ldr	r0, .Lnp_kiken_bgm_12 + 4 @ NRam
	ldr	r2, .Lnp_kiken_bgm_12 + 8 @ 0xa8c
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.Lnp_kiken_bgm_14	@cond_branch
	ldr	r1, .Lnp_kiken_bgm_12 + 12 @ 0xab6
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_kiken_bgm_14	@cond_branch
	mov	r1, #0x0
	mov	r0, #0xab
	lsl	r0, r0, #0x1
	add	r2, r3, r0
.Lnp_kiken_bgm_7:
	ldrb	r0, [r2]
	cmp	r0, #0
	beq	.Lnp_kiken_bgm_5	@cond_branch
	cmp	r0, #0x7
	bne	.Lnp_kiken_bgm_8	@cond_branch
.Lnp_kiken_bgm_5:
	add	r2, r2, #0x8
	add	r1, r1, #0x1
	cmp	r1, #0x5
	ble	.Lnp_kiken_bgm_7	@cond_branch
	mov	r1, #0x6
	ldr	r0, .Lnp_kiken_bgm_12 + 4 @ NRam
	mov	r2, #0xc3
	lsl	r2, r2, #0x1
	add	r0, r0, r2
.Lnp_kiken_bgm_9:
	ldrb	r2, [r0]
	cmp	r2, #0
	bne	.Lnp_kiken_bgm_8	@cond_branch
	add	r0, r0, #0x8
	add	r1, r1, #0x1
	cmp	r1, #0x11
	ble	.Lnp_kiken_bgm_9	@cond_branch
	ldr	r0, .Lnp_kiken_bgm_12 + 16 @ 0xa8b
	add	r1, r3, r0
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_kiken_bgm_14	@cond_branch
	strb	r2, [r1]
	bl	np_game_bgm_normal
	b	.Lnp_kiken_bgm_14
.Lnp_kiken_bgm_13:
	.align	2, 0
.Lnp_kiken_bgm_12:
	.word	ARam
	.word	NRam
	.word	0xa8c
	.word	0xab6
	.word	0xa8b
.Lnp_kiken_bgm_8:
	ldr	r2, .Lnp_kiken_bgm_15 @ 0xa8b
	add	r1, r3, r2
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_kiken_bgm_14	@cond_branch
	mov	r0, #0x1
	strb	r0, [r1]
	bl	np_game_bgm_danger
.Lnp_kiken_bgm_14:
	pop	{r0}
	bx	r0
.Lnp_kiken_bgm_16:
	.align	2, 0
.Lnp_kiken_bgm_15:
	.word	0xa8b
	thumb_func_end np_kiken_bgm
