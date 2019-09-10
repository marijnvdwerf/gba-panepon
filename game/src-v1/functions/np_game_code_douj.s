	thumb_func_start np_game_code_douj
np_game_code_douj:
	push	{lr}
	ldr	r0, .Lnp_game_code_douj_3 @ NRam
	mov	r1, #0xba
	lsl	r1, r1, #0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_game_code_douj_1	@cond_branch
	cmp	r0, #0x64
	ble	.Lnp_game_code_douj_2	@cond_branch
	mov	r0, #0x64
.Lnp_game_code_douj_2:
	bl	np_game_code_set
.Lnp_game_code_douj_1:
	pop	{r0}
	bx	r0
.Lnp_game_code_douj_4:
	.align	2, 0
.Lnp_game_code_douj_3:
	.word	NRam
	thumb_func_end np_game_code_douj
