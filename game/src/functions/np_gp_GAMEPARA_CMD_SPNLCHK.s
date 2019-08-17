	thumb_func_start np_gp_GAMEPARA_CMD_SPNLCHK
np_gp_GAMEPARA_CMD_SPNLCHK:
	push	{lr}
	ldr	r0, .Lnp_gp_GAMEPARA_CMD_SPNLCHK_5 @ NRam
	ldr	r1, .Lnp_gp_GAMEPARA_CMD_SPNLCHK_5 + 4 @ 0xad5
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0x1
	beq	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_1	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_2	@cond_branch
	cmp	r0, #0
	beq	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_3	@cond_branch
	b	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_10
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_6:
	.align	2, 0
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_5:
	.word	NRam
	.word	0xad5
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_2:
	cmp	r0, #0x2
	beq	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_7	@cond_branch
	b	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_10
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_3:
	bl	np_gray_has_0
	b	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_10
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_1:
	bl	np_gray_has_1
	b	.Lnp_gp_GAMEPARA_CMD_SPNLCHK_10
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_7:
	bl	np_gray_has_2
.Lnp_gp_GAMEPARA_CMD_SPNLCHK_10:
	pop	{r0}
	bx	r0
	thumb_func_end np_gp_GAMEPARA_CMD_SPNLCHK
