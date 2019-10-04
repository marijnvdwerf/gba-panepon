	thumb_func_start np_mh_rens
np_mh_rens:
	push	{r4, r5, r6, lr}
	bl	np_mh_akis
	add	r4, r0, #0
	cmp	r4, #0
	beq	.Lnp_mh_rens_1	@cond_branch
	ldr	r6, .Lnp_mh_rens_3 @ NRam
	ldr	r0, .Lnp_mh_rens_3 + 4 @ 0xba8
	add	r2, r6, r0
	ldr	r0, [r2]
	str	r0, [r4, #0x4]
	mov	r5, #0x0
	str	r5, [r4, #0x8]
	str	r5, [r4, #0xc]
	ldr	r1, .Lnp_mh_rens_3 + 8 @ 0x844
	add	r0, r6, r1
	ldrb	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_mh_rens_2	@cond_branch
	ldrb	r0, [r2]
	mov	r1, #0x0
	mov	r2, #0x0
	bl	np_ojmten_wt
	ldr	r1, .Lnp_mh_rens_3 + 12 @ 0xb8e
	add	r0, r6, r1
	ldrb	r0, [r0]
	strb	r0, [r4, #0x10]
.Lnp_mh_rens_2:
	add	r0, r4, #0
	bl	np_mh_fgs
	strb	r5, [r4, #0x12]
	strh	r5, [r4, #0x14]
	add	r0, r4, #0
	mov	r1, #0x0
	mov	r2, #0x0
	bl	np_mh_xys
.Lnp_mh_rens_1:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_mh_rens_4:
	.align	2, 0
.Lnp_mh_rens_3:
	.word	NRam
	.word	0xba8
	.word	0x844
	.word	0xb8e
	thumb_func_end np_mh_rens
