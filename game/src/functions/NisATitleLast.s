	thumb_func_start NisATitleLast
NisATitleLast:
	push	{lr}
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	bl	Obj1AllClear
	bl	NisSetGameVRamData
	ldr	r0, .LNisATitleLast_1 @ NisTitleInit + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.LNisATitleLast_2:
	.align	2, 0
.LNisATitleLast_1:
	.word	NisTitleInit + 1
	thumb_func_end NisATitleLast
