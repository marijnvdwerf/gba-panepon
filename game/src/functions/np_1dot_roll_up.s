	thumb_func_start np_1dot_roll_up
np_1dot_roll_up:
	push	{lr}
	ldr	r1, .Lnp_1dot_roll_up_3 @ NRam
	ldrb	r0, [r1, #0x5]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x5]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xc
	bls	.Lnp_1dot_roll_up_1	@cond_branch
	mov	r0, #0x0
	strb	r0, [r1, #0x5]
.Lnp_1dot_roll_up_1:
	ldrb	r0, [r1, #0x5]
	cmp	r0, #0
	bne	.Lnp_1dot_roll_up_2	@cond_branch
	bl	np_mem_roll_up
.Lnp_1dot_roll_up_2:
	pop	{r0}
	bx	r0
.Lnp_1dot_roll_up_4:
	.align	2, 0
.Lnp_1dot_roll_up_3:
	.word	NRam
	thumb_func_end np_1dot_roll_up
