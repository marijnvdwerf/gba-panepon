	thumb_func_start np_csl_pt_sml
np_csl_pt_sml:
	push	{lr}
	mov	r2, #0xe
	mov	r3, #0xf
	bl	np_csl_pt_PXPY_XBYB
	pop	{r0}
	bx	r0
	thumb_func_end np_csl_pt_sml
