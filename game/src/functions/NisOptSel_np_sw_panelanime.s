	thumb_func_start NisOptSel_np_sw_panelanime
NisOptSel_np_sw_panelanime:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_panelanime_1 @ ARam
	ldrb	r1, [r1, #0x19]
	bl	NisOptSel_WtPara_on_of
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_panelanime_2:
	.align	2, 0
.LNisOptSel_np_sw_panelanime_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_panelanime
