	thumb_func_start np_rksch_push
np_rksch_push:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r0, .Lnp_rksch_push_3 @ NRam
	mov	r2, #0xd0
	lsl	r2, r2, #0x3
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r3, r0, #0
	cmp	r1, #0x4d
	bls	.Lnp_rksch_push_1	@cond_branch
.Lnp_rksch_push_2:
	b	.Lnp_rksch_push_2
.Lnp_rksch_push_4:
	.align	2, 0
.Lnp_rksch_push_3:
	.word	NRam
.Lnp_rksch_push_1:
	mov	r5, #0xd0
	lsl	r5, r5, #0x3
	add	r2, r3, r5
	ldrb	r0, [r2]
	lsl	r0, r0, #0x2
	mov	r5, #0xa9
	lsl	r5, r5, #0x3
	add	r1, r3, r5
	add	r0, r0, r1
	str	r4, [r0]
	ldrb	r0, [r2]
	add	r0, r0, #0x1
	strb	r0, [r2]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end np_rksch_push
