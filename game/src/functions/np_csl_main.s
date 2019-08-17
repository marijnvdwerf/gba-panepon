	thumb_func_start np_csl_main
np_csl_main:
	push	{lr}
	bl	np_gameover_chk
	bl	np_roll_up
	bl	np_csl_mov
	bl	np_csl_put
	bl	np_csl_swap
	bl	np_pnl_swap
	pop	{r0}
	bx	r0
	thumb_func_end np_csl_main
