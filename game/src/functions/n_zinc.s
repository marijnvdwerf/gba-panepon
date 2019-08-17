	thumb_func_start n_zinc
n_zinc:
	cmp	r0, #0
	bne	.Ln_zinc_1	@cond_branch
	mov	r0, #0x1
.Ln_zinc_1:
	bx	lr
	thumb_func_end n_zinc
