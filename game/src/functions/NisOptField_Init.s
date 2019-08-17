	thumb_func_start NisOptField_Init
NisOptField_Init:
	push	{lr}
	bl	nis_game_vinit
	ldr	r0, .LNisOptField_Init_1 @ ARam
	add	r0, r0, #0x3a
	mov	r1, #0x1
	strb	r1, [r0]
	ldr	r0, .LNisOptField_Init_1 + 4 @ NisOptField_Main + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.LNisOptField_Init_2:
	.align	2, 0
.LNisOptField_Init_1:
	.word	ARam
	.word	NisOptField_Main + 1
	thumb_func_end NisOptField_Init
