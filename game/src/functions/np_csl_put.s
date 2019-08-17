	thumb_func_start np_csl_put
np_csl_put:
	push	{lr}
	ldr	r0, .Lnp_csl_put_5 @ NRam
	ldrb	r0, [r0, #0x4]
	cmp	r0, #0x1
	beq	.Lnp_csl_put_1	@cond_branch
	cmp	r0, #0x1
	ble	.Lnp_csl_put_4	@cond_branch
	cmp	r0, #0x2
	beq	.Lnp_csl_put_7	@cond_branch
	b	.Lnp_csl_put_4
.Lnp_csl_put_6:
	.align	2, 0
.Lnp_csl_put_5:
	.word	NRam
.Lnp_csl_put_1:
	ldr	r0, .Lnp_csl_put_8 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnp_csl_put_7	@cond_branch
.Lnp_csl_put_4:
	bl	np_csl_pt_sb
.Lnp_csl_put_7:
	pop	{r0}
	bx	r0
.Lnp_csl_put_9:
	.align	2, 0
.Lnp_csl_put_8:
	.word	NmiInc
	thumb_func_end np_csl_put
