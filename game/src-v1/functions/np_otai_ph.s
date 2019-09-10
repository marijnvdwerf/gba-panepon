	thumb_func_start np_otai_ph
np_otai_ph:
	ldr	r2, .Lnp_otai_ph_2 @ NRam
	ldr	r0, .Lnp_otai_ph_2 + 4 @ 0xb03
	add	r1, r2, r0
	ldrb	r0, [r1]
	sub	r0, r0, #0x1
	mov	r3, #0x3f
	and	r0, r0, r3
	strb	r0, [r1]
	ldr	r1, .Lnp_otai_ph_2 + 8 @ 0xb04
	add	r2, r2, r1
	ldrb	r1, [r2]
	cmp	r1, r0
	bne	.Lnp_otai_ph_1	@cond_branch
	sub	r0, r1, #1
	and	r0, r0, r3
	strb	r0, [r2]
.Lnp_otai_ph_1:
	bx	lr
.Lnp_otai_ph_3:
	.align	2, 0
.Lnp_otai_ph_2:
	.word	NRam
	.word	0xb03
	.word	0xb04
	thumb_func_end np_otai_ph
