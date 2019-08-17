	thumb_func_start srw_init
srw_init:
	push	{lr}
	bl	np_srwreq_score
	bl	np_srwreq_spdlv
	bl	np_srwreq_time
	pop	{r0}
	bx	r0
	thumb_func_end srw_init
