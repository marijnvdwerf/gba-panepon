	thumb_func_start nis_game_ram_clr
nis_game_ram_clr:
	push	{lr}
	ldr	r1, .Lnis_game_ram_clr_2 @ NRam
	mov	r0, #0x0
	ldr	r3, .Lnis_game_ram_clr_2 + 4 @ 0xbe7
	mov	r2, #0x0
.Lnis_game_ram_clr_1:
	strb	r2, [r1]
	add	r1, r1, #0x1
	add	r0, r0, #0x1
	cmp	r0, r3
	bls	.Lnis_game_ram_clr_1	@cond_branch
	pop	{r0}
	bx	r0
.Lnis_game_ram_clr_3:
	.align	2, 0
.Lnis_game_ram_clr_2:
	.word	NRam
	.word	0xbe7
	thumb_func_end nis_game_ram_clr
