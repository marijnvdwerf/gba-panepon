	thumb_func_start NisOptField_Main
NisOptField_Main:
	push	{r4, r5, lr}
	mov	r5, #0x0
	ldr	r4, .LNisOptField_Main_9 @ KeyRead_Trg
	ldrh	r1, [r4]
	mov	r0, #0xc2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisOptField_Main_1	@cond_branch
	mov	r0, #0x3
	bl	m4aSongNumStart
	mov	r5, #0x1
.LNisOptField_Main_1:
	ldrh	r1, [r4]
	mov	r0, #0x9
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisOptField_Main_2	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	mov	r5, #0x1
.LNisOptField_Main_2:
	mov	r4, #0x0
	ldr	r2, .LNisOptField_Main_9 + 4 @ KeyRead_Rpt
	ldrh	r1, [r2]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisOptField_Main_4	@cond_branch
	ldr	r0, .LNisOptField_Main_9 + 8 @ ARam
	add	r3, r0, #0
	add	r3, r3, #0x23
	ldrb	r0, [r3]
	cmp	r0, #0
	beq	.LNisOptField_Main_4	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r3]
	mov	r4, #0x1
.LNisOptField_Main_4:
	ldrh	r1, [r2]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisOptField_Main_6	@cond_branch
	ldr	r0, .LNisOptField_Main_9 + 8 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x23
	ldrb	r0, [r1]
	cmp	r0, #0xf
	bhi	.LNisOptField_Main_6	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r4, #0x1
.LNisOptField_Main_6:
	cmp	r4, #0
	beq	.LNisOptField_Main_7	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	bl	NisOptSave_Write
	bl	NisHako_BLD_Set
.LNisOptField_Main_7:
	cmp	r5, #0
	beq	.LNisOptField_Main_8	@cond_branch
	bl	NisTitleVram
	ldr	r0, .LNisOptField_Main_9 + 8 @ ARam
	add	r0, r0, #0x3a
	mov	r1, #0x0
	strb	r1, [r0]
	ldr	r0, .LNisOptField_Main_9 + 12 @ NisSelectMain + 1
	bl	MainSeqSearchNear
.LNisOptField_Main_8:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisOptField_Main_10:
	.align	2, 0
.LNisOptField_Main_9:
	.word	KeyRead_Trg
	.word	KeyRead_Rpt
	.word	ARam
	.word	NisSelectMain + 1
	thumb_func_end NisOptField_Main
