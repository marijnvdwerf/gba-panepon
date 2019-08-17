	thumb_func_start np_mh_bikk
np_mh_bikk:
	push	{r4, r5, r6, lr}
	bl	np_mh_akis
	add	r4, r0, #0
	cmp	r4, #0
	beq	.Lnp_mh_bikk_1	@cond_branch
	mov	r5, #0x0
	str	r5, [r4, #0x4]
	str	r5, [r4, #0x8]
	ldr	r6, .Lnp_mh_bikk_6 @ NRam
	ldr	r0, .Lnp_mh_bikk_6 + 4 @ 0xc28
	add	r2, r6, r0
	ldr	r0, [r2]
	str	r0, [r4, #0xc]
	ldr	r1, .Lnp_mh_bikk_6 + 8 @ 0x8c4
	add	r0, r6, r1
	ldrb	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_mh_bikk_2	@cond_branch
	ldrb	r2, [r2]
	mov	r0, #0x0
	mov	r1, #0x0
	bl	np_ojmten_wt
.Lnp_mh_bikk_2:
	add	r0, r4, #0
	bl	np_mh_fgs
	strb	r5, [r4, #0x12]
	strh	r5, [r4, #0x14]
	ldr	r1, .Lnp_mh_bikk_6 + 12 @ 0xc24
	add	r0, r6, r1
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_mh_bikk_3	@cond_branch
	sub	r1, r1, #0x4
	add	r0, r6, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mh_bikk_4	@cond_branch
.Lnp_mh_bikk_3:
	mov	r1, #0x4
	neg	r1, r1
	mov	r2, #0x4
	b	.Lnp_mh_bikk_5
.Lnp_mh_bikk_7:
	.align	2, 0
.Lnp_mh_bikk_6:
	.word	NRam
	.word	0xc28
	.word	0x8c4
	.word	0xc24
.Lnp_mh_bikk_4:
	mov	r1, #0x0
	mov	r2, #0x0
.Lnp_mh_bikk_5:
	add	r0, r4, #0
	bl	np_mh_xys
.Lnp_mh_bikk_1:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end np_mh_bikk
