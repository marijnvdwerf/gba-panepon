	thumb_func_start np_fuwafuwa_20
np_fuwafuwa_20:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, .Lnp_fuwafuwa_20_3 @ NmiInc
	ldr	r0, [r0]
	add	r1, r0, r1
	cmp	r2, #0
	ble	.Lnp_fuwafuwa_20_1	@cond_branch
	ASR	r1, r2
	b	.Lnp_fuwafuwa_20_5
.Lnp_fuwafuwa_20_4:
	.align	2, 0
.Lnp_fuwafuwa_20_3:
	.word	NmiInc
.Lnp_fuwafuwa_20_1:
	cmp	r2, #0
	bge	.Lnp_fuwafuwa_20_5	@cond_branch
	neg	r2, r2
	LSL	r1, r2
.Lnp_fuwafuwa_20_5:
	mov	r0, #0x1f
	and	r1, r1, r0
	ldr	r0, .Lnp_fuwafuwa_20_6 @ np_fuwafuwa_data
	add	r0, r1, r0
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	pop	{r1}
	bx	r1
.Lnp_fuwafuwa_20_7:
	.align	2, 0
.Lnp_fuwafuwa_20_6:
	.word	np_fuwafuwa_data
	thumb_func_end np_fuwafuwa_20
