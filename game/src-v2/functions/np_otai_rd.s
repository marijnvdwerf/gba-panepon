	thumb_func_start np_otai_rd
np_otai_rd:
	push	{r4, lr}
	ldr	r2, .Lnp_otai_rd_3 @ NRam
	ldr	r1, .Lnp_otai_rd_3 + 4 @ 0xb08
	add	r0, r2, r1
	ldr	r3, .Lnp_otai_rd_3 + 8 @ 0xb07
	add	r4, r2, r3
	ldrb	r0, [r0]
	ldrb	r1, [r4]
	cmp	r0, r1
	beq	.Lnp_otai_rd_1	@cond_branch
	sub	r3, r3, #0x40
	add	r0, r2, r3
	add	r0, r0, r1
	ldrb	r1, [r0]
	add	r3, r3, #0x42
	add	r0, r2, r3
	strb	r1, [r0]
	ldrb	r0, [r4]
	bl	inc_otai_idx
	strb	r0, [r4]
	mov	r0, #0x0
	b	.Lnp_otai_rd_2
.Lnp_otai_rd_4:
	.align	2, 0
.Lnp_otai_rd_3:
	.word	NRam
	.word	0xb08
	.word	0xb07
.Lnp_otai_rd_1:
	mov	r0, #0x1
.Lnp_otai_rd_2:
	pop	{r4}
	pop	{r1}
	bx	r1
	thumb_func_end np_otai_rd
