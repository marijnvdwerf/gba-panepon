	thumb_func_start n_incz
n_incz:
	cmp	r0, #0xfe
	bgt	.Ln_incz_1	@cond_branch
	add	r0, r0, #0x1
	b	.Ln_incz_2
.Ln_incz_1:
	mov	r0, #0xff
.Ln_incz_2:
	bx	lr
	thumb_func_end n_incz
