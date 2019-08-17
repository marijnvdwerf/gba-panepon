	thumb_func_start np_clear_ch
np_clear_ch:
	push	{r4, r5, r6, r7, lr}
	mov	r4, #0x0
	ldr	r1, .Lnp_clear_ch_8 @ NRam+0x154
	mov	r0, #0x0
	ldr	r2, .Lnp_clear_ch_8 + 4 @ 0xfffffeac
	add	r7, r1, r2
	mov	r5, #0x7f
.Lnp_clear_ch_11:
	add	r6, r0, #1
	mov	r2, #0x5
.Lnp_clear_ch_10:
	ldrb	r3, [r1, #0x4]
	mov	r0, #0x80
	and	r0, r0, r3
	cmp	r0, #0
	beq	.Lnp_clear_ch_7	@cond_branch
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x1
	bne	.Lnp_clear_ch_5	@cond_branch
	ldrb	r0, [r1]
	sub	r0, r0, #0x9
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1c
	bls	.Lnp_clear_ch_6	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_clear_ch_5	@cond_branch
	cmp	r0, #0x3
	beq	.Lnp_clear_ch_5	@cond_branch
	cmp	r0, #0x4
	bne	.Lnp_clear_ch_6	@cond_branch
.Lnp_clear_ch_5:
	add	r0, r4, #1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	b	.Lnp_clear_ch_7
.Lnp_clear_ch_9:
	.align	2, 0
.Lnp_clear_ch_8:
	.word	NRam+0x154
	.word	0xfffffeac
.Lnp_clear_ch_6:
	add	r0, r5, #0
	and	r0, r0, r3
	strb	r0, [r1, #0x4]
.Lnp_clear_ch_7:
	add	r1, r1, #0x8
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.Lnp_clear_ch_10	@cond_branch
	add	r0, r6, #0
	cmp	r0, #0xb
	ble	.Lnp_clear_ch_11	@cond_branch
	cmp	r4, #0
	bne	.Lnp_clear_ch_12	@cond_branch
	ldr	r5, .Lnp_clear_ch_18 @ NRam
	ldr	r1, .Lnp_clear_ch_18 + 4 @ 0xacc
	add	r0, r5, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_clear_ch_23	@cond_branch
	bl	np_game_code_rens
	ldr	r2, .Lnp_clear_ch_18 + 8 @ 0xac8
	add	r0, r5, r2
	ldr	r0, [r0]
	cmp	r0, #0x4
	beq	.Lnp_clear_ch_14	@cond_branch
	cmp	r0, #0x4
	bgt	.Lnp_clear_ch_15	@cond_branch
	cmp	r0, #0
	blt	.Lnp_clear_ch_21	@cond_branch
	b	.Lnp_clear_ch_23
.Lnp_clear_ch_19:
	.align	2, 0
.Lnp_clear_ch_18:
	.word	NRam
	.word	0xacc
	.word	0xac8
.Lnp_clear_ch_15:
	cmp	r0, #0x5
	beq	.Lnp_clear_ch_20	@cond_branch
	b	.Lnp_clear_ch_21
.Lnp_clear_ch_14:
	mov	r0, #0x35
	bl	m4aSongNumStart
	b	.Lnp_clear_ch_23
.Lnp_clear_ch_20:
	mov	r0, #0x36
	bl	m4aSongNumStart
	b	.Lnp_clear_ch_23
.Lnp_clear_ch_21:
	mov	r0, #0x37
	bl	m4aSongNumStart
.Lnp_clear_ch_23:
	ldr	r2, .Lnp_clear_ch_24 @ NRam
	ldr	r0, .Lnp_clear_ch_24 + 4 @ 0xac8
	add	r1, r2, r0
	mov	r0, #0x1
	str	r0, [r1]
	add	r7, r2, #0
.Lnp_clear_ch_12:
	ldr	r1, .Lnp_clear_ch_24 + 8 @ 0xacc
	add	r0, r7, r1
	strb	r4, [r0]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_clear_ch_25:
	.align	2, 0
.Lnp_clear_ch_24:
	.word	NRam
	.word	0xac8
	.word	0xacc
	thumb_func_end np_clear_ch
