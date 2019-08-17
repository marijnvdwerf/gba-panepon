	thumb_func_start n_incm
n_incm:
	cmp	r0, r1
	bge	.Ln_incm_1	@cond_branch
	add	r0, r0, #0x1
	b	.Ln_incm_2
.Ln_incm_1:
	add	r0, r1, #0
.Ln_incm_2:
	bx	lr
	thumb_func_end n_incm
