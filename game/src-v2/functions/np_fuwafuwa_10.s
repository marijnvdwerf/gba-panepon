	thumb_func_start np_fuwafuwa_10
np_fuwafuwa_10:
	push	{lr}
	add	r3, r0, #0
	ldr	r2, .Lnp_fuwafuwa_10_2 @ NmiInc
	ldr	r2, [r2]
	add	r2, r2, r1
	ASR	r2, r3
	mov	r1, #0x7
	and	r2, r2, r1
	cmp	r2, #0x7
	bhi	.Lnp_fuwafuwa_10_15	@cond_branch
	lsl	r0, r2, #0x2
	ldr	r1, .Lnp_fuwafuwa_10_2 + 4 @ .Lnp_fuwafuwa_10_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_fuwafuwa_10_3:
	.align	2, 0
.Lnp_fuwafuwa_10_2:
	.word	NmiInc
	.word	.Lnp_fuwafuwa_10_4
.Lnp_fuwafuwa_10_4:
	.word	.Lnp_fuwafuwa_10_9
	.word	.Lnp_fuwafuwa_10_8
	.word	.Lnp_fuwafuwa_10_8
	.word	.Lnp_fuwafuwa_10_8
	.word	.Lnp_fuwafuwa_10_9
	.word	.Lnp_fuwafuwa_10_11
	.word	.Lnp_fuwafuwa_10_11
	.word	.Lnp_fuwafuwa_10_12
.Lnp_fuwafuwa_10_8:
	mov	r0, #0x1
	b	.Lnp_fuwafuwa_10_15
.Lnp_fuwafuwa_10_9:
	mov	r0, #0x0
	b	.Lnp_fuwafuwa_10_15
.Lnp_fuwafuwa_10_11:
	mov	r0, #0x1
	neg	r0, r0
	b	.Lnp_fuwafuwa_10_15
.Lnp_fuwafuwa_10_12:
	mov	r0, #0x1
	neg	r0, r0
.Lnp_fuwafuwa_10_15:
	pop	{r1}
	bx	r1
	thumb_func_end np_fuwafuwa_10
