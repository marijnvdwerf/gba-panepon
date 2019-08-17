	thumb_func_start NisTitleInit
NisTitleInit:
	push	{lr}
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	bl	Obj1AllClear
	mov	r0, #0xf
	mov	r1, #0x3
	bl	KeyRead_SetPara
	bl	SoundVSyncOn_rev01
	mov	r0, #0x68
	bl	m4aSongNumStart
	mov	r0, #0x0
	bl	np_PutObjMascot_Init
	bl	NisTitleVram
	ldr	r0, .LNisTitleInit_1 @ NisTitleMain + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.LNisTitleInit_2:
	.align	2, 0
.LNisTitleInit_1:
	.word	NisTitleMain + 1
	thumb_func_end NisTitleInit
