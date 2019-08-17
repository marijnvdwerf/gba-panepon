	thumb_func_start n_incr
n_incr:
	add	r0, r0, #0x1
	cmp	r0, r1
	blt	.Ln_incr_1	@cond_branch
	cmp	r2, r0
	bge	.Ln_incr_2	@cond_branch
.Ln_incr_1:
	add	r0, r1, #0
.Ln_incr_2:
	bx	lr
	thumb_func_end n_incr
