	thumb_func_start np_rksch_pop
np_rksch_pop:
	push	{lr}
	ldr	r0, .Lnp_rksch_pop_3 @ NRam
	mov	r2, #0xd0
	lsl	r2, r2, #0x3
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r2, r0, #0
	cmp	r1, #0
	bne	.Lnp_rksch_pop_1	@cond_branch
.Lnp_rksch_pop_2:
	b	.Lnp_rksch_pop_2
.Lnp_rksch_pop_4:
	.align	2, 0
.Lnp_rksch_pop_3:
	.word	NRam
.Lnp_rksch_pop_1:
	mov	r3, #0xd0
	lsl	r3, r3, #0x3
	add	r1, r2, r3
	ldrb	r0, [r1]
	sub	r0, r0, #0x1
	strb	r0, [r1]
	ldrb	r0, [r1]
	lsl	r0, r0, #0x2
	mov	r3, #0xa9
	lsl	r3, r3, #0x3
	add	r1, r2, r3
	add	r0, r0, r1
	ldr	r0, [r0]
	pop	{r1}
	bx	r1
	thumb_func_end np_rksch_pop
