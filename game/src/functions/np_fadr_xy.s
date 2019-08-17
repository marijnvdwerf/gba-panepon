	thumb_func_start np_fadr_xy
np_fadr_xy:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, .Lnp_fadr_xy_1 @ NRam+0x154
	sub	r4, r4, r0
	lsr	r4, r4, #0x3
	ldr	r5, .Lnp_fadr_xy_1 + 4 @ np_fadr_xy_X
	add	r0, r4, #0
	mov	r1, #0x6
	bl	__modsi3
	str	r0, [r5]
	ldr	r5, .Lnp_fadr_xy_1 + 8 @ np_fadr_xy_Y
	add	r0, r4, #0
	mov	r1, #0x6
	bl	__divsi3
	str	r0, [r5]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_fadr_xy_2:
	.align	2, 0
.Lnp_fadr_xy_1:
	.word	NRam+0x154
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
	thumb_func_end np_fadr_xy
