	thumb_func_start np_fuwafuwa_05
np_fuwafuwa_05:
	add	r2, r0, #0
	ldr	r0, .Lnp_fuwafuwa_05_2 @ NmiInc
	ldr	r0, [r0]
	add	r1, r0, r1
	cmp	r2, #0
	beq	.Lnp_fuwafuwa_05_1	@cond_branch
	ASR	r1, r2
.Lnp_fuwafuwa_05_1:
	mov	r0, #0x1
	and	r1, r1, r0
	add	r0, r1, #0
	bx	lr
.Lnp_fuwafuwa_05_3:
	.align	2, 0
.Lnp_fuwafuwa_05_2:
	.word	NmiInc
	thumb_func_end np_fuwafuwa_05
