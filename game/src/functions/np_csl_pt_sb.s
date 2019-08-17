	thumb_func_start np_csl_pt_sb
np_csl_pt_sb:
	push	{lr}
	ldr	r0, .Lnp_csl_pt_sb_3 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_csl_pt_sb_1	@cond_branch
	mov	r0, #0xe
	mov	r1, #0xf
	bl	np_csl_pt_XBYB
	b	.Lnp_csl_pt_sb_2
.Lnp_csl_pt_sb_4:
	.align	2, 0
.Lnp_csl_pt_sb_3:
	.word	NmiInc
.Lnp_csl_pt_sb_1:
	mov	r0, #0xd
	mov	r1, #0xd
	bl	np_csl_pt_XBYB
.Lnp_csl_pt_sb_2:
	pop	{r0}
	bx	r0
	thumb_func_end np_csl_pt_sb
