	thumb_func_start n_decz
n_decz:
	cmp	r0, #0
	ble	.Ln_decz_1	@cond_branch
	sub	r0, r0, #0x1
	b	.Ln_decz_2
.Ln_decz_1:
	mov	r0, #0x0
.Ln_decz_2:
	bx	lr
	thumb_func_end n_decz
