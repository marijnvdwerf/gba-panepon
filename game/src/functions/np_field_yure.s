	thumb_func_start np_field_yure
np_field_yure:
	push	{r4, lr}
	ldr	r4, .Lnp_field_yure_2 @ NRam
	ldr	r0, .Lnp_field_yure_2 + 4 @ 0xb39
	add	r1, r4, r0
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_field_yure_1	@cond_branch
	sub	r0, r0, #0x1
	mov	r3, #0x0
	strb	r0, [r1]
	ldr	r1, .Lnp_field_yure_2 + 8 @ 0xb3c
	add	r2, r4, r1
	ldr	r0, [r2]
	ldrb	r1, [r0]
	strb	r1, [r4, #0x6]
	sub	r0, r0, #0x1
	str	r0, [r2]
	ldr	r1, .Lnp_field_yure_2 + 12 @ 0xc37
	add	r0, r4, r1
	strb	r3, [r0]
.Lnp_field_yure_1:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_field_yure_3:
	.align	2, 0
.Lnp_field_yure_2:
	.word	NRam
	.word	0xb39
	.word	0xb3c
	.word	0xc37
	thumb_func_end np_field_yure
