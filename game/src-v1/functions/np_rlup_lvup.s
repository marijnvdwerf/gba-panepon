	thumb_func_start np_rlup_lvup
np_rlup_lvup:
	push	{r4, lr}
	ldr	r0, .Lnp_rlup_lvup_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_rlup_lvup_12	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_rlup_lvup_2 + 4 @ .Lnp_rlup_lvup_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_rlup_lvup_3:
	.align	2, 0
.Lnp_rlup_lvup_2:
	.word	ARam
	.word	.Lnp_rlup_lvup_4
.Lnp_rlup_lvup_4:
	.word	.Lnp_rlup_lvup_12
	.word	.Lnp_rlup_lvup_12
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_12
	.word	.Lnp_rlup_lvup_15
	.word	.Lnp_rlup_lvup_15
.Lnp_rlup_lvup_12:
	ldr	r2, .Lnp_rlup_lvup_18 @ NRam
	ldr	r0, .Lnp_rlup_lvup_18 + 4 @ 0xaa6
	add	r1, r2, r0
	ldrb	r0, [r1]
	sub	r0, r0, #0x1
	strb	r0, [r1]
	lsl	r0, r0, #0x18
	add	r4, r2, #0
	cmp	r0, #0
	bne	.Lnp_rlup_lvup_15	@cond_branch
	ldr	r1, .Lnp_rlup_lvup_18 + 8 @ 0xaa5
	add	r0, r4, r1
	ldrb	r1, [r0]
	cmp	r1, #0x63
	bge	.Lnp_rlup_lvup_16	@cond_branch
	add	r1, r1, #0x1
	b	.Lnp_rlup_lvup_17
.Lnp_rlup_lvup_19:
	.align	2, 0
.Lnp_rlup_lvup_18:
	.word	NRam
	.word	0xaa6
	.word	0xaa5
.Lnp_rlup_lvup_16:
	mov	r1, #0x63
.Lnp_rlup_lvup_17:
	ldr	r2, .Lnp_rlup_lvup_20 @ 0xaa5
	add	r0, r4, r2
	strb	r1, [r0]
	bl	np_rlup_set
	add	r1, r4, #0
	add	r1, r1, #0x22
	mov	r0, #0xb4
	strb	r0, [r1]
.Lnp_rlup_lvup_15:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_rlup_lvup_21:
	.align	2, 0
.Lnp_rlup_lvup_20:
	.word	0xaa5
	thumb_func_end np_rlup_lvup
