	thumb_func_start NisOptSel_WtPara_on_of
NisOptSel_WtPara_on_of:
	push	{lr}
	cmp	r1, #0
	bne	.LNisOptSel_WtPara_on_of_1	@cond_branch
	ldr	r2, .LNisOptSel_WtPara_on_of_3 @ np_Msg_OptionSelect_ON
	mov	r1, #0x2
	bl	MDCPC_print
	b	.LNisOptSel_WtPara_on_of_2
.LNisOptSel_WtPara_on_of_4:
	.align	2, 0
.LNisOptSel_WtPara_on_of_3:
	.word	np_Msg_OptionSelect_ON
.LNisOptSel_WtPara_on_of_1:
	ldr	r2, .LNisOptSel_WtPara_on_of_5 @ np_Msg_OptionSelect_OF
	mov	r1, #0x2
	bl	MDCPC_print
.LNisOptSel_WtPara_on_of_2:
	pop	{r0}
	bx	r0
.LNisOptSel_WtPara_on_of_6:
	.align	2, 0
.LNisOptSel_WtPara_on_of_5:
	.word	np_Msg_OptionSelect_OF
	thumb_func_end NisOptSel_WtPara_on_of
