	thumb_func_start np_ojm_has
np_ojm_has:
	push	{r4, lr}
	bl	np_otai_ck
	cmp	r0, #0
	beq	.Lnp_ojm_has_1	@cond_branch
	b	.Lnp_ojm_has_7
.Lnp_ojm_has_1:
	mov	r3, #0x0
	ldr	r2, .Lnp_ojm_has_10 @ NRam+0x154
	mov	r1, #0x6
.Lnp_ojm_has_3:
	ldrb	r0, [r2]
	orr	r3, r3, r0
	sub	r1, r1, #0x1
	add	r2, r2, #0x8
	cmp	r1, #0
	bne	.Lnp_ojm_has_3	@cond_branch
	cmp	r3, #0
	bne	.Lnp_ojm_has_7	@cond_branch
	bl	np_otai_tr
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnp_ojm_has_6	@cond_branch
	add	r0, r1, #0
	sub	r0, r0, #0x11
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xe
	bhi	.Lnp_ojm_has_6	@cond_branch
	ldr	r0, .Lnp_ojm_has_10 + 4 @ NRam
	ldrb	r0, [r0, #0x7]
	cmp	r0, #0
	beq	.Lnp_ojm_has_7	@cond_branch
.Lnp_ojm_has_6:
	bl	np_otai_rd
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.Lnp_ojm_has_8	@cond_branch
.Lnp_ojm_has_9:
	b	.Lnp_ojm_has_9
.Lnp_ojm_has_11:
	.align	2, 0
.Lnp_ojm_has_10:
	.word	NRam+0x154
	.word	NRam
.Lnp_ojm_has_8:
	ldr	r0, .Lnp_ojm_has_16 @ NRam
	ldr	r2, .Lnp_ojm_has_16 + 4 @ 0xb85
	add	r1, r0, r2
	ldrb	r2, [r1]
	mov	r1, #0x7f
	and	r2, r2, r1
	add	r3, r0, #0
	cmp	r2, #0xe
	beq	.Lnp_ojm_has_12	@cond_branch
	cmp	r2, #0xe
	bgt	.Lnp_ojm_has_13	@cond_branch
	cmp	r2, #0xd
	beq	.Lnp_ojm_has_14	@cond_branch
	b	.Lnp_ojm_has_19
.Lnp_ojm_has_17:
	.align	2, 0
.Lnp_ojm_has_16:
	.word	NRam
	.word	0xb85
.Lnp_ojm_has_13:
	cmp	r2, #0xf
	beq	.Lnp_ojm_has_18	@cond_branch
	b	.Lnp_ojm_has_19
.Lnp_ojm_has_14:
	mov	r4, #0xb4
	lsl	r4, r4, #0x4
	add	r0, r3, r4
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	cmp	r1, #0x1
	blt	.Lnp_ojm_has_20	@cond_branch
	mov	r0, #0x2
	cmp	r0, r1
	bge	.Lnp_ojm_has_21	@cond_branch
.Lnp_ojm_has_20:
	mov	r1, #0x1
.Lnp_ojm_has_21:
	mov	r4, #0xb4
	lsl	r4, r4, #0x4
	add	r0, r3, r4
	strb	r1, [r0]
	ldrb	r1, [r0]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x3
	mov	r4, #0xa6
	lsl	r4, r4, #0x1
	b	.Lnp_ojm_has_22
.Lnp_ojm_has_12:
	ldr	r1, .Lnp_ojm_has_26 @ 0xb41
	add	r0, r3, r1
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	cmp	r1, #0x3
	blt	.Lnp_ojm_has_23	@cond_branch
	mov	r0, #0x5
	cmp	r0, r1
	bge	.Lnp_ojm_has_24	@cond_branch
.Lnp_ojm_has_23:
	mov	r1, #0x3
.Lnp_ojm_has_24:
	ldr	r4, .Lnp_ojm_has_26 @ 0xb41
	b	.Lnp_ojm_has_25
.Lnp_ojm_has_27:
	.align	2, 0
.Lnp_ojm_has_26:
	.word	0xb41
.Lnp_ojm_has_18:
	ldr	r1, .Lnp_ojm_has_31 @ 0xb42
	add	r0, r3, r1
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	cmp	r1, #0x4
	blt	.Lnp_ojm_has_28	@cond_branch
	mov	r0, #0x5
	cmp	r0, r1
	bge	.Lnp_ojm_has_29	@cond_branch
.Lnp_ojm_has_28:
	mov	r1, #0x4
.Lnp_ojm_has_29:
	ldr	r4, .Lnp_ojm_has_31 @ 0xb42
.Lnp_ojm_has_25:
	add	r0, r3, r4
	strb	r1, [r0]
	ldrb	r0, [r0]
	lsl	r0, r0, #0x3
	mov	r4, #0xaa
	lsl	r4, r4, #0x1
.Lnp_ojm_has_22:
	add	r1, r3, r4
	add	r0, r0, r1
	b	.Lnp_ojm_has_30
.Lnp_ojm_has_32:
	.align	2, 0
.Lnp_ojm_has_31:
	.word	0xb42
.Lnp_ojm_has_19:
	ldr	r0, .Lnp_ojm_has_33 @ NRam+0x17c
.Lnp_ojm_has_30:
	add	r1, r2, #0
	mov	r2, #0x0
	bl	np_ojm_put
.Lnp_ojm_has_7:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_ojm_has_34:
	.align	2, 0
.Lnp_ojm_has_33:
	.word	NRam+0x17c
	thumb_func_end np_ojm_has
