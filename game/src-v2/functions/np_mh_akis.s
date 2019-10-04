	thumb_func_start np_mh_akis
np_mh_akis:
	push	{r4, lr}
	ldr	r1, .Lnp_mh_akis_3 @ NRam+0x684
	mov	r2, #0x10
	mov	r3, #0x1
	ldr	r0, .Lnp_mh_akis_3 + 4 @ 0x50c
	add	r4, r1, r0
.Lnp_mh_akis_5:
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_mh_akis_1	@cond_branch
	strb	r3, [r1]
	str	r1, [r4]
	add	r0, r1, #0
	b	.Lnp_mh_akis_2
.Lnp_mh_akis_4:
	.align	2, 0
.Lnp_mh_akis_3:
	.word	NRam+0x684
	.word	0x50c
.Lnp_mh_akis_1:
	sub	r2, r2, #0x1
	add	r1, r1, #0x1c
	cmp	r2, #0
	bne	.Lnp_mh_akis_5	@cond_branch
	mov	r0, #0x0
.Lnp_mh_akis_2:
	pop	{r4}
	pop	{r1}
	bx	r1
	thumb_func_end np_mh_akis
