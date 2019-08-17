	thumb_func_start NisCtcPara_Init
NisCtcPara_Init:
	push	{r4, lr}
	ldr	r4, .LNisCtcPara_Init_6 @ NisCtcPara_Data
.LNisCtcPara_Init_5:
	ldrh	r0, [r4]
	add	r4, r4, #0x2
	ldrh	r1, [r4]
	add	r4, r4, #0x2
	ldrh	r2, [r4]
	add	r4, r4, #0x2
	ldrh	r3, [r4]
	add	r4, r4, #0x2
	cmp	r0, #0
	bne	.LNisCtcPara_Init_3	@cond_branch
	cmp	r1, #0
	bne	.LNisCtcPara_Init_3	@cond_branch
	cmp	r2, #0
	bne	.LNisCtcPara_Init_3	@cond_branch
	cmp	r3, #0
	beq	.LNisCtcPara_Init_4	@cond_branch
.LNisCtcPara_Init_3:
	bl	NisCtcPara_Para
	b	.LNisCtcPara_Init_5
.LNisCtcPara_Init_7:
	.align	2, 0
.LNisCtcPara_Init_6:
	.word	NisCtcPara_Data
.LNisCtcPara_Init_4:
	ldr	r0, .LNisCtcPara_Init_8 @ OamParaId0
	ldr	r1, .LNisCtcPara_Init_8 + 4 @ OamParaIdx
	ldrh	r1, [r1]
	strh	r1, [r0]
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisCtcPara_Init_9:
	.align	2, 0
.LNisCtcPara_Init_8:
	.word	OamParaId0
	.word	OamParaIdx
	thumb_func_end NisCtcPara_Init
