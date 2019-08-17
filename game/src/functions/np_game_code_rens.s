	thumb_func_start np_game_code_rens
np_game_code_rens:
	push	{lr}
	ldr	r0, .Lnp_game_code_rens_3 @ NRam
	ldr	r1, .Lnp_game_code_rens_3 + 4 @ 0xac8
	add	r0, r0, r1
	ldr	r0, [r0]
	cmp	r0, #0x1
	ble	.Lnp_game_code_rens_1	@cond_branch
	ldr	r1, .Lnp_game_code_rens_3 + 8 @ 0xff9b
	cmp	r0, r1
	ble	.Lnp_game_code_rens_2	@cond_branch
	add	r0, r1, #0
.Lnp_game_code_rens_2:
	add	r0, r0, #0x65
	bl	np_game_code_set
.Lnp_game_code_rens_1:
	pop	{r0}
	bx	r0
.Lnp_game_code_rens_4:
	.align	2, 0
.Lnp_game_code_rens_3:
	.word	NRam
	.word	0xac8
	.word	0xff9b
	thumb_func_end np_game_code_rens
