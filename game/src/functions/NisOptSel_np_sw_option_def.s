	thumb_func_start NisOptSel_np_sw_option_def
NisOptSel_np_sw_option_def:
	push	{r4, lr}
	add	r4, r0, #0
	sub	r4, r4, #0x14
	bl	NisOptSave_Comp
	cmp	r0, #0
	bne	.LNisOptSel_np_sw_option_def_1	@cond_branch
	ldr	r2, .LNisOptSel_np_sw_option_def_3 @ np_Msg_OptionSelect_DF
	add	r0, r4, #0
	mov	r1, #0x2
	bl	MDCPC_print
	b	.LNisOptSel_np_sw_option_def_2
.LNisOptSel_np_sw_option_def_4:
	.align	2, 0
.LNisOptSel_np_sw_option_def_3:
	.word	np_Msg_OptionSelect_DF
.LNisOptSel_np_sw_option_def_1:
	ldr	r2, .LNisOptSel_np_sw_option_def_5 @ np_Msg_OptionSelect_YR
	add	r0, r4, #0
	mov	r1, #0x2
	bl	MDCPC_print
.LNisOptSel_np_sw_option_def_2:
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_option_def_6:
	.align	2, 0
.LNisOptSel_np_sw_option_def_5:
	.word	np_Msg_OptionSelect_YR
	thumb_func_end NisOptSel_np_sw_option_def
