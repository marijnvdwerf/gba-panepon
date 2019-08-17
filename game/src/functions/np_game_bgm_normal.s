	thumb_func_start np_game_bgm_normal
np_game_bgm_normal:
	push	{lr}
	mov	r0, #0x65
	bl	np_SoundSetBGM
	pop	{r0}
	bx	r0
	thumb_func_end np_game_bgm_normal
