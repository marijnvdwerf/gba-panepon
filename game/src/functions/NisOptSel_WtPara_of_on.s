	thumb_func_start NisOptSel_WtPara_of_on
NisOptSel_WtPara_of_on:
	push	{lr}
	cmp	r1, #0
	bne	.LNisOptSel_WtPara_of_on_1	@cond_branch
	ldr	r2, .LNisOptSel_WtPara_of_on_3 @ np_Msg_OptionSelect_OF
	mov	r1, #0x2
	bl	MDCPC_print
	b	.LNisOptSel_WtPara_of_on_2
.LNisOptSel_WtPara_of_on_4:
	.align	2, 0
.LNisOptSel_WtPara_of_on_3:
	.word	np_Msg_OptionSelect_OF
.LNisOptSel_WtPara_of_on_1:
	ldr	r2, .LNisOptSel_WtPara_of_on_5 @ np_Msg_OptionSelect_ON
	mov	r1, #0x2
	bl	MDCPC_print
.LNisOptSel_WtPara_of_on_2:
	pop	{r0}
	bx	r0
.LNisOptSel_WtPara_of_on_6:
	.align	2, 0
.LNisOptSel_WtPara_of_on_5:
	.word	np_Msg_OptionSelect_ON
	thumb_func_end NisOptSel_WtPara_of_on
