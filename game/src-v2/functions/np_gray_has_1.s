	thumb_func_start np_gray_has_1
np_gray_has_1:
	push	{lr}
	ldr	r0, .Lnp_gray_has_1_3 @ NRam
	ldr	r1, .Lnp_gray_has_1_3 + 4 @ 0xa8e
	add	r0, r0, r1
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	strb	r1, [r0]
	mov	r0, #0x1
	and	r1, r1, r0
	cmp	r1, #0
	beq	.Lnp_gray_has_1_1	@cond_branch
	bl	np_gray_has_0
	b	.Lnp_gray_has_1_2
.Lnp_gray_has_1_4:
	.align	2, 0
.Lnp_gray_has_1_3:
	.word	NRam
	.word	0xa8e
.Lnp_gray_has_1_1:
	bl	np_gray_has_2
.Lnp_gray_has_1_2:
	pop	{r0}
	bx	r0
	thumb_func_end np_gray_has_1
