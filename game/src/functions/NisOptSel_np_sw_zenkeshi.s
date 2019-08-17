	thumb_func_start NisOptSel_np_sw_zenkeshi
NisOptSel_np_sw_zenkeshi:
	push	{lr}
	ldr	r1, .LNisOptSel_np_sw_zenkeshi_1 @ ARam
	add	r1, r1, #0x24
	ldrb	r1, [r1]
	bl	NisOptSel_WtPara_on_of
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_zenkeshi_2:
	.align	2, 0
.LNisOptSel_np_sw_zenkeshi_1:
	.word	ARam
	thumb_func_end NisOptSel_np_sw_zenkeshi
