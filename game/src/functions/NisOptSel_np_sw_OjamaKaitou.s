	thumb_func_start NisOptSel_np_sw_OjamaKaitou
NisOptSel_np_sw_OjamaKaitou:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_OjamaKaitou_1 @ ARam
	ldrb	r1, [r1, #0x1c]
	bl	NisOptSel_WtPara_NM_RN
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_OjamaKaitou_2:
	.align	2, 0
.LNisOptSel_np_sw_OjamaKaitou_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_OjamaKaitou
