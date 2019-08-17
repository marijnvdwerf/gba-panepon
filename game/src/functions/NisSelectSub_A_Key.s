	thumb_func_start NisSelectSub_A_Key
NisSelectSub_A_Key:
	push	{r4, r5, r6, lr}
	ldr	r0, .LNisSelectSub_A_Key_6 @ SelRam
	ldrb	r4, [r0]
	add	r1, r0, #1
	add	r1, r4, r1
	ldrb	r5, [r1]
	add	r0, r0, #0x6
	add	r0, r4, r0
	ldrb	r0, [r0]
	add	r6, r5, r0
	cmp	r4, #0x4
	bne	.LNisSelectSub_A_Key_1	@cond_branch
	ldr	r1, .LNisSelectSub_A_Key_6 + 4 @ ARam
	mov	r0, #0x0
	strb	r0, [r1, #0x6]
	strb	r0, [r1, #0x14]
	add	r0, r1, #0
	add	r0, r0, #0x25
	ldrb	r0, [r0]
	add	r0, r0, #0x1
	strb	r0, [r1, #0xc]
	mov	r0, #0x9
	strb	r0, [r1, #0x2]
	ldr	r0, .LNisSelectSub_A_Key_6 + 8 @ nis_game_init + 1
	bl	MainSeqSearchNear
.LNisSelectSub_A_Key_1:
	cmp	r4, #0
	bne	.LNisSelectSub_A_Key_3	@cond_branch
	cmp	r5, #0x4
	bne	.LNisSelectSub_A_Key_3	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r0, .LNisSelectSub_A_Key_6 + 4 @ ARam
	add	r0, r0, #0x38
	strb	r4, [r0]
	ldr	r0, .LNisSelectSub_A_Key_6 + 12 @ NisMsgSleepInit + 1
	bl	MainSeqSearchNear
.LNisSelectSub_A_Key_3:
	sub	r0, r4, #1
	cmp	r0, #0x1
	bhi	.LNisSelectSub_A_Key_4	@cond_branch
	ldr	r1, .LNisSelectSub_A_Key_6 @ SelRam
	add	r0, r1, #0
	add	r0, r0, #0xb
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0x5
	bhi	.LNisSelectSub_A_Key_24	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .LNisSelectSub_A_Key_6 + 16 @ .LNisSelectSub_A_Key_8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LNisSelectSub_A_Key_7:
	.align	2, 0
.LNisSelectSub_A_Key_6:
	.word	SelRam
	.word	ARam
	.word	nis_game_init + 1
	.word	NisMsgSleepInit + 1
	.word	.LNisSelectSub_A_Key_8
.LNisSelectSub_A_Key_8:
	.word	.LNisSelectSub_A_Key_9
	.word	.LNisSelectSub_A_Key_10
	.word	.LNisSelectSub_A_Key_11
	.word	.LNisSelectSub_A_Key_12
	.word	.LNisSelectSub_A_Key_13
	.word	.LNisSelectSub_A_Key_14
.LNisSelectSub_A_Key_9:
	ldr	r0, .LNisSelectSub_A_Key_16 @ ARam
	mov	r1, #0x5
	strb	r1, [r0, #0x6]
	mov	r1, #0x1
	strb	r1, [r0, #0x14]
	b	.LNisSelectSub_A_Key_24
.LNisSelectSub_A_Key_17:
	.align	2, 0
.LNisSelectSub_A_Key_16:
	.word	ARam
.LNisSelectSub_A_Key_10:
	ldr	r0, .LNisSelectSub_A_Key_19 @ ARam
	mov	r2, #0x0
	mov	r1, #0x5
	b	.LNisSelectSub_A_Key_27
.LNisSelectSub_A_Key_20:
	.align	2, 0
.LNisSelectSub_A_Key_19:
	.word	ARam
.LNisSelectSub_A_Key_11:
	ldr	r0, .LNisSelectSub_A_Key_22 @ ARam
	mov	r1, #0x5
	strb	r1, [r0, #0x6]
	mov	r1, #0x2
	strb	r1, [r0, #0x14]
	b	.LNisSelectSub_A_Key_24
.LNisSelectSub_A_Key_23:
	.align	2, 0
.LNisSelectSub_A_Key_22:
	.word	ARam
.LNisSelectSub_A_Key_12:
	ldr	r1, .LNisSelectSub_A_Key_25 @ ARam
	mov	r0, #0x0
	strb	r0, [r1, #0x6]
	strb	r0, [r1, #0x14]
	b	.LNisSelectSub_A_Key_24
.LNisSelectSub_A_Key_26:
	.align	2, 0
.LNisSelectSub_A_Key_25:
	.word	ARam
.LNisSelectSub_A_Key_13:
	ldr	r0, .LNisSelectSub_A_Key_28 @ ARam
	mov	r2, #0x0
	mov	r1, #0x1
	b	.LNisSelectSub_A_Key_27
.LNisSelectSub_A_Key_29:
	.align	2, 0
.LNisSelectSub_A_Key_28:
	.word	ARam
.LNisSelectSub_A_Key_14:
	ldr	r0, .LNisSelectSub_A_Key_32 @ ARam
	mov	r2, #0x0
	mov	r1, #0x2
.LNisSelectSub_A_Key_27:
	strb	r1, [r0, #0x6]
	strb	r2, [r0, #0x14]
.LNisSelectSub_A_Key_24:
	cmp	r4, #0x1
	bne	.LNisSelectSub_A_Key_30	@cond_branch
	ldr	r1, .LNisSelectSub_A_Key_32 @ ARam
	mov	r0, #0x0
	b	.LNisSelectSub_A_Key_31
.LNisSelectSub_A_Key_33:
	.align	2, 0
.LNisSelectSub_A_Key_32:
	.word	ARam
.LNisSelectSub_A_Key_30:
	cmp	r4, #0x2
	bne	.LNisSelectSub_A_Key_34	@cond_branch
	ldr	r1, .LNisSelectSub_A_Key_40 @ ARam
	mov	r0, #0x4
.LNisSelectSub_A_Key_31:
	strb	r0, [r1, #0x2]
.LNisSelectSub_A_Key_34:
	ldr	r0, .LNisSelectSub_A_Key_40 + 4 @ nis_game_init + 1
	bl	MainSeqSearchNear
.LNisSelectSub_A_Key_4:
	cmp	r4, #0x3
	bne	.LNisSelectSub_A_Key_39	@cond_branch
	cmp	r6, #0xb
	bne	.LNisSelectSub_A_Key_36	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r0, .LNisSelectSub_A_Key_40 + 8 @ NisOptField_Init + 1
	bl	MainSeqSearchNear
.LNisSelectSub_A_Key_36:
	cmp	r6, #0xd
	bne	.LNisSelectSub_A_Key_39	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	bl	NisOptSave_Comp
	cmp	r0, #0
	bne	.LNisSelectSub_A_Key_38	@cond_branch
	bl	NisOptSet_Def
	b	.LNisSelectSub_A_Key_39
.LNisSelectSub_A_Key_41:
	.align	2, 0
.LNisSelectSub_A_Key_40:
	.word	ARam
	.word	nis_game_init + 1
	.word	NisOptField_Init + 1
.LNisSelectSub_A_Key_38:
	bl	NisOptSave_Read
.LNisSelectSub_A_Key_39:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end NisSelectSub_A_Key
