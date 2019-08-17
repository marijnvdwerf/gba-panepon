	thumb_func_start np_game_start_set0
np_game_start_set0:
	push	{lr}
	ldr	r2, .Lnp_game_start_set0_3 @ ARam
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x2
	bne	.Lnp_game_start_set0_2	@cond_branch
	ldrb	r0, [r2, #0xd]
	cmp	r0, #0
	beq	.Lnp_game_start_set0_2	@cond_branch
	mov	r1, #0x0
	mov	r0, #0xb
	strb	r0, [r2, #0x3]
	strb	r1, [r2, #0x4]
.Lnp_game_start_set0_2:
	bl	nis_game_para_read
	bl	np_game_start_panel
	pop	{r0}
	bx	r0
.Lnp_game_start_set0_4:
	.align	2, 0
.Lnp_game_start_set0_3:
	.word	ARam
	thumb_func_end np_game_start_set0
