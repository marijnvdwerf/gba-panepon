	thumb_func_start NisSelectMain
NisSelectMain:
	push	{r4, r5, lr}
	bl	NisSelectSub_Every
	ldr	r4, .LNisSelectMain_6 @ MDCPC_BUF_Main
	add	r0, r4, #0
	bl	MDCPC_main
	ldrb	r1, [r4, #0x8]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectMain_1	@cond_branch
	bl	NisSelectSub_Csl
	bl	NisSelectSub_UD_Key
	ldr	r0, .LNisSelectMain_6 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x30
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectMain_2	@cond_branch
	bl	NisSelectSub_LR_Key
.LNisSelectMain_2:
	bl	NisSelectSub_ScrWrite
	ldr	r0, .LNisSelectMain_6 + 8 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x9
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectMain_5	@cond_branch
	bl	NisSelectSub_Search
	add	r2, r0, #0
	ldrb	r1, [r2, #0x6]
	add	r0, r1, #0
	cmp	r0, #0xff
	beq	.LNisSelectMain_4	@cond_branch
	ldr	r0, .LNisSelectMain_6 + 12 @ SelRam
	strb	r1, [r0]
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r0, .LNisSelectMain_6 + 16 @ NisSelectInit + 1
	bl	MainSeqSearchNear
	b	.LNisSelectMain_5
.LNisSelectMain_7:
	.align	2, 0
.LNisSelectMain_6:
	.word	MDCPC_BUF_Main
	.word	KeyRead_Rpt
	.word	KeyRead_Trg
	.word	SelRam
	.word	NisSelectInit + 1
.LNisSelectMain_4:
	bl	NisSelectSub_A_Key
.LNisSelectMain_5:
	ldr	r0, .LNisSelectMain_11 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectMain_10	@cond_branch
	bl	NisSelectSub_Search
	add	r2, r0, #0
	ldrb	r1, [r2, #0x7]
	add	r0, r1, #0
	cmp	r0, #0xff
	beq	.LNisSelectMain_9	@cond_branch
	ldr	r0, .LNisSelectMain_11 + 4 @ SelRam
	strb	r1, [r0]
	mov	r0, #0x3
	bl	m4aSongNumStart
	ldr	r0, .LNisSelectMain_11 + 8 @ NisSelectInit + 1
	bl	MainSeqSearchNear
	b	.LNisSelectMain_10
.LNisSelectMain_12:
	.align	2, 0
.LNisSelectMain_11:
	.word	KeyRead_Trg
	.word	SelRam
	.word	NisSelectInit + 1
.LNisSelectMain_9:
	bl	NisSelectSub_B_Key
.LNisSelectMain_10:
	ldr	r0, .LNisSelectMain_15 @ KeyRead_Now
	ldrh	r1, [r0]
	mov	r0, #0xc0
	and	r0, r0, r1
	ldr	r5, .LNisSelectMain_15 + 4 @ MDCPC_BUF_Help
	cmp	r0, #0
	beq	.LNisSelectMain_13	@cond_branch
	ldrb	r1, [r5, #0x8]
	mov	r0, #0xfe
	and	r0, r0, r1
	strb	r0, [r5, #0x8]
.LNisSelectMain_13:
	add	r4, r5, #0
	ldrb	r1, [r4, #0x8]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LNisSelectMain_14	@cond_branch
	add	r0, r4, #0
	bl	MDCPC_sub_PageClear
	bl	NisSelectSub_Search
	add	r2, r0, #0
	ldr	r1, .LNisSelectMain_15 + 8 @ SelRam
	add	r0, r1, #6
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r1, [r0]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r2, r2, r0
	ldr	r1, [r2, #0x10]
	add	r0, r4, #0
	bl	MDCPC_start
.LNisSelectMain_14:
	add	r0, r5, #0
	bl	MDCPC_main
.LNisSelectMain_1:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisSelectMain_16:
	.align	2, 0
.LNisSelectMain_15:
	.word	KeyRead_Now
	.word	MDCPC_BUF_Help
	.word	SelRam
	thumb_func_end NisSelectMain
