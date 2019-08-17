	thumb_func_start np_game_bgm_danger
np_game_bgm_danger:
	push	{lr}
	mov	r0, #0x66
	bl	np_SoundSetBGM
	pop	{r0}
	bx	r0
	thumb_func_end np_game_bgm_danger
