	thumb_func_start NisOptSel_WtPara_N5_N6
NisOptSel_WtPara_N5_N6:
	push	{lr}
	cmp	r1, #0
	bne	.LNisOptSel_WtPara_N5_N6_1	@cond_branch
	ldr	r2, .LNisOptSel_WtPara_N5_N6_3 @ np_Msg_OptionSelect_N5
	mov	r1, #0x2
	bl	MDCPC_print
	b	.LNisOptSel_WtPara_N5_N6_2
.LNisOptSel_WtPara_N5_N6_4:
	.align	2, 0
.LNisOptSel_WtPara_N5_N6_3:
	.word	np_Msg_OptionSelect_N5
.LNisOptSel_WtPara_N5_N6_1:
	ldr	r2, .LNisOptSel_WtPara_N5_N6_5 @ np_Msg_OptionSelect_N6
	mov	r1, #0x2
	bl	MDCPC_print
.LNisOptSel_WtPara_N5_N6_2:
	pop	{r0}
	bx	r0
.LNisOptSel_WtPara_N5_N6_6:
	.align	2, 0
.LNisOptSel_WtPara_N5_N6_5:
	.word	np_Msg_OptionSelect_N6
	thumb_func_end NisOptSel_WtPara_N5_N6
