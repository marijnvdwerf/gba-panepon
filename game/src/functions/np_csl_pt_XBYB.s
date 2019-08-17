	thumb_func_start np_csl_pt_XBYB
np_csl_pt_XBYB:
	push	{r4, r5, lr}
	add	r2, r0, #0
	add	r3, r1, #0
	ldr	r5, .Lnp_csl_pt_XBYB_1 @ NRam
	ldrb	r1, [r5]
	lsl	r0, r1, #0x3
	sub	r0, r0, r1
	lsl	r0, r0, #0x1
	mov	r1, #0x2
	ldsh	r4, [r5, r1]
	mov	r1, #0xd
	mul	r1, r1, r4
	ldrb	r4, [r5, #0x6]
	sub	r1, r1, r4
	ldrb	r4, [r5, #0x5]
	sub	r1, r1, r4
	add	r0, r0, #0x5c
	add	r1, r1, #0x4
	bl	np_csl_pt_PXPY_XBYB
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_csl_pt_XBYB_2:
	.align	2, 0
.Lnp_csl_pt_XBYB_1:
	.word	NRam
	thumb_func_end np_csl_pt_XBYB
