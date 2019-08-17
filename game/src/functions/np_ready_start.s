	thumb_func_start np_ready_start
np_ready_start:
	push	{lr}
	ldr	r0, .Lnp_ready_start_2 @ NRam
	ldrb	r0, [r0, #0x9]
	cmp	r0, #0
	beq	.Lnp_ready_start_1	@cond_branch
	bl	np_ready_start_other
.Lnp_ready_start_1:
	pop	{r0}
	bx	r0
.Lnp_ready_start_3:
	.align	2, 0
.Lnp_ready_start_2:
	.word	NRam
	thumb_func_end np_ready_start
