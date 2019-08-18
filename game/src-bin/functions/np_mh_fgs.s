	thumb_func_start np_mh_fgs
np_mh_fgs:
	push	{r4, lr}
	add	r2, r0, #0
	mov	r0, #0x0
	strb	r0, [r2, #0x11]
	ldr	r4, .Lnp_mh_fgs_3 @ NRam
	ldr	r1, .Lnp_mh_fgs_3 + 4 @ 0x844
	add	r0, r4, r1
	ldrb	r1, [r0]
	mov	r3, #0x2
	add	r0, r3, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_mh_fgs_1	@cond_branch
	strb	r3, [r2, #0x11]
	b	.Lnp_mh_fgs_20
.Lnp_mh_fgs_4:
	.align	2, 0
.Lnp_mh_fgs_3:
	.word	NRam
	.word	0x844
.Lnp_mh_fgs_1:
	ldr	r1, .Lnp_mh_fgs_8 @ ARam
	add	r0, r1, #0
	add	r0, r0, #0x21
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_mh_fgs_20	@cond_branch
	ldr	r3, .Lnp_mh_fgs_8 + 4 @ 0xa85
	add	r0, r4, r3
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mh_fgs_20	@cond_branch
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_mh_fgs_19	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_mh_fgs_8 + 8 @ .Lnp_mh_fgs_10
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_mh_fgs_9:
	.align	2, 0
.Lnp_mh_fgs_8:
	.word	ARam
	.word	0xa85
	.word	.Lnp_mh_fgs_10
.Lnp_mh_fgs_10:
	.word	.Lnp_mh_fgs_19
	.word	.Lnp_mh_fgs_19
	.word	.Lnp_mh_fgs_19
	.word	.Lnp_mh_fgs_20
	.word	.Lnp_mh_fgs_20
	.word	.Lnp_mh_fgs_20
	.word	.Lnp_mh_fgs_20
	.word	.Lnp_mh_fgs_19
	.word	.Lnp_mh_fgs_19
	.word	.Lnp_mh_fgs_20
.Lnp_mh_fgs_19:
	ldrb	r1, [r2, #0x11]
	mov	r0, #0x1
	orr	r0, r0, r1
	strb	r0, [r2, #0x11]
.Lnp_mh_fgs_20:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_mh_fgs
