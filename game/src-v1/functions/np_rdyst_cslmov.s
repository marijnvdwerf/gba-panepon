	thumb_func_start np_rdyst_cslmov
np_rdyst_cslmov:
	push	{r4, lr}
	ldr	r4, .Lnp_rdyst_cslmov_5 @ NRam
	ldrb	r0, [r4, #0x13]
	cmp	r0, #0
	beq	.Lnp_rdyst_cslmov_4	@cond_branch
	ldr	r1, .Lnp_rdyst_cslmov_5 + 4 @ np_rdyst_dat_cslmov
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r2, [r0]
	ldrb	r1, [r0, #0x1]
	cmp	r2, #0
	beq	.Lnp_rdyst_cslmov_2	@cond_branch
	ldr	r0, .Lnp_rdyst_cslmov_5 + 8 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	beq	.Lnp_rdyst_cslmov_3	@cond_branch
	add	r0, r2, #0
	bl	np_csl_pt_sml
.Lnp_rdyst_cslmov_3:
	ldrb	r0, [r4, #0x13]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x13]
	b	.Lnp_rdyst_cslmov_4
.Lnp_rdyst_cslmov_6:
	.align	2, 0
.Lnp_rdyst_cslmov_5:
	.word	NRam
	.word	np_rdyst_dat_cslmov
	.word	ARam
.Lnp_rdyst_cslmov_2:
	ldr	r0, .Lnp_rdyst_cslmov_8 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	beq	.Lnp_rdyst_cslmov_7	@cond_branch
	mov	r0, #0x2
	strb	r0, [r4]
	mov	r0, #0x6
	strh	r0, [r4, #0x2]
.Lnp_rdyst_cslmov_7:
	mov	r0, #0x1
	strb	r0, [r4, #0x4]
	strb	r2, [r4, #0x13]
.Lnp_rdyst_cslmov_4:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_rdyst_cslmov_9:
	.align	2, 0
.Lnp_rdyst_cslmov_8:
	.word	ARam
	thumb_func_end np_rdyst_cslmov
