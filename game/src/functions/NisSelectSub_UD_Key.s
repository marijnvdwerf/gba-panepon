	thumb_func_start NisSelectSub_UD_Key
NisSelectSub_UD_Key:
	push	{r4, r5, r6, lr}
	ldr	r0, .LNisSelectSub_UD_Key_3 @ SelRam
	ldrb	r5, [r0]
	add	r0, r0, #0x1
	add	r0, r5, r0
	ldrb	r6, [r0]
	bl	NisSelectSub_Search
	add	r2, r0, #0
	ldrb	r0, [r2, #0x4]
	cmp	r0, #0
	bne	.LNisSelectSub_UD_Key_1	@cond_branch
	ldr	r0, .LNisSelectSub_UD_Key_3 + 4 @ KeyRead_Rpt
	b	.LNisSelectSub_UD_Key_2
.LNisSelectSub_UD_Key_4:
	.align	2, 0
.LNisSelectSub_UD_Key_3:
	.word	SelRam
	.word	KeyRead_Rpt
.LNisSelectSub_UD_Key_1:
	ldr	r0, .LNisSelectSub_UD_Key_7 @ KeyRead_Trg
.LNisSelectSub_UD_Key_2:
	ldrh	r4, [r0]
	ldrb	r0, [r2, #0x5]
	cmp	r0, #0
	bne	.LNisSelectSub_UD_Key_5	@cond_branch
	ldr	r0, .LNisSelectSub_UD_Key_7 + 4 @ KeyRead_Rpt
	b	.LNisSelectSub_UD_Key_6
.LNisSelectSub_UD_Key_8:
	.align	2, 0
.LNisSelectSub_UD_Key_7:
	.word	KeyRead_Trg
	.word	KeyRead_Rpt
.LNisSelectSub_UD_Key_5:
	ldr	r0, .LNisSelectSub_UD_Key_12 @ KeyRead_Trg
.LNisSelectSub_UD_Key_6:
	ldrh	r1, [r0]
	mov	r0, #0x80
	and	r0, r0, r4
	cmp	r0, #0
	beq	.LNisSelectSub_UD_Key_9	@cond_branch
	ldr	r0, .LNisSelectSub_UD_Key_12 + 4 @ SelRam
	add	r1, r0, #1
	ldrb	r0, [r0]
	add	r1, r1, r0
	ldrb	r2, [r2, #0x2]
	ldrb	r0, [r1]
	cmp	r0, r2
	beq	.LNisSelectSub_UD_Key_15	@cond_branch
	strb	r2, [r1]
	mov	r0, #0x1
	bl	m4aSongNumStart
	b	.LNisSelectSub_UD_Key_15
.LNisSelectSub_UD_Key_13:
	.align	2, 0
.LNisSelectSub_UD_Key_12:
	.word	KeyRead_Trg
	.word	SelRam
.LNisSelectSub_UD_Key_9:
	mov	r0, #0x40
	and	r1, r1, r0
	cmp	r1, #0
	beq	.LNisSelectSub_UD_Key_15	@cond_branch
	ldr	r0, .LNisSelectSub_UD_Key_24 @ SelRam
	add	r1, r0, #1
	ldrb	r0, [r0]
	add	r1, r1, r0
	ldrb	r2, [r2, #0x3]
	ldrb	r0, [r1]
	cmp	r0, r2
	beq	.LNisSelectSub_UD_Key_15	@cond_branch
	strb	r2, [r1]
	mov	r0, #0x1
	bl	m4aSongNumStart
.LNisSelectSub_UD_Key_15:
	mov	r0, #0x80
	and	r0, r0, r4
	cmp	r0, #0
	beq	.LNisSelectSub_UD_Key_19	@cond_branch
	cmp	r5, #0x3
	bne	.LNisSelectSub_UD_Key_19	@cond_branch
	cmp	r6, #0x4
	bne	.LNisSelectSub_UD_Key_19	@cond_branch
	ldr	r1, .LNisSelectSub_UD_Key_24 @ SelRam
	add	r0, r1, #6
	ldrb	r1, [r1]
	add	r1, r0, r1
	ldrb	r0, [r1]
	cmp	r0, #0x8
	bhi	.LNisSelectSub_UD_Key_19	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	bl	m4aSongNumStart
.LNisSelectSub_UD_Key_19:
	mov	r0, #0x40
	and	r4, r4, r0
	cmp	r4, #0
	beq	.LNisSelectSub_UD_Key_23	@cond_branch
	cmp	r5, #0x3
	bne	.LNisSelectSub_UD_Key_23	@cond_branch
	cmp	r6, #0
	bne	.LNisSelectSub_UD_Key_23	@cond_branch
	ldr	r1, .LNisSelectSub_UD_Key_24 @ SelRam
	add	r0, r1, #6
	ldrb	r1, [r1]
	add	r1, r0, r1
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LNisSelectSub_UD_Key_23	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	bl	m4aSongNumStart
.LNisSelectSub_UD_Key_23:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LNisSelectSub_UD_Key_25:
	.align	2, 0
.LNisSelectSub_UD_Key_24:
	.word	SelRam
	thumb_func_end NisSelectSub_UD_Key
