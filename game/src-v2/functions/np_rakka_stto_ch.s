	thumb_func_start np_rakka_stto_ch
np_rakka_stto_ch:
	push	{lr}
	add	r2, r0, #0
	ldr	r3, .Lnp_rakka_stto_ch_7 @ NRam+0x154
	cmp	r2, r3
	bcc	.Lnp_rakka_stto_ch_1	@cond_branch
.Lnp_rakka_stto_ch_6:
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x1
	bne	.Lnp_rakka_stto_ch_5	@cond_branch
	ldrb	r0, [r2]
	add	r1, r0, #0
	cmp	r1, #0x9
	beq	.Lnp_rakka_stto_ch_5	@cond_branch
	cmp	r1, #0xa
	beq	.Lnp_rakka_stto_ch_5	@cond_branch
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bls	.Lnp_rakka_stto_ch_5	@cond_branch
	ldrb	r1, [r2, #0x4]
	mov	r0, #0x80
	orr	r0, r0, r1
	strb	r0, [r2, #0x4]
.Lnp_rakka_stto_ch_5:
	sub	r2, r2, #0x30
	cmp	r2, r3
	bcs	.Lnp_rakka_stto_ch_6	@cond_branch
.Lnp_rakka_stto_ch_1:
	pop	{r0}
	bx	r0
.Lnp_rakka_stto_ch_8:
	.align	2, 0
.Lnp_rakka_stto_ch_7:
	.word	NRam+0x154
	thumb_func_end np_rakka_stto_ch
