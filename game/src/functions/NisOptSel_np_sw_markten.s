	thumb_func_start NisOptSel_np_sw_markten
NisOptSel_np_sw_markten:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_markten_1 @ ARam
	ldrb	r1, [r1, #0x13]
	bl	NisOptSel_WtPara_of_on
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_markten_2:
	.align	2, 0
.LNisOptSel_np_sw_markten_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_markten
