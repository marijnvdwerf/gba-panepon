	thumb_func_start np_otai_tr
np_otai_tr:
	ldr	r0, .Lnp_otai_tr_1 @ NRam
	ldr	r2, .Lnp_otai_tr_1 + 4 @ 0xb03
	add	r1, r0, r2
	sub	r2, r2, #0x40
	add	r0, r0, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bx	lr
.Lnp_otai_tr_2:
	.align	2, 0
.Lnp_otai_tr_1:
	.word	NRam
	.word	0xb03
	thumb_func_end np_otai_tr
