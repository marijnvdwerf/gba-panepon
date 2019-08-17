	thumb_func_start NisOptSel_np_sw_AgbKey_mode
NisOptSel_np_sw_AgbKey_mode:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_AgbKey_mode_1 @ ARam
	ldrb	r1, [r1, #0x1d]
	bl	NisOptSel_WtPara_of_on
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_AgbKey_mode_2:
	.align	2, 0
.LNisOptSel_np_sw_AgbKey_mode_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_AgbKey_mode
