	thumb_func_start np_csl_mov
np_csl_mov:
	push	{lr}
	ldr	r2, .Lnp_csl_mov_13 @ NRam
	ldrb	r0, [r2, #0x4]
	cmp	r0, #0x2
	beq	.Lnp_csl_mov_15	@cond_branch
	ldr	r0, .Lnp_csl_mov_13 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_csl_mov_3	@cond_branch
	ldrb	r0, [r2, #0x5]
	neg	r1, r0
	orr	r1, r1, r0
	lsr	r1, r1, #0x1f
	mov	r3, #0x2
	ldsh	r0, [r2, r3]
	cmp	r0, r1
	ble	.Lnp_csl_mov_3	@cond_branch
	ldrh	r0, [r2, #0x2]
	sub	r0, r0, #0x1
	strh	r0, [r2, #0x2]
	mov	r0, #0x7
	bl	m4aSongNumStart
.Lnp_csl_mov_3:
	ldr	r0, .Lnp_csl_mov_13 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_csl_mov_5	@cond_branch
	ldr	r1, .Lnp_csl_mov_13 @ NRam
	ldrh	r2, [r1, #0x2]
	mov	r3, #0x2
	ldsh	r0, [r1, r3]
	cmp	r0, #0xa
	bgt	.Lnp_csl_mov_5	@cond_branch
	add	r0, r2, #1
	strh	r0, [r1, #0x2]
	mov	r0, #0x7
	bl	m4aSongNumStart
.Lnp_csl_mov_5:
	ldr	r0, .Lnp_csl_mov_13 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_csl_mov_7	@cond_branch
	ldr	r1, .Lnp_csl_mov_13 @ NRam
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_csl_mov_7	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x7
	bl	m4aSongNumStart
.Lnp_csl_mov_7:
	ldr	r0, .Lnp_csl_mov_13 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_csl_mov_9	@cond_branch
	ldr	r1, .Lnp_csl_mov_13 @ NRam
	ldrb	r0, [r1]
	cmp	r0, #0x3
	bhi	.Lnp_csl_mov_9	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x7
	bl	m4aSongNumStart
.Lnp_csl_mov_9:
	ldr	r1, .Lnp_csl_mov_13 @ NRam
	ldrb	r2, [r1, #0x5]
	cmp	r2, #0
	bne	.Lnp_csl_mov_10	@cond_branch
	mov	r3, #0x2
	ldsh	r0, [r1, r3]
	cmp	r0, #0
	bge	.Lnp_csl_mov_15	@cond_branch
	strh	r2, [r1, #0x2]
	b	.Lnp_csl_mov_15
.Lnp_csl_mov_14:
	.align	2, 0
.Lnp_csl_mov_13:
	.word	NRam
	.word	KeyRead_Rpt
.Lnp_csl_mov_10:
	mov	r2, #0x2
	ldsh	r0, [r1, r2]
	sub	r0, r0, #0x1
	cmp	r0, #0
	bge	.Lnp_csl_mov_15	@cond_branch
	mov	r0, #0x1
	strh	r0, [r1, #0x2]
.Lnp_csl_mov_15:
	pop	{r0}
	bx	r0
	thumb_func_end np_csl_mov
