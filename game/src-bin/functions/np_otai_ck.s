	thumb_func_start np_otai_ck
np_otai_ck:
	ldr	r0, .Lnp_otai_ck_3 @ NRam
	ldr	r2, .Lnp_otai_ck_3 + 4 @ 0xb04
	add	r1, r0, r2
	sub	r2, r2, #0x1
	add	r0, r0, r2
	ldrb	r1, [r1]
	ldrb	r0, [r0]
	cmp	r1, r0
	bne	.Lnp_otai_ck_1	@cond_branch
	mov	r0, #0x1
	b	.Lnp_otai_ck_2
.Lnp_otai_ck_4:
	.align	2, 0
.Lnp_otai_ck_3:
	.word	NRam
	.word	0xb04
.Lnp_otai_ck_1:
	mov	r0, #0x0
.Lnp_otai_ck_2:
	bx	lr
	thumb_func_end np_otai_ck
