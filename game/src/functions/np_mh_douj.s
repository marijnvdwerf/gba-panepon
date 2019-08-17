	thumb_func_start np_mh_douj
np_mh_douj:
	push	{r4, r5, r6, lr}
	bl	np_mh_akis
	add	r4, r0, #0
	cmp	r4, #0
	beq	.Lnp_mh_douj_1	@cond_branch
	mov	r5, #0x0
	str	r5, [r4, #0x4]
	ldr	r6, .Lnp_mh_douj_5 @ NRam
	mov	r0, #0xc2
	lsl	r0, r0, #0x4
	add	r2, r6, r0
	ldr	r0, [r2]
	str	r0, [r4, #0x8]
	str	r5, [r4, #0xc]
	ldr	r1, .Lnp_mh_douj_5 + 4 @ 0x8c4
	add	r0, r6, r1
	ldrb	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_mh_douj_2	@cond_branch
	ldrb	r1, [r2]
	mov	r0, #0x0
	mov	r2, #0x0
	bl	np_ojmten_wt
.Lnp_mh_douj_2:
	add	r0, r4, #0
	bl	np_mh_fgs
	strb	r5, [r4, #0x12]
	strh	r5, [r4, #0x14]
	ldr	r1, .Lnp_mh_douj_5 + 8 @ 0x446
	add	r0, r6, r1
	ldrb	r0, [r0]
	mov	r2, #0x0
	cmp	r0, #0
	beq	.Lnp_mh_douj_4	@cond_branch
	ldr	r1, .Lnp_mh_douj_5 + 12 @ 0xc24
	add	r0, r6, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mh_douj_4	@cond_branch
	sub	r2, r2, #0xd
.Lnp_mh_douj_4:
	add	r0, r4, #0
	mov	r1, #0x0
	bl	np_mh_xys
.Lnp_mh_douj_1:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_mh_douj_6:
	.align	2, 0
.Lnp_mh_douj_5:
	.word	NRam
	.word	0x8c4
	.word	0x446
	.word	0xc24
	thumb_func_end np_mh_douj
