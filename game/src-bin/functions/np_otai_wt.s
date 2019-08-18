	thumb_func_start np_otai_wt
np_otai_wt:
	push	{r4, r5, r6, lr}
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	ldr	r4, .Lnp_otai_wt_2 @ NRam
	ldr	r0, .Lnp_otai_wt_2 + 4 @ 0xb04
	add	r5, r4, r0
	ldrb	r0, [r5]
	bl	inc_otai_idx
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	ldr	r2, .Lnp_otai_wt_2 + 8 @ 0xb03
	add	r0, r4, r2
	ldrb	r0, [r0]
	cmp	r1, r0
	beq	.Lnp_otai_wt_1	@cond_branch
	sub	r2, r2, #0x40
	add	r0, r4, r2
	ldrb	r2, [r5]
	add	r0, r0, r2
	strb	r6, [r0]
	strb	r1, [r5]
.Lnp_otai_wt_1:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_otai_wt_3:
	.align	2, 0
.Lnp_otai_wt_2:
	.word	NRam
	.word	0xb04
	.word	0xb03
	thumb_func_end np_otai_wt
