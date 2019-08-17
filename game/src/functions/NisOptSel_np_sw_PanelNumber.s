	thumb_func_start NisOptSel_np_sw_PanelNumber
NisOptSel_np_sw_PanelNumber:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_PanelNumber_1 @ ARam
	ldrb	r1, [r1, #0x1f]
	bl	NisOptSel_WtPara_of_on
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_PanelNumber_2:
	.align	2, 0
.LNisOptSel_np_sw_PanelNumber_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_PanelNumber
