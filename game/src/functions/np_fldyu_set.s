	thumb_func_start np_fldyu_set
np_fldyu_set:
	push	{r4, lr}
	add	r4, r0, #0
	lsl	r1, r1, #0x18
	lsr	r2, r1, #0x18
	ldr	r1, .Lnp_fldyu_set_2 @ NRam
	ldr	r0, .Lnp_fldyu_set_2 + 4 @ 0xb39
	add	r3, r1, r0
	ldrb	r0, [r3]
	cmp	r0, r2
	bhi	.Lnp_fldyu_set_1	@cond_branch
	strb	r2, [r3]
	ldr	r0, .Lnp_fldyu_set_2 + 8 @ 0xb3c
	add	r1, r1, r0
	add	r0, r4, r2
	sub	r0, r0, #0x1
	str	r0, [r1]
.Lnp_fldyu_set_1:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_fldyu_set_3:
	.align	2, 0
.Lnp_fldyu_set_2:
	.word	NRam
	.word	0xb39
	.word	0xb3c
	thumb_func_end np_fldyu_set
