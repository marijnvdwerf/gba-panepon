	thumb_func_start n_decr
n_decr:
	sub	r0, r0, #0x1
	cmp	r0, r1
	blt	.Ln_decr_1	@cond_branch
	cmp	r2, r0
	bge	.Ln_decr_2	@cond_branch
.Ln_decr_1:
	add	r0, r2, #0
.Ln_decr_2:
	bx	lr
	thumb_func_end n_decr
