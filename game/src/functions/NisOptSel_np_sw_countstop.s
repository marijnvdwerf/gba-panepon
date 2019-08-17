	thumb_func_start NisOptSel_np_sw_countstop
NisOptSel_np_sw_countstop:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_countstop_1 @ ARam
	ldrb	r1, [r1, #0x17]
	bl	NisOptSel_WtPara_N5_N6
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_countstop_2:
	.align	2, 0
.LNisOptSel_np_sw_countstop_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_countstop
