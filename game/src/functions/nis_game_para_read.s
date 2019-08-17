	thumb_func_start nis_game_para_read
nis_game_para_read:
	push	{lr}
	bl	np_game_para_rd2
	pop	{r0}
	bx	r0
	thumb_func_end nis_game_para_read
