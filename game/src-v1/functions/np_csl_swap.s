	thumb_func_start np_csl_swap
np_csl_swap:
	push	{r4, r5, r6, lr}
	ldr	r3, .Lnp_csl_swap_25 @ NRam
	ldr	r1, .Lnp_csl_swap_25 + 4 @ 0xa5c
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_csl_swap_1	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_1:
	ldr	r0, .Lnp_csl_swap_25 + 8 @ KeyRead_Trg
	ldr	r2, .Lnp_csl_swap_25 + 12 @ 0xbc2
	add	r1, r3, r2
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	and	r0, r0, r2
	cmp	r0, #0
	bne	.Lnp_csl_swap_3	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_3:
	ldrb	r0, [r3, #0x4]
	cmp	r0, #0
	beq	.Lnp_csl_swap_5	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_5:
	mov	r1, #0x2
	ldsh	r0, [r3, r1]
	lsl	r1, r0, #0x1
	add	r1, r1, r0
	lsl	r1, r1, #0x1
	ldrb	r2, [r3]
	add	r1, r1, r2
	lsl	r1, r1, #0x3
	mov	r2, #0xaa
	lsl	r2, r2, #0x1
	add	r0, r3, r2
	add	r5, r1, r0
	add	r6, r5, #0
	add	r6, r6, #0x8
.Lnp_csl_swap_59:
	ldrb	r2, [r5]
	add	r1, r2, #0
	cmp	r1, #0
	bne	.Lnp_csl_swap_8	@cond_branch
	ldrb	r0, [r6]
	cmp	r0, #0
	bne	.Lnp_csl_swap_8	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_8:
	cmp	r1, #0x9
	bne	.Lnp_csl_swap_10	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_10:
	cmp	r1, #0xa
	bne	.Lnp_csl_swap_12	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_12:
	add	r0, r2, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lnp_csl_swap_14	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_14:
	ldrb	r0, [r6]
	add	r1, r0, #0
	cmp	r1, #0x9
	bne	.Lnp_csl_swap_16	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_16:
	cmp	r1, #0xa
	bne	.Lnp_csl_swap_18	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_18:
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lnp_csl_swap_20	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_20:
	ldrb	r3, [r5, #0x2]
	cmp	r3, #0
	beq	.Lnp_csl_swap_22	@cond_branch
	cmp	r3, #0x1
	beq	.Lnp_csl_swap_23	@cond_branch
	b	.Lnp_csl_swap_31
.Lnp_csl_swap_26:
	.align	2, 0
.Lnp_csl_swap_25:
	.word	NRam
	.word	0xa5c
	.word	KeyRead_Trg
	.word	0xbc2
.Lnp_csl_swap_22:
	ldr	r0, .Lnp_csl_swap_33 @ NRam
	mov	r1, #0x2
	ldsh	r0, [r0, r1]
	cmp	r0, #0
	beq	.Lnp_csl_swap_31	@cond_branch
	add	r1, r5, #0
	sub	r1, r1, #0x30
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x1
	bne	.Lnp_csl_swap_31	@cond_branch
	ldrb	r0, [r1]
	cmp	r0, #0x9
	beq	.Lnp_csl_swap_31	@cond_branch
	cmp	r0, #0xa
	beq	.Lnp_csl_swap_31	@cond_branch
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bls	.Lnp_csl_swap_31	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_34:
	.align	2, 0
.Lnp_csl_swap_33:
	.word	NRam
.Lnp_csl_swap_23:
	add	r0, r5, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_31:
	ldrb	r2, [r6, #0x2]
	cmp	r2, #0
	beq	.Lnp_csl_swap_36	@cond_branch
	cmp	r2, #0x1
	beq	.Lnp_csl_swap_37	@cond_branch
	b	.Lnp_csl_swap_43
.Lnp_csl_swap_36:
	ldr	r0, .Lnp_csl_swap_45 @ NRam
	mov	r1, #0x2
	ldsh	r0, [r0, r1]
	cmp	r0, #0
	beq	.Lnp_csl_swap_43	@cond_branch
	add	r1, r6, #0
	sub	r1, r1, #0x30
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x1
	bne	.Lnp_csl_swap_43	@cond_branch
	ldrb	r0, [r1]
	cmp	r0, #0x9
	beq	.Lnp_csl_swap_43	@cond_branch
	cmp	r0, #0xa
	beq	.Lnp_csl_swap_43	@cond_branch
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bls	.Lnp_csl_swap_43	@cond_branch
	b	.Lnp_csl_swap_57
.Lnp_csl_swap_46:
	.align	2, 0
.Lnp_csl_swap_45:
	.word	NRam
.Lnp_csl_swap_37:
	add	r0, r6, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_43:
	cmp	r3, #0x4
	blt	.Lnp_csl_swap_48	@cond_branch
	cmp	r3, #0x6
	ble	.Lnp_csl_swap_57	@cond_branch
	cmp	r3, #0x8
	beq	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_48:
	cmp	r2, #0x4
	blt	.Lnp_csl_swap_51	@cond_branch
	cmp	r2, #0x6
	ble	.Lnp_csl_swap_57	@cond_branch
	cmp	r2, #0x8
	beq	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_51:
	add	r0, r5, #0
	sub	r0, r0, #0x30
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x5
	bgt	.Lnp_csl_swap_54	@cond_branch
	cmp	r0, #0x4
	bge	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_54:
	add	r0, r6, #0
	sub	r0, r0, #0x30
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x5
	bgt	.Lnp_csl_swap_56	@cond_branch
	cmp	r0, #0x4
	bge	.Lnp_csl_swap_57	@cond_branch
.Lnp_csl_swap_56:
	ldr	r2, .Lnp_csl_swap_60 @ NRam
	mov	r3, #0xa7
	lsl	r3, r3, #0x4
	add	r4, r2, r3
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnp_csl_swap_58	@cond_branch
	bl	nswp_objend
	mov	r0, #0x0
	strb	r0, [r4]
	b	.Lnp_csl_swap_59
.Lnp_csl_swap_61:
	.align	2, 0
.Lnp_csl_swap_60:
	.word	NRam
.Lnp_csl_swap_58:
	mov	r0, #0x1
	strb	r0, [r4]
	ldrb	r1, [r2]
	ldr	r3, .Lnp_csl_swap_62 @ 0xa71
	add	r0, r2, r3
	strb	r1, [r0]
	ldrh	r1, [r2, #0x2]
	add	r3, r3, #0x1
	add	r0, r2, r3
	strb	r1, [r0]
	ldr	r1, .Lnp_csl_swap_62 + 4 @ 0xa74
	add	r0, r2, r1
	str	r5, [r0]
	mov	r0, #0x8
	bl	m4aSongNumStart
.Lnp_csl_swap_57:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_csl_swap_63:
	.align	2, 0
.Lnp_csl_swap_62:
	.word	0xa71
	.word	0xa74
	thumb_func_end np_csl_swap
