	thumb_func_start np_rakka_subs
np_rakka_subs:
	push	{r4, r5, r6, lr}
	add	sp, sp, #0xfffffff8
	add	r5, r0, #0
	ldr	r0, .Lnp_rakka_subs_6 @ NRam
	ldr	r1, .Lnp_rakka_subs_6 + 4 @ 0xab6
	add	r0, r0, r1
	mov	r1, #0x0
	strb	r1, [r0]
.Lnp_rakka_subs_38:
	ldrb	r6, [r5]
	add	r0, r6, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lnp_rakka_subs_1	@cond_branch
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lnp_rakka_subs_4	@cond_branch
	cmp	r0, #0x6
	bgt	.Lnp_rakka_subs_3	@cond_branch
	cmp	r0, #0x5
	beq	.Lnp_rakka_subs_4	@cond_branch
	b	.Lnp_rakka_subs_9
.Lnp_rakka_subs_7:
	.align	2, 0
.Lnp_rakka_subs_6:
	.word	NRam
	.word	0xab6
.Lnp_rakka_subs_3:
	cmp	r0, #0x7
	beq	.Lnp_rakka_subs_8	@cond_branch
.Lnp_rakka_subs_9:
	b	.Lnp_rakka_subs_9
.Lnp_rakka_subs_1:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lnp_rakka_subs_12	@cond_branch
	cmp	r0, #0x6
	bgt	.Lnp_rakka_subs_11	@cond_branch
	cmp	r0, #0x5
	beq	.Lnp_rakka_subs_12	@cond_branch
	b	.Lnp_rakka_subs_15
.Lnp_rakka_subs_11:
	cmp	r0, #0x7
	beq	.Lnp_rakka_subs_14	@cond_branch
.Lnp_rakka_subs_15:
	b	.Lnp_rakka_subs_15
.Lnp_rakka_subs_12:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.Lnp_rakka_subs_37	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lnp_rakka_subs_14:
	add	r0, r5, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0x5
	beq	.Lnp_rakka_subs_21	@cond_branch
	cmp	r0, #0x5
	bgt	.Lnp_rakka_subs_18	@cond_branch
	cmp	r0, #0
	beq	.Lnp_rakka_subs_19	@cond_branch
	b	.Lnp_rakka_subs_22
.Lnp_rakka_subs_18:
	cmp	r0, #0x6
	beq	.Lnp_rakka_subs_21	@cond_branch
	cmp	r0, #0x7
	bne	.Lnp_rakka_subs_22	@cond_branch
.Lnp_rakka_subs_23:
	b	.Lnp_rakka_subs_23
.Lnp_rakka_subs_22:
	mov	r0, #0x31
	bl	m4aSongNumStart
	mov	r0, #0x1
	strb	r0, [r5, #0x2]
	mov	r0, #0xa
	strb	r0, [r5, #0x5]
	ldrb	r1, [r5, #0x4]
	mov	r0, #0xef
	and	r0, r0, r1
	mov	r1, #0x8
	orr	r0, r0, r1
	strb	r0, [r5, #0x4]
	b	.Lnp_rakka_subs_37
.Lnp_rakka_subs_21:
	add	r0, r5, #0
	add	r0, r0, #0x35
	ldrb	r1, [r0]
	b	.Lnp_rakka_subs_25
.Lnp_rakka_subs_19:
	add	r2, r5, #0
	add	r1, r2, #0
	add	r1, r1, #0x30
	mov	r3, #0x8
	mov	r4, #0x0
.Lnp_rakka_subs_26:
	ldrb	r0, [r2]
	strb	r0, [r1]
	add	r1, r1, #0x1
	strb	r4, [r2]
	add	r2, r2, #0x1
	sub	r3, r3, #0x1
	cmp	r3, #0
	bne	.Lnp_rakka_subs_26	@cond_branch
	b	.Lnp_rakka_subs_37
.Lnp_rakka_subs_4:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	add	r0, r5, #0
	bl	np_ojm_cpy_cunt
	ldrb	r0, [r5, #0x5]
	cmp	r0, #0
	bne	.Lnp_rakka_subs_37	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lnp_rakka_subs_8:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, sp
	bl	np_ojm_under
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x5
	beq	.Lnp_rakka_subs_33	@cond_branch
	cmp	r0, #0x5
	bgt	.Lnp_rakka_subs_30	@cond_branch
	cmp	r0, #0
	beq	.Lnp_rakka_subs_31	@cond_branch
	b	.Lnp_rakka_subs_34
.Lnp_rakka_subs_30:
	cmp	r0, #0x6
	beq	.Lnp_rakka_subs_33	@cond_branch
	cmp	r0, #0x7
	bne	.Lnp_rakka_subs_34	@cond_branch
.Lnp_rakka_subs_35:
	b	.Lnp_rakka_subs_35
.Lnp_rakka_subs_34:
	add	r0, r5, #0
	bl	np_ojm_set_NR
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_rakka_subs_36	@cond_branch
	add	r0, r5, #0
	bl	np_fldyu_ojmset
.Lnp_rakka_subs_36:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0xfb
	and	r0, r0, r1
	strb	r0, [r5, #0x4]
	b	.Lnp_rakka_subs_37
.Lnp_rakka_subs_33:
	mov	r0, sp
	ldrb	r1, [r0, #0x5]
.Lnp_rakka_subs_25:
	add	r1, r1, #0x1
	add	r0, r5, #0
	mov	r2, #0x0
	bl	np_rakka_stto_nf
	b	.Lnp_rakka_subs_38
.Lnp_rakka_subs_31:
	ldrb	r0, [r5, #0x4]
	mov	r2, #0x80
	and	r2, r2, r0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	neg	r2, r2
	lsr	r2, r2, #0x1f
	add	r0, r5, #0
	add	r0, r0, #0x30
	add	r1, r6, #0
	bl	np_ojm_put
	add	r2, r5, #0
	add	r2, r2, #0x34
	ldrb	r1, [r2]
	mov	r0, #0x4
	orr	r0, r0, r1
	strb	r0, [r2]
.Lnp_rakka_subs_37:
	add	sp, sp, #0x8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end np_rakka_subs
