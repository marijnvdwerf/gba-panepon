	thumb_func_start agb_start
agb_start:
	push	{r4, r5, lr}
	add	sp, sp, #0xfffffffc
	ldr	r1, .Lagb_start_11 @ 0x4000204
	ldr	r2, .Lagb_start_11 + 4 @ 0x4014
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r4, #0x0
	str	r4, [sp]
	ldr	r1, .Lagb_start_11 + 8 @ 0x40000d4
	mov	r0, sp
	str	r0, [r1]
	mov	r0, #0xc0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .Lagb_start_11 + 12 @ 0x85006000
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	mov	r0, #0xa0
	str	r0, [sp]
	mov	r2, sp
	str	r2, [r1]
	mov	r0, #0xe0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r2, .Lagb_start_11 + 16 @ 0x85000100
	str	r2, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	str	r4, [sp]
	mov	r0, sp
	str	r0, [r1]
	mov	r0, #0xa0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	str	r2, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	bl	irq_init
	ldr	r1, .Lagb_start_11 + 20 @ VBlankIntr + 1
	mov	r0, #0x0
	bl	irq_set
	ldr	r1, .Lagb_start_11 + 24 @ GBAJoyIntr + 1
	mov	r0, #0x7
	bl	irq_set
	ldr	r1, .Lagb_start_11 + 28 @ 0x10001
	mov	r0, #0x0
	bl	irq_set_ie
	mov	r0, #0x2
	mov	r1, #0x80
	bl	irq_set_ie
	bl	Obj1AllClear
	bl	m4aSoundInit
	mov	r0, #0x14
	mov	r1, #0x6
	bl	KeyRead_SetPara
	ldr	r0, .Lagb_start_11 + 32 @ PrbRam
	str	r4, [r0, #0x4]
	str	r4, [r0]
	strb	r4, [r0, #0x8]
	bl	MainSeqInit
	bl	nis_game_area_clr
	bl	NisTitleZero
	ldr	r0, .Lagb_start_11 + 36 @ NisChk_SpeedFG
	strb	r4, [r0]
	ldr	r0, .Lagb_start_11 + 40 @ b_BG0HOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 44 @ b_BG0VOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 48 @ b_BG1HOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 52 @ b_BG1VOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 56 @ b_BG2HOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 60 @ b_BG2VOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 64 @ b_BG3HOFS
	strh	r4, [r0]
	ldr	r0, .Lagb_start_11 + 68 @ b_BG3VOFS
	strh	r4, [r0]
	ldr	r5, .Lagb_start_11 + 72 @ MainSeqTable
.Lagb_start_10:
	bl	KeyRead_Main
	ldr	r0, .Lagb_start_11 + 76 @ MainSeqIdx
	ldr	r0, [r0]
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	ldr	r1, [r0]
	ldr	r0, .Lagb_start_11 + 80 @ NisATitleInit + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	ldr	r0, .Lagb_start_11 + 84 @ NisATitleMain0 + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	ldr	r0, .Lagb_start_11 + 88 @ NisATitleMain1 + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	ldr	r0, .Lagb_start_11 + 92 @ NisATitleLast + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	ldr	r0, .Lagb_start_11 + 96 @ sub_200C03C + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	ldr	r0, .Lagb_start_11 + 100 @ sub_200C14C + 1
	cmp	r1, r0
	beq	.Lagb_start_6	@cond_branch
	bl	NisMoveKabeColor_Main
.Lagb_start_6:
	ldr	r0, .Lagb_start_11 + 76 @ MainSeqIdx
	ldr	r0, [r0]
	lsl	r0, r0, #0x2
	add	r0, r0, r5
	ldr	r0, [r0]
	bl	_call_via_r0
	ldr	r4, .Lagb_start_11 + 104 @ ARam+0x3c
	add	r0, r4, #0
	bl	AnisDrvMain
	add	r0, r4, #0
	add	r0, r0, #0x30
	bl	AnisDrvMain
	bl	np_PutObjMascot_Ctc
	bl	NisKabegamiRoll
	bl	Obj1Clear
	ldr	r0, .Lagb_start_11 + 108 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lagb_start_7	@cond_branch
	ldr	r0, .Lagb_start_11 + 36 @ NisChk_SpeedFG
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	mov	r2, #0x1
	and	r1, r1, r2
	strb	r1, [r0]
.Lagb_start_7:
	bl	VBlankIntrWait
	ldr	r1, .Lagb_start_11 + 112 @ 0x4000010
	ldr	r0, .Lagb_start_11 + 40 @ b_BG0HOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 44 @ b_BG0VOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 48 @ b_BG1HOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 52 @ b_BG1VOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 56 @ b_BG2HOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 60 @ b_BG2VOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 64 @ b_BG3HOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r0, .Lagb_start_11 + 68 @ b_BG3VOFS
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r3, .Lagb_start_11 + 32 @ PrbRam
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lagb_start_8	@cond_branch
	ldr	r2, .Lagb_start_11 + 8 @ 0x40000d4
	mov	r4, #0x84
	lsl	r4, r4, #0x18
.Lagb_start_9:
	ldr	r0, [r1, #0x4]
	str	r0, [r2]
	ldr	r0, [r1, #0x8]
	str	r0, [r2, #0x4]
	ldrh	r0, [r1, #0xc]
	lsr	r0, r0, #0x2
	orr	r0, r0, r4
	str	r0, [r2, #0x8]
	ldr	r0, [r2, #0x8]
	ldr	r1, [r1]
	cmp	r1, #0
	bne	.Lagb_start_9	@cond_branch
	str	r1, [r3, #0x4]
	str	r1, [r3]
	strb	r1, [r3, #0x8]
.Lagb_start_8:
	bl	m4aSoundMain
	b	.Lagb_start_10
.Lagb_start_12:
	.align	2, 0
.Lagb_start_11:
	.word	0x4000204
	.word	0x4014
	.word	0x40000d4
	.word	0x85006000
	.word	0x85000100
	.word	VBlankIntr + 1
	.word	GBAJoyIntr + 1
	.word	0x10001
	.word	PrbRam
	.word	NisChk_SpeedFG
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	.word	b_BG3HOFS
	.word	b_BG3VOFS
	.word	MainSeqTable
	.word	MainSeqIdx
	.word	NisATitleInit + 1
	.word	NisATitleMain0 + 1
	.word	NisATitleMain1 + 1
	.word	NisATitleLast + 1
	.word	sub_200C03C + 1
	.word	sub_200C14C + 1
	.word	ARam+0x3c
	.word	KeyRead_Trg
	.word	0x4000010
	thumb_func_end agb_start
