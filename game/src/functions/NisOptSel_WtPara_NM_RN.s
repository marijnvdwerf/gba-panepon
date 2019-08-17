	thumb_func_start NisOptSel_WtPara_NM_RN
NisOptSel_WtPara_NM_RN:
	push	{lr}
	cmp	r1, #0
	bne	.LNisOptSel_WtPara_NM_RN_1	@cond_branch
	ldr	r2, .LNisOptSel_WtPara_NM_RN_3 @ np_Msg_OptionSelect_NM
	mov	r1, #0x2
	bl	MDCPC_print
	b	.LNisOptSel_WtPara_NM_RN_2
.LNisOptSel_WtPara_NM_RN_4:
	.align	2, 0
.LNisOptSel_WtPara_NM_RN_3:
	.word	np_Msg_OptionSelect_NM
.LNisOptSel_WtPara_NM_RN_1:
	ldr	r2, .LNisOptSel_WtPara_NM_RN_5 @ np_Msg_OptionSelect_RN
	mov	r1, #0x2
	bl	MDCPC_print
.LNisOptSel_WtPara_NM_RN_2:
	pop	{r0}
	bx	r0
.LNisOptSel_WtPara_NM_RN_6:
	.align	2, 0
.LNisOptSel_WtPara_NM_RN_5:
	.word	np_Msg_OptionSelect_RN
	thumb_func_end NisOptSel_WtPara_NM_RN
