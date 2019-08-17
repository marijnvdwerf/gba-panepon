	thumb_func_start NisMsgSleepMain
NisMsgSleepMain:
	push	{r4, r5, lr}
	ldr	r4, .LNisMsgSleepMain_7 @ MDCPC_BUF_Main
	add	r0, r4, #0
	bl	MDCPC_main
	ldr	r0, .LNisMsgSleepMain_7 + 4 @ KeyRead_Trg
	ldrh	r2, [r0]
	mov	r1, #0x2
	add	r0, r1, #0
	and	r0, r0, r2
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	neg	r0, r0
	asr	r5, r0, #0x1f
	and	r5, r5, r1
	ldrb	r1, [r4, #0x8]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LNisMsgSleepMain_2	@cond_branch
	mov	r0, #0x9
	and	r0, r0, r2
	cmp	r0, #0
	beq	.LNisMsgSleepMain_2	@cond_branch
	mov	r5, #0x1
.LNisMsgSleepMain_2:
	cmp	r5, #0x1
	bne	.LNisMsgSleepMain_3	@cond_branch
	mov	r1, #0x80
	lsl	r1, r1, #0x13
	mov	r2, #0x84
	lsl	r2, r2, #0x4
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x8
	ldrh	r2, [r1]
	ldr	r3, .LNisMsgSleepMain_7 + 8 @ 0xfffc
	add	r0, r3, #0
	and	r0, r0, r2
	strh	r0, [r1]
	ldrh	r0, [r1]
	mov	r4, #0x1
	orr	r0, r0, r4
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldrh	r2, [r1]
	add	r0, r3, #0
	and	r0, r0, r2
	strh	r0, [r1]
	ldrh	r0, [r1]
	orr	r0, r0, r4
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldrh	r2, [r1]
	add	r0, r3, #0
	and	r0, r0, r2
	strh	r0, [r1]
	ldrh	r0, [r1]
	orr	r0, r0, r4
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldrh	r0, [r1]
	and	r3, r3, r0
	strh	r3, [r1]
	ldrh	r0, [r1]
	strh	r0, [r1]
	bl	Nis_Stop
.LNisMsgSleepMain_3:
	sub	r0, r5, #1
	cmp	r0, #0x1
	bhi	.LNisMsgSleepMain_6	@cond_branch
	ldr	r0, .LNisMsgSleepMain_7 + 12 @ ARam
	add	r4, r0, #0
	add	r4, r4, #0x38
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.LNisMsgSleepMain_5	@cond_branch
	ldr	r0, .LNisMsgSleepMain_7 + 16 @ NisTitleInit + 1
	bl	MainSeqSearchNear
.LNisMsgSleepMain_5:
	ldrb	r0, [r4]
	cmp	r0, #0x1
	bne	.LNisMsgSleepMain_6	@cond_branch
	bl	nis_game_vinit
	bl	np_set_field_bgm
	ldr	r0, .LNisMsgSleepMain_7 + 20 @ nis_game_main + 1
	bl	MainSeqSearchNear
.LNisMsgSleepMain_6:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisMsgSleepMain_8:
	.align	2, 0
.LNisMsgSleepMain_7:
	.word	MDCPC_BUF_Main
	.word	KeyRead_Trg
	.word	0xfffc
	.word	ARam
	.word	NisTitleInit + 1
	.word	nis_game_main + 1
	thumb_func_end NisMsgSleepMain
