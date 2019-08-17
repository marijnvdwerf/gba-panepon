	thumb_func_start n_chkr
n_chkr:
	cmp	r0, r1
	bge	.Ln_chkr_1	@cond_branch
	add	r0, r1, #0
.Ln_chkr_1:
	cmp	r2, r0
	bge	.Ln_chkr_2	@cond_branch
	add	r0, r2, #0
.Ln_chkr_2:
	bx	lr
	thumb_func_end n_chkr
