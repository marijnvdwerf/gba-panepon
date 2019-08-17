	thumb_func_start np_game_code_kosu
np_game_code_kosu:
	push	{r4, lr}
	mov	r3, #0x0
	mov	r2, #0x0
	ldr	r0, .Lnp_game_code_kosu_2 @ NRam
	ldr	r4, .Lnp_game_code_kosu_2 + 4 @ 0x8c8
	add	r1, r0, r4
	b	.Lnp_game_code_kosu_1
.Lnp_game_code_kosu_3:
	.align	2, 0
.Lnp_game_code_kosu_2:
	.word	NRam
	.word	0x8c8
.Lnp_game_code_kosu_5:
	add	r3, r3, #0x1
	add	r1, r1, #0x4
	add	r2, r2, #0x1
	cmp	r2, #0x7f
	bgt	.Lnp_game_code_kosu_4	@cond_branch
.Lnp_game_code_kosu_1:
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_game_code_kosu_5	@cond_branch
.Lnp_game_code_kosu_4:
	add	r0, r3, #0
	pop	{r4}
	pop	{r1}
	bx	r1
	thumb_func_end np_game_code_kosu
