	thumb_func_start sub_200BEE4
sub_200BEE4:
	push	{r4, r5, r6, lr}
	add	sp, sp, #0xfffffff8
	add	r5, r0, #0
	ldr	r0, .Lsub_200BEE4_6 @ 0x2038b60
	ldr	r1, .Lsub_200BEE4_6 + 4 @ 0xab6
	add	r0, r0, r1
	mov	r1, #0x0
	strb	r1, [r0]
.Lsub_200BEE4_38:
	ldrb	r6, [r5]
	add	r0, r6, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lsub_200BEE4_1	@cond_branch
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lsub_200BEE4_4	@cond_branch
	cmp	r0, #0x6
	bgt	.Lsub_200BEE4_3	@cond_branch
	cmp	r0, #0x5
	beq	.Lsub_200BEE4_4	@cond_branch
	b	.Lsub_200BEE4_9
.Lsub_200BEE4_7:
	.align	2, 0
.Lsub_200BEE4_6:
	.word	0x2038b60
	.word	0xab6
.Lsub_200BEE4_3:
	cmp	r0, #0x7
	beq	.Lsub_200BEE4_8	@cond_branch
.Lsub_200BEE4_9:
	b	.Lsub_200BEE4_9
.Lsub_200BEE4_1:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lsub_200BEE4_12	@cond_branch
	cmp	r0, #0x6
	bgt	.Lsub_200BEE4_11	@cond_branch
	cmp	r0, #0x5
	beq	.Lsub_200BEE4_12	@cond_branch
	b	.Lsub_200BEE4_15
.Lsub_200BEE4_11:
	cmp	r0, #0x7
	beq	.Lsub_200BEE4_14	@cond_branch
.Lsub_200BEE4_15:
	b	.Lsub_200BEE4_15
.Lsub_200BEE4_12:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.Lsub_200BEE4_37	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lsub_200BEE4_14:
	add	r0, r5, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0x5
	beq	.Lsub_200BEE4_21	@cond_branch
	cmp	r0, #0x5
	bgt	.Lsub_200BEE4_18	@cond_branch
	cmp	r0, #0
	beq	.Lsub_200BEE4_19	@cond_branch
	b	.Lsub_200BEE4_22
.Lsub_200BEE4_18:
	cmp	r0, #0x6
	beq	.Lsub_200BEE4_21	@cond_branch
	cmp	r0, #0x7
	bne	.Lsub_200BEE4_22	@cond_branch
.Lsub_200BEE4_23:
	b	.Lsub_200BEE4_23
.Lsub_200BEE4_22:
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
	b	.Lsub_200BEE4_37
.Lsub_200BEE4_21:
	add	r0, r5, #0
	add	r0, r0, #0x35
	ldrb	r1, [r0]
	b	.Lsub_200BEE4_25
.Lsub_200BEE4_19:
	add	r2, r5, #0
	add	r1, r2, #0
	add	r1, r1, #0x30
	mov	r3, #0x8
	mov	r4, #0x0
.Lsub_200BEE4_26:
	ldrb	r0, [r2]
	strb	r0, [r1]
	add	r1, r1, #0x1
	strb	r4, [r2]
	add	r2, r2, #0x1
	sub	r3, r3, #0x1
	cmp	r3, #0
	bne	.Lsub_200BEE4_26	@cond_branch
	b	.Lsub_200BEE4_37
.Lsub_200BEE4_4:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	add	r0, r5, #0
	bl	np_ojm_cpy_cunt
	ldrb	r0, [r5, #0x5]
	cmp	r0, #0
	bne	.Lsub_200BEE4_37	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lsub_200BEE4_8:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, sp
	bl	np_ojm_under
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x5
	beq	.Lsub_200BEE4_33	@cond_branch
	cmp	r0, #0x5
	bgt	.Lsub_200BEE4_30	@cond_branch
	cmp	r0, #0
	beq	.Lsub_200BEE4_31	@cond_branch
	b	.Lsub_200BEE4_34
.Lsub_200BEE4_30:
	cmp	r0, #0x6
	beq	.Lsub_200BEE4_33	@cond_branch
	cmp	r0, #0x7
	bne	.Lsub_200BEE4_34	@cond_branch
.Lsub_200BEE4_35:
	b	.Lsub_200BEE4_35
.Lsub_200BEE4_34:
	add	r0, r5, #0
	bl	np_ojm_set_NR
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lsub_200BEE4_36	@cond_branch
	add	r0, r5, #0
	bl	np_fldyu_ojmset
.Lsub_200BEE4_36:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0xfb
	and	r0, r0, r1
	strb	r0, [r5, #0x4]
	b	.Lsub_200BEE4_37
.Lsub_200BEE4_33:
	mov	r0, sp
	ldrb	r1, [r0, #0x5]
.Lsub_200BEE4_25:
	add	r1, r1, #0x1
	add	r0, r5, #0
	mov	r2, #0x0
	bl	np_rakka_stto_nf
	b	.Lsub_200BEE4_38
.Lsub_200BEE4_31:
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
.Lsub_200BEE4_37:
	add	sp, sp, #0x8
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end sub_200BEE4
