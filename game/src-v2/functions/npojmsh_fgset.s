	thumb_func_start npojmsh_fgset
npojmsh_fgset:
	push	{r4, r5, r6, r7, lr}
	lsl	r2, r1, #0x1
	add	r2, r2, r1
	lsl	r2, r2, #0x1
	add	r2, r2, r0
	lsl	r2, r2, #0x3
	ldr	r3, .Lnpojmsh_fgset_14 @ NRam+0x154
	add	r5, r2, r3
	ldrb	r0, [r5]
	cmp	r0, #0x9
	beq	.Lnpojmsh_fgset_1	@cond_branch
	cmp	r0, #0xa
	beq	.Lnpojmsh_fgset_7	@cond_branch
	cmp	r0, #0xa
	bhi	.Lnpojmsh_fgset_3	@cond_branch
	b	.Lnpojmsh_fgset_43
.Lnpojmsh_fgset_3:
	cmp	r0, #0x25
	bls	.Lnpojmsh_fgset_5	@cond_branch
	b	.Lnpojmsh_fgset_43
.Lnpojmsh_fgset_5:
	cmp	r0, #0x1f
	bhi	.Lnpojmsh_fgset_7	@cond_branch
.Lnpojmsh_fgset_1:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x8
	bne	.Lnpojmsh_fgset_8	@cond_branch
	b	.Lnpojmsh_fgset_43
.Lnpojmsh_fgset_8:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0
	beq	.Lnpojmsh_fgset_10	@cond_branch
	b	.Lnpojmsh_fgset_43
.Lnpojmsh_fgset_10:
	ldr	r2, .Lnpojmsh_fgset_14 + 4 @ 0x52c
	add	r0, r3, r2
	strb	r1, [r0]
	add	r0, r5, #0
	bl	np_rksch_push
.Lnpojmsh_fgset_28:
	ldrb	r0, [r5]
	cmp	r0, #0x9
	bne	.Lnpojmsh_fgset_12	@cond_branch
	add	r5, r5, #0x8
	b	.Lnpojmsh_fgset_28
.Lnpojmsh_fgset_15:
	.align	2, 0
.Lnpojmsh_fgset_14:
	.word	NRam+0x154
	.word	0x52c
.Lnpojmsh_fgset_12:
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x14
	bls	.Lnpojmsh_fgset_16	@cond_branch
.Lnpojmsh_fgset_17:
	b	.Lnpojmsh_fgset_17
.Lnpojmsh_fgset_16:
	ldr	r0, .Lnpojmsh_fgset_29 @ nojpt_tbl
	ldrb	r1, [r5]
	sub	r1, r1, #0xb
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
	ldrb	r1, [r0]
	add	r2, r5, #0
	ldr	r6, .Lnpojmsh_fgset_29 + 4 @ NRam
	cmp	r1, #0
	beq	.Lnpojmsh_fgset_20	@cond_branch
	mov	r0, #0xaa
	lsl	r0, r0, #0x1
	add	r3, r6, r0
	cmp	r5, r3
	bcc	.Lnpojmsh_fgset_20	@cond_branch
	mov	r4, #0x20
	mov	r7, #0x0
