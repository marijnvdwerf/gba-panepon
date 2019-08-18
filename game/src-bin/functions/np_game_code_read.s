	thumb_func_start np_game_code_read
np_game_code_read:
	push	{r4, lr}
	add	r4, r0, #0
	bl	np_game_code_sort
	cmp	r4, #0x7f
	bgt	.Lnp_game_code_read_2	@cond_branch
	ldr	r2, .Lnp_game_code_read_4 @ NRam
	lsl	r1, r4, #0x2
	add	r0, r1, r2
	ldr	r3, .Lnp_game_code_read_4 + 4 @ 0x848
	add	r0, r0, r3
	ldrh	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_game_code_read_2	@cond_branch
	add	r0, r2, r3
	add	r0, r1, r0
	b	.Lnp_game_code_read_3
.Lnp_game_code_read_5:
	.align	2, 0
.Lnp_game_code_read_4:
	.word	NRam
	.word	0x848
.Lnp_game_code_read_2:
	mov	r0, #0x0
.Lnp_game_code_read_3:
	pop	{r4}
	pop	{r1}
	bx	r1
	thumb_func_end np_game_code_read
