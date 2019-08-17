	thumb_func_start NisOptSel_np_fld_bscfg
NisOptSel_np_fld_bscfg:
	push	{lr}
	ldr	r1, .LNisOptSel_np_fld_bscfg_1 @ ARam
	ldrb	r1, [r1, #0x18]
	bl	NisOptSel_WtPara_of_on
	pop	{r0}
	bx	r0
.LNisOptSel_np_fld_bscfg_2:
	.align	2, 0
.LNisOptSel_np_fld_bscfg_1:
	.word	ARam
	thumb_func_end NisOptSel_np_fld_bscfg
