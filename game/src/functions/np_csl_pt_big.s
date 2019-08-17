	thumb_func_start np_csl_pt_big
np_csl_pt_big:
	push	{lr}
	mov	r2, #0xd
	mov	r3, #0xd
	bl	np_csl_pt_PXPY_XBYB
	pop	{r0}
	bx	r0
	thumb_func_end np_csl_pt_big
