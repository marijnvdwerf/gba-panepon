	thumb_func_start NisSelectSub_B_Key
NisSelectSub_B_Key:
	push	{lr}
	ldr	r0, .LNisSelectSub_B_Key_1 @ NisATitleInit + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.LNisSelectSub_B_Key_2:
	.align	2, 0
.LNisSelectSub_B_Key_1:
	.word	NisATitleInit + 1
	thumb_func_end NisSelectSub_B_Key
