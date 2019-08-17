	thumb_func_start n_decm
n_decm:
	cmp	r0, r1
	ble	.Ln_decm_1	@cond_branch
	sub	r0, r0, #0x1
	b	.Ln_decm_2
.Ln_decm_1:
	add	r0, r1, #0
.Ln_decm_2:
	bx	lr
	thumb_func_end n_decm
