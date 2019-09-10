	thumb_func_start np_gp_GAMEPARA_CMD_PNLKIND
np_gp_GAMEPARA_CMD_PNLKIND:
	push	{lr}
	ldr	r0, .Lnp_gp_GAMEPARA_CMD_PNLKIND_3 @ ARam
	ldrb	r0, [r0, #0x1f]
	cmp	r0, #0
	beq	.Lnp_gp_GAMEPARA_CMD_PNLKIND_1	@cond_branch
	bl	RandomGet03
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.Lnp_gp_GAMEPARA_CMD_PNLKIND_10
.Lnp_gp_GAMEPARA_CMD_PNLKIND_4:
	.align	2, 0
.Lnp_gp_GAMEPARA_CMD_PNLKIND_3:
	.word	ARam
.Lnp_gp_GAMEPARA_CMD_PNLKIND_1:
	ldr	r0, .Lnp_gp_GAMEPARA_CMD_PNLKIND_7 @ NRam
	ldr	r1, .Lnp_gp_GAMEPARA_CMD_PNLKIND_7 + 4 @ 0xa56
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0x5
	bne	.Lnp_gp_GAMEPARA_CMD_PNLKIND_5	@cond_branch
	bl	RandomGet04
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.Lnp_gp_GAMEPARA_CMD_PNLKIND_10
.Lnp_gp_GAMEPARA_CMD_PNLKIND_8:
	.align	2, 0
.Lnp_gp_GAMEPARA_CMD_PNLKIND_7:
	.word	NRam
	.word	0xa56
.Lnp_gp_GAMEPARA_CMD_PNLKIND_5:
	cmp	r0, #0x6
	bne	.Lnp_gp_GAMEPARA_CMD_PNLKIND_11	@cond_branch
	bl	RandomGet05
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.Lnp_gp_GAMEPARA_CMD_PNLKIND_10
.Lnp_gp_GAMEPARA_CMD_PNLKIND_11:
	b	.Lnp_gp_GAMEPARA_CMD_PNLKIND_11
.Lnp_gp_GAMEPARA_CMD_PNLKIND_10:
	pop	{r1}
	bx	r1
	thumb_func_end np_gp_GAMEPARA_CMD_PNLKIND
