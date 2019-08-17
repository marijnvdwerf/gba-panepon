	thumb_func_start nis_game_area_clr
nis_game_area_clr:
	ldr	r1, .Lnis_game_area_clr_2 @ ARam
	mov	r0, #0x9b
	mov	r2, #0x0
.Lnis_game_area_clr_1:
	strb	r2, [r1]
	add	r1, r1, #0x1
	sub	r0, r0, #0x1
	cmp	r0, #0
	bge	.Lnis_game_area_clr_1	@cond_branch
	bx	lr
.Lnis_game_area_clr_3:
	.align	2, 0
.Lnis_game_area_clr_2:
	.word	ARam
	thumb_func_end nis_game_area_clr
