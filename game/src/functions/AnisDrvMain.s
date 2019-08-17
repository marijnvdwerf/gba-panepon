	thumb_func_start AnisDrvMain
AnisDrvMain:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldrh	r1, [r4, #0x1e]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LAnisDrvMain_1	@cond_branch
	b	.LAnisDrvMain_53
.LAnisDrvMain_1:
	ldr	r0, .LAnisDrvMain_9 @ 0xfffd
	and	r0, r0, r1
	strh	r0, [r4, #0x1e]
	ldr	r0, [r4, #0x8]
	ldrh	r1, [r4, #0x20]
	cmp	r0, #0
	beq	.LAnisDrvMain_3	@cond_branch
	b	.LAnisDrvMain_46
.LAnisDrvMain_3:
	cmp	r1, #0
	beq	.LAnisDrvMain_54	@cond_branch
	b	.LAnisDrvMain_46
.LAnisDrvMain_54:
	ldr	r2, [r4]
	ldrb	r1, [r2]
	add	r2, r2, #0x1
	str	r2, [r4]
	ldr	r0, .LAnisDrvMain_9 + 4 @ 0xffff
	strh	r0, [r4, #0x22]
	cmp	r1, #0xf0
	bgt	.LAnisDrvMain_7	@cond_branch
	strh	r1, [r4, #0x20]
	add	r1, r4, #0
	add	r1, r1, #0x28
	ldrb	r0, [r2]
	strb	r0, [r1]
	add	r1, r2, #1
	str	r1, [r4]
	add	r3, r4, #0
	add	r3, r3, #0x29
	ldrb	r0, [r2, #0x1]
	strb	r0, [r3]
	add	r2, r1, #1
	str	r2, [r4]
	add	r3, r3, #0x1
	ldrb	r0, [r1, #0x1]
	strb	r0, [r3]
	add	r1, r2, #1
	str	r1, [r4]
	add	r3, r3, #0x1
	ldrb	r0, [r2, #0x1]
	strb	r0, [r3]
	add	r1, r1, #0x1
	str	r1, [r4]
	b	.LAnisDrvMain_8
.LAnisDrvMain_10:
	.align	2, 0
.LAnisDrvMain_9:
	.word	0xfffd
	.word	0xffff
.LAnisDrvMain_7:
	add	r0, r1, #0
	sub	r0, r0, #0xf1
	cmp	r0, #0xe
	bhi	.LAnisDrvMain_44	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .LAnisDrvMain_13 @ .LAnisDrvMain_12
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LAnisDrvMain_14:
	.align	2, 0
.LAnisDrvMain_13:
	.word	.LAnisDrvMain_12
.LAnisDrvMain_12:
	.word	.LAnisDrvMain_15
	.word	.LAnisDrvMain_16
	.word	.LAnisDrvMain_17
	.word	.LAnisDrvMain_18
	.word	.LAnisDrvMain_19
	.word	.LAnisDrvMain_20
	.word	.LAnisDrvMain_21
	.word	.LAnisDrvMain_22
	.word	.LAnisDrvMain_23
	.word	.LAnisDrvMain_24
	.word	.LAnisDrvMain_25
	.word	.LAnisDrvMain_26
	.word	.LAnisDrvMain_44
	.word	.LAnisDrvMain_28
	.word	.LAnisDrvMain_29
.LAnisDrvMain_29:
	add	r0, r4, #0
	bl	AnisDrvSub_end
	b	.LAnisDrvMain_43
.LAnisDrvMain_28:
	add	r0, r4, #0
	bl	AnisDrvSub_endc
	b	.LAnisDrvMain_43
.LAnisDrvMain_26:
	add	r0, r4, #0
	bl	AnisDrvSub_nop
	b	.LAnisDrvMain_43
.LAnisDrvMain_25:
	add	r0, r4, #0
	bl	AnisDrvSub_ksb
	b	.LAnisDrvMain_43
.LAnisDrvMain_24:
	add	r0, r4, #0
	bl	AnisDrvSub_rvw
	b	.LAnisDrvMain_43
.LAnisDrvMain_23:
	add	r0, r4, #0
	bl	AnisDrvSub_rvwk
	b	.LAnisDrvMain_43
.LAnisDrvMain_22:
	add	r0, r4, #0
	bl	AnisDrvSub_prog
	b	.LAnisDrvMain_43
.LAnisDrvMain_21:
	add	r0, r4, #0
	bl	AnisDrvSub_bcs
	b	.LAnisDrvMain_43
.LAnisDrvMain_20:
	add	r0, r4, #0
	bl	AnisDrvSub_tjmp
	b	.LAnisDrvMain_43
.LAnisDrvMain_19:
	add	r0, r4, #0
	bl	AnisDrvSub_jump
	b	.LAnisDrvMain_43
.LAnisDrvMain_18:
	add	r0, r4, #0
	bl	AnisDrvSub_call
	b	.LAnisDrvMain_43
.LAnisDrvMain_17:
	add	r0, r4, #0
	bl	AnisDrvSub_ret
	b	.LAnisDrvMain_43
.LAnisDrvMain_16:
	add	r0, r4, #0
	bl	AnisDrvSub_stack0
	b	.LAnisDrvMain_43
.LAnisDrvMain_15:
	add	r0, r4, #0
	bl	AnisDrvSub_dma
	b	.LAnisDrvMain_43
.LAnisDrvMain_44:
	b	.LAnisDrvMain_44
.LAnisDrvMain_43:
	ldrh	r1, [r4, #0x1e]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LAnisDrvMain_53	@cond_branch
.LAnisDrvMain_8:
	ldrh	r0, [r4, #0x20]
	add	r1, r0, #0
	cmp	r1, #0
	bne	.LAnisDrvMain_46	@cond_branch
	b	.LAnisDrvMain_54
.LAnisDrvMain_46:
	sub	r0, r1, #1
	strh	r0, [r4, #0x20]
	ldrh	r0, [r4, #0x22]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x22]
	ldr	r5, [r4]
	ldr	r1, [r4, #0x8]
	cmp	r1, #0
	beq	.LAnisDrvMain_49	@cond_branch
	mov	r0, #0x0
	strh	r0, [r4, #0x20]
	add	r0, r4, #0
	bl	_call_via_r1
	cmp	r0, #0
	bne	.LAnisDrvMain_49	@cond_branch
	b	.LAnisDrvMain_54
.LAnisDrvMain_49:
	ldr	r1, [r4, #0x4]
	cmp	r1, #0
	beq	.LAnisDrvMain_52	@cond_branch
	ldr	r0, [r4, #0x8]
	cmp	r0, r1
	beq	.LAnisDrvMain_52	@cond_branch
	add	r0, r4, #0
	bl	_call_via_r1
.LAnisDrvMain_52:
	ldr	r0, [r4]
	cmp	r5, r0
	beq	.LAnisDrvMain_53	@cond_branch
	b	.LAnisDrvMain_54
.LAnisDrvMain_53:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvMain
