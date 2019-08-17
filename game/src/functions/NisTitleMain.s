	thumb_func_start NisTitleMain
NisTitleMain:
	push	{lr}
	ldr	r0, .LNisTitleMain_1 @ NisSelectInit + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.LNisTitleMain_2:
	.align	2, 0
.LNisTitleMain_1:
	.word	NisSelectInit + 1
	thumb_func_end NisTitleMain
