	thumb_func_start np_9danme_set
np_9danme_set:
	push	{lr}
	bl	np_gp_GAMEPARA_CMD_SPNLCHK
	pop	{r0}
	bx	r0
	thumb_func_end np_9danme_set
