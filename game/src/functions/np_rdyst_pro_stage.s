	thumb_func_start np_rdyst_pro_stage
np_rdyst_pro_stage:
	push	{r4, r5, lr}
	ldr	r1, .Lnp_rdyst_pro_stage_2 @ NRam
	ldrb	r0, [r1, #0xf]
	sub	r0, r0, #0x1
	add	r5, r1, #0
	cmp	r0, #0x4
	bhi	.Lnp_rdyst_pro_stage_17	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_rdyst_pro_stage_2 + 4 @ .Lnp_rdyst_pro_stage_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_rdyst_pro_stage_3:
	.align	2, 0
.Lnp_rdyst_pro_stage_2:
	.word	NRam
	.word	.Lnp_rdyst_pro_stage_4
.Lnp_rdyst_pro_stage_4:
	.word	.Lnp_rdyst_pro_stage_5
	.word	.Lnp_rdyst_pro_stage_6
	.word	.Lnp_rdyst_pro_stage_7
	.word	.Lnp_rdyst_pro_stage_8
	.word	.Lnp_rdyst_pro_stage_9
.Lnp_rdyst_pro_stage_5:
	mov	r0, #0x0
	strb	r0, [r5, #0xa]
	ldrb	r0, [r5, #0xf]
	add	r0, r0, #0x1
	b	.Lnp_rdyst_pro_stage_15
.Lnp_rdyst_pro_stage_6:
	ldr	r4, .Lnp_rdyst_pro_stage_13 @ np_rdyst_dat_stage
	ldrb	r0, [r5, #0xa]
	add	r0, r0, r4
	ldrb	r0, [r0]
	bl	np_rdyst_pro_stage_stage_obj_put
	ldrb	r0, [r5, #0xa]
	add	r1, r0, #1
	add	r4, r1, r4
	ldrb	r0, [r4]
	cmp	r0, #0xaa
	beq	.Lnp_rdyst_pro_stage_11	@cond_branch
	strb	r1, [r5, #0xa]
	b	.Lnp_rdyst_pro_stage_17
.Lnp_rdyst_pro_stage_14:
	.align	2, 0
.Lnp_rdyst_pro_stage_13:
	.word	np_rdyst_dat_stage
.Lnp_rdyst_pro_stage_11:
	mov	r0, #0x3c
	strb	r0, [r5, #0xa]
	ldrb	r0, [r5, #0xf]
	add	r0, r0, #0x1
	b	.Lnp_rdyst_pro_stage_15
.Lnp_rdyst_pro_stage_7:
	mov	r0, #0x24
	bl	np_rdyst_pro_stage_stage_obj_put
	ldr	r1, .Lnp_rdyst_pro_stage_18 @ NRam
	ldrb	r0, [r1, #0xa]
	sub	r0, r0, #0x1
	strb	r0, [r1, #0xa]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.Lnp_rdyst_pro_stage_17	@cond_branch
	ldrb	r0, [r1, #0xf]
	add	r0, r0, #0x1
	strb	r0, [r1, #0xf]
	b	.Lnp_rdyst_pro_stage_17
.Lnp_rdyst_pro_stage_19:
	.align	2, 0
.Lnp_rdyst_pro_stage_18:
	.word	NRam
.Lnp_rdyst_pro_stage_8:
	ldrb	r0, [r5, #0xf]
	add	r0, r0, #0x1
	strb	r0, [r5, #0xf]
.Lnp_rdyst_pro_stage_9:
	mov	r0, #0x0
.Lnp_rdyst_pro_stage_15:
	strb	r0, [r5, #0xf]
.Lnp_rdyst_pro_stage_17:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end np_rdyst_pro_stage