.Lnpojmsh_fgset_21:
	ldrb	r0, [r5, #0x4]
	orr	r0, r0, r4
	strb	r0, [r5, #0x4]
	sub	r0, r1, #1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	sub	r5, r5, #0x8
	cmp	r1, #0
	beq	.Lnpojmsh_fgset_20	@cond_branch
	cmp	r5, r3
	bcs	.Lnpojmsh_fgset_21	@cond_branch
.Lnpojmsh_fgset_20:
	add	r5, r2, #0
	ldr	r2, .Lnpojmsh_fgset_29 + 8 @ 0xbc3
	add	r4, r6, r2
	mov	r0, #0x1
	strb	r0, [r4]
	add	r0, r5, #0
	bl	nposch_call
	ldr	r0, .Lnpojmsh_fgset_29 + 12 @ 0xfffffabd
	add	r4, r4, r0
.Lnpojmsh_fgset_27:
	bl	np_rksch_pop
	add	r5, r0, #0
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.Lnpojmsh_fgset_22	@cond_branch
	b	.Lnpojmsh_fgset_43
.Lnpojmsh_fgset_22:
	ldrb	r0, [r5]
	cmp	r0, #0x9
	beq	.Lnpojmsh_fgset_24	@cond_branch
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x14
	bhi	.Lnpojmsh_fgset_27	@cond_branch
.Lnpojmsh_fgset_24:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x8
	beq	.Lnpojmsh_fgset_27	@cond_branch
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnpojmsh_fgset_27	@cond_branch
	b	.Lnpojmsh_fgset_28
.Lnpojmsh_fgset_30:
	.align	2, 0
.Lnpojmsh_fgset_29:
	.word	nojpt_tbl
	.word	NRam
	.word	0xbc3
	.word	0xfffffabd
.Lnpojmsh_fgset_7:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x8
	beq	.Lnpojmsh_fgset_43	@cond_branch
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0
	bne	.Lnpojmsh_fgset_43	@cond_branch
	ldr	r0, .Lnpojmsh_fgset_35 @ NRam
	mov	r2, #0xd0
	lsl	r2, r2, #0x3
	add	r0, r0, r2
	strb	r1, [r0]
	add	r0, r5, #0
	bl	np_rksch_push
.Lnpojmsh_fgset_48:
	ldrb	r0, [r5]
	cmp	r0, #0xa
	bne	.Lnpojmsh_fgset_33	@cond_branch
	add	r5, r5, #0x8
	b	.Lnpojmsh_fgset_48
.Lnpojmsh_fgset_36:
	.align	2, 0
.Lnpojmsh_fgset_35:
	.word	NRam
.Lnpojmsh_fgset_33:
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x5
	bls	.Lnpojmsh_fgset_37	@cond_branch
.Lnpojmsh_fgset_38:
	b	.Lnpojmsh_fgset_38
.Lnpojmsh_fgset_37:
	ldr	r0, .Lnpojmsh_fgset_49 @ nojpt_tbl
	ldrb	r1, [r5]
	sub	r1, r1, #0xb
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
	ldrb	r1, [r0]
	add	r2, r5, #0
	ldr	r6, .Lnpojmsh_fgset_49 + 4 @ NRam
	cmp	r1, #0
	beq	.Lnpojmsh_fgset_41	@cond_branch
	mov	r0, #0xaa
	lsl	r0, r0, #0x1
	add	r3, r6, r0
	cmp	r5, r3
	bcc	.Lnpojmsh_fgset_41	@cond_branch
	mov	r4, #0x20
	mov	r7, #0x0
.Lnpojmsh_fgset_42:
	ldrb	r0, [r5, #0x4]
	orr	r0, r0, r4
	strb	r0, [r5, #0x4]
	sub	r0, r1, #1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	sub	r5, r5, #0x8
	cmp	r1, #0
	beq	.Lnpojmsh_fgset_41	@cond_branch
	cmp	r5, r3
	bcs	.Lnpojmsh_fgset_42	@cond_branch
.Lnpojmsh_fgset_41:
	add	r5, r2, #0
	ldr	r2, .Lnpojmsh_fgset_49 + 8 @ 0xbc3
	add	r4, r6, r2
	mov	r0, #0x1
	strb	r0, [r4]
	add	r0, r5, #0
	bl	nposch_call
	ldr	r0, .Lnpojmsh_fgset_49 + 12 @ 0xfffffabd
	add	r4, r4, r0
.Lnpojmsh_fgset_47:
	bl	np_rksch_pop
	add	r5, r0, #0
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnpojmsh_fgset_43	@cond_branch
	ldrb	r0, [r5]
	cmp	r0, #0xa
	beq	.Lnpojmsh_fgset_44	@cond_branch
	sub	r0, r0, #0x20
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x5
	bhi	.Lnpojmsh_fgset_47	@cond_branch
.Lnpojmsh_fgset_44:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x8
	beq	.Lnpojmsh_fgset_47	@cond_branch
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnpojmsh_fgset_47	@cond_branch
	b	.Lnpojmsh_fgset_48
.Lnpojmsh_fgset_50:
	.align	2, 0
.Lnpojmsh_fgset_49:
	.word	nojpt_tbl
	.word	NRam
	.word	0xbc3
	.word	0xfffffabd
.Lnpojmsh_fgset_43:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end npojmsh_fgset
