	thumb_func_start nis_pause_select
nis_pause_select:
	push	{r4, r5, lr}
	ldr	r2, .Lnis_pause_select_3 @ NRam
	ldr	r1, .Lnis_pause_select_3 + 4 @ 0xa68
	add	r0, r2, r1
	ldrb	r0, [r0]
	sub	r4, r0, #1
	ldr	r0, .Lnis_pause_select_3 + 8 @ KeyRead_Now
	ldrh	r1, [r0]
	mov	r0, #0x4
	and	r0, r0, r1
	add	r3, r2, #0
	cmp	r0, #0
	beq	.Lnis_pause_select_1	@cond_branch
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r1, [r2]
	ldr	r0, .Lnis_pause_select_3 + 12 @ 0xfbff
	and	r0, r0, r1
	strh	r0, [r2]
	b	.Lnis_pause_select_2
.Lnis_pause_select_4:
	.align	2, 0
.Lnis_pause_select_3:
	.word	NRam
	.word	0xa68
	.word	KeyRead_Now
	.word	0xfbff
.Lnis_pause_select_1:
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r5, #0x80
	lsl	r5, r5, #0x3
	add	r1, r5, #0
	orr	r0, r0, r1
	strh	r0, [r2]
	ldr	r1, .Lnis_pause_select_8 @ 0xa67
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnis_pause_select_5	@cond_branch
	ldr	r0, .Lnis_pause_select_8 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnis_pause_select_6	@cond_branch
	b	.Lnis_pause_select_10
.Lnis_pause_select_9:
	.align	2, 0
.Lnis_pause_select_8:
	.word	0xa67
	.word	KeyRead_Rpt
.Lnis_pause_select_5:
	ldr	r0, .Lnis_pause_select_16 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnis_pause_select_10	@cond_branch
.Lnis_pause_select_6:
	mov	r0, #0x1
	bl	m4aSongNumStart
	ldr	r0, .Lnis_pause_select_16 + 4 @ NRam
	ldr	r2, .Lnis_pause_select_16 + 8 @ 0xa67
	add	r0, r0, r2
	ldrb	r3, [r0]
	sub	r3, r3, #0x1
	cmp	r3, #0
	blt	.Lnis_pause_select_11	@cond_branch
	cmp	r4, r3
	bge	.Lnis_pause_select_12	@cond_branch
.Lnis_pause_select_11:
	add	r3, r4, #0
.Lnis_pause_select_12:
	ldr	r1, .Lnis_pause_select_16 + 4 @ NRam
	ldr	r5, .Lnis_pause_select_16 + 8 @ 0xa67
	add	r0, r1, r5
	strb	r3, [r0]
	add	r3, r1, #0
.Lnis_pause_select_10:
	ldr	r1, .Lnis_pause_select_16 + 8 @ 0xa67
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, r4
	beq	.Lnis_pause_select_13	@cond_branch
	ldr	r0, .Lnis_pause_select_16 + 12 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnis_pause_select_14	@cond_branch
	b	.Lnis_pause_select_15
.Lnis_pause_select_17:
	.align	2, 0
.Lnis_pause_select_16:
	.word	KeyRead_Trg
	.word	NRam
	.word	0xa67
	.word	KeyRead_Rpt
.Lnis_pause_select_13:
	ldr	r2, .Lnis_pause_select_27 @ KeyRead_Trg
	ldrh	r1, [r2]
	mov	r0, #0x80
	and	r0, r0, r1
	add	r5, r2, #0
	cmp	r0, #0
	beq	.Lnis_pause_select_18	@cond_branch
.Lnis_pause_select_14:
	mov	r0, #0x1
	bl	m4aSongNumStart
	ldr	r0, .Lnis_pause_select_27 + 4 @ NRam
	ldr	r2, .Lnis_pause_select_27 + 8 @ 0xa67
	add	r0, r0, r2
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	cmp	r1, #0
	blt	.Lnis_pause_select_19	@cond_branch
	cmp	r4, r1
	bge	.Lnis_pause_select_20	@cond_branch
.Lnis_pause_select_19:
	mov	r1, #0x0
.Lnis_pause_select_20:
	ldr	r0, .Lnis_pause_select_27 + 4 @ NRam
	ldr	r3, .Lnis_pause_select_27 + 8 @ 0xa67
	add	r0, r0, r3
	strb	r1, [r0]
.Lnis_pause_select_15:
	ldr	r5, .Lnis_pause_select_27 @ KeyRead_Trg
.Lnis_pause_select_18:
	ldrh	r1, [r5]
	mov	r0, #0x9
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnis_pause_select_21	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r1, .Lnis_pause_select_27 + 12 @ ARam
	ldr	r2, .Lnis_pause_select_27 + 4 @ NRam
	ldr	r3, .Lnis_pause_select_27 + 8 @ 0xa67
	add	r0, r2, r3
	ldrb	r0, [r0]
	add	r1, r1, #0x2c
	strb	r0, [r1]
	ldr	r0, .Lnis_pause_select_27 + 16 @ 0xa6a
	add	r2, r2, r0
	ldrb	r0, [r2]
	add	r0, r0, #0x1
	strb	r0, [r2]
.Lnis_pause_select_21:
	ldrh	r1, [r5]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnis_pause_select_22	@cond_branch
	mov	r0, #0x3
	bl	m4aSongNumStart
	ldr	r0, .Lnis_pause_select_27 + 12 @ ARam
	add	r0, r0, #0x2c
	mov	r1, #0x0
	strb	r1, [r0]
	ldr	r1, .Lnis_pause_select_27 + 4 @ NRam
	ldr	r2, .Lnis_pause_select_27 + 16 @ 0xa6a
	add	r1, r1, r2
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.Lnis_pause_select_22:
	mov	r0, #0x5
	mov	r1, #0x0
	bl	np_fuwafuwa_10
	add	r4, r0, #0
	ldr	r1, .Lnis_pause_select_27 + 20 @ b_BG2VOFS
	neg	r0, r4
	strh	r0, [r1]
	ldr	r0, .Lnis_pause_select_27 + 4 @ NRam
	ldr	r3, .Lnis_pause_select_27 + 8 @ 0xa67
	add	r0, r0, r3
	ldrb	r0, [r0]
	cmp	r0, #0x1
	beq	.Lnis_pause_select_23	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnis_pause_select_24	@cond_branch
	cmp	r0, #0
	beq	.Lnis_pause_select_25	@cond_branch
	b	.Lnis_pause_select_32
.Lnis_pause_select_28:
	.align	2, 0
.Lnis_pause_select_27:
	.word	KeyRead_Trg
	.word	NRam
	.word	0xa67
	.word	ARam
	.word	0xa6a
	.word	b_BG2VOFS
.Lnis_pause_select_24:
	cmp	r0, #0x2
	beq	.Lnis_pause_select_29	@cond_branch
	b	.Lnis_pause_select_32
.Lnis_pause_select_25:
	add	r4, r4, #0x40
	b	.Lnis_pause_select_32
.Lnis_pause_select_23:
	add	r4, r4, #0x50
	b	.Lnis_pause_select_32
.Lnis_pause_select_29:
	add	r4, r4, #0x60
.Lnis_pause_select_32:
	bl	NisSelectSub_pCsl
	add	r2, r0, #0
	mov	r0, #0x60
	add	r1, r4, #0
	bl	NisCtc_PutCtc
.Lnis_pause_select_2:
	mov	r0, #0x0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	thumb_func_end nis_pause_select
