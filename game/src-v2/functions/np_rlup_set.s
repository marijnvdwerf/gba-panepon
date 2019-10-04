	thumb_func_start np_rlup_set
np_rlup_set:
	push	{lr}
	ldr	r1, .Lnp_rlup_set_3 @ NRam
	ldr	r2, .Lnp_rlup_set_3 + 4 @ 0xaa9
	add	r0, r1, r2
	ldrb	r2, [r0]
	ldr	r0, .Lnp_rlup_set_3 + 8 @ ARam
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	add	r3, r1, #0
	cmp	r0, #0
	bne	.Lnp_rlup_set_2	@cond_branch
	cmp	r2, #0x31
	bls	.Lnp_rlup_set_2	@cond_branch
	mov	r2, #0x32
.Lnp_rlup_set_2:
	ldr	r1, .Lnp_rlup_set_3 + 12 @ GLV_ED_JoshoFrame
	lsl	r0, r2, #0x1
	add	r0, r0, r1
	ldrh	r1, [r0]
	ldr	r2, .Lnp_rlup_set_3 + 16 @ 0xaae
	add	r0, r3, r2
	strh	r1, [r0]
	ldr	r1, .Lnp_rlup_set_3 + 20 @ GLV_ED_LevelUp
	sub	r2, r2, #0x5
	add	r0, r3, r2
	ldrb	r0, [r0]
	add	r0, r0, r1
	ldrb	r1, [r0]
	add	r2, r2, #0x1
	add	r0, r3, r2
	strb	r1, [r0]
	pop	{r0}
	bx	r0
.Lnp_rlup_set_4:
	.align	2, 0
.Lnp_rlup_set_3:
	.word	NRam
	.word	0xaa9
	.word	ARam
	.word	GLV_ED_JoshoFrame
	.word	0xaae
	.word	GLV_ED_LevelUp
	thumb_func_end np_rlup_set
