	thumb_func_start np_set_field_bgm
np_set_field_bgm:
	push	{r4, lr}
	ldr	r1, .Lnp_set_field_bgm_4 @ NRam
	ldr	r2, .Lnp_set_field_bgm_4 + 4 @ 0xa8c
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_set_field_bgm_3	@cond_branch
	ldr	r0, .Lnp_set_field_bgm_4 + 8 @ 0xa8b
	add	r4, r1, r0
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.Lnp_set_field_bgm_2	@cond_branch
	bl	np_game_bgm_normal
.Lnp_set_field_bgm_2:
	ldrb	r0, [r4]
	cmp	r0, #0x1
	bne	.Lnp_set_field_bgm_3	@cond_branch
	bl	np_game_bgm_danger
.Lnp_set_field_bgm_3:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_set_field_bgm_5:
	.align	2, 0
.Lnp_set_field_bgm_4:
	.word	NRam
	.word	0xa8c
	.word	0xa8b
	thumb_func_end np_set_field_bgm
