	thumb_func_start np_ready_start_other
np_ready_start_other:
	push	{r4, r5, lr}
	ldr	r0, .Lnp_ready_start_other_2 @ NRam
	ldrb	r2, [r0, #0x9]
	add	r5, r0, #0
	cmp	r2, #0xc
	bhi	.Lnp_ready_start_other_17	@cond_branch
	lsl	r0, r2, #0x2
	ldr	r1, .Lnp_ready_start_other_2 + 4 @ .Lnp_ready_start_other_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_ready_start_other_3:
	.align	2, 0
.Lnp_ready_start_other_2:
	.word	NRam
	.word	.Lnp_ready_start_other_4
.Lnp_ready_start_other_4:
	.word	.Lnp_ready_start_other_17
	.word	.Lnp_ready_start_other_6
	.word	.Lnp_ready_start_other_7
	.word	.Lnp_ready_start_other_8
	.word	.Lnp_ready_start_other_9
	.word	.Lnp_ready_start_other_10
	.word	.Lnp_ready_start_other_11
	.word	.Lnp_ready_start_other_12
	.word	.Lnp_ready_start_other_13
	.word	.Lnp_ready_start_other_14
	.word	.Lnp_ready_start_other_15
	.word	.Lnp_ready_start_other_16
	.word	.Lnp_ready_start_other_17
.Lnp_ready_start_other_17:
	mov	r0, #0x0
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_6:
	ldr	r0, .Lnp_ready_start_other_21 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bls	.Lnp_ready_start_other_19	@cond_branch
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_19:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_ready_start_other_21 + 4 @ .Lnp_ready_start_other_23
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_ready_start_other_22:
	.align	2, 0
.Lnp_ready_start_other_21:
	.word	ARam
	.word	.Lnp_ready_start_other_23
.Lnp_ready_start_other_23:
	.word	.Lnp_ready_start_other_32
	.word	.Lnp_ready_start_other_31
	.word	.Lnp_ready_start_other_27
	.word	.Lnp_ready_start_other_27
	.word	.Lnp_ready_start_other_32
	.word	.Lnp_ready_start_other_32
	.word	.Lnp_ready_start_other_32
	.word	.Lnp_ready_start_other_31
	.word	.Lnp_ready_start_other_32
	.word	.Lnp_ready_start_other_33
.Lnp_ready_start_other_27:
	mov	r0, #0x2
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_31:
	mov	r0, #0x4
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_32:
	mov	r0, #0x6
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_33:
	mov	r0, #0xa
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_7:
	mov	r0, #0x1
	strb	r0, [r5, #0xf]
	ldrb	r0, [r5, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r5, #0x9]
.Lnp_ready_start_other_8:
	bl	np_rdyst_pro_stage
	ldr	r1, .Lnp_ready_start_other_39 @ NRam
	ldrb	r0, [r1, #0xf]
	b	.Lnp_ready_start_other_38
.Lnp_ready_start_other_40:
	.align	2, 0
.Lnp_ready_start_other_39:
	.word	NRam
.Lnp_ready_start_other_9:
	mov	r0, #0x1
	strb	r0, [r5, #0x17]
	ldrb	r0, [r5, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r5, #0x9]
.Lnp_ready_start_other_10:
	bl	np_rdyst_pro_timemov
	ldr	r1, .Lnp_ready_start_other_43 @ NRam
	ldrb	r0, [r1, #0x17]
.Lnp_ready_start_other_38:
	cmp	r0, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	mov	r0, #0x6
	strb	r0, [r1, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_44:
	.align	2, 0
.Lnp_ready_start_other_43:
	.word	NRam
.Lnp_ready_start_other_11:
	mov	r1, #0x0
	mov	r0, #0x1
	strb	r0, [r5, #0x13]
	strb	r0, [r5, #0x14]
	strb	r1, [r5, #0x15]
	ldrb	r0, [r5, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r5, #0x9]
	b	.Lnp_ready_start_other_55
.Lnp_ready_start_other_12:
	bl	np_rdyst_cslmov
	bl	np_rdyst_ready
	ldr	r1, .Lnp_ready_start_other_53 @ NRam
	ldrb	r0, [r1, #0x13]
	cmp	r0, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	mov	r0, #0x1
	strb	r0, [r1, #0x15]
	ldrb	r0, [r1, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x9]
	add	r5, r1, #0
.Lnp_ready_start_other_13:
	ldrb	r0, [r5, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r5, #0x9]
.Lnp_ready_start_other_14:
	bl	np_rdyst_cslmov
	bl	np_rdyst_ready
	bl	np_rdyst_321
	ldr	r1, .Lnp_ready_start_other_53 @ NRam
	ldrb	r0, [r1, #0x13]
	cmp	r0, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	ldrb	r0, [r1, #0x14]
	cmp	r0, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	ldrb	r0, [r1, #0x15]
	cmp	r0, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	ldrb	r0, [r1, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x9]
	add	r5, r1, #0
.Lnp_ready_start_other_15:
	ldr	r0, .Lnp_ready_start_other_53 + 4 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bne	.Lnp_ready_start_other_50	@cond_branch
	mov	r0, #0x2
	strb	r0, [r5]
	mov	r0, #0x6
	strh	r0, [r5, #0x2]
.Lnp_ready_start_other_50:
	mov	r0, #0x0
	mov	r1, #0x1
	strb	r1, [r5, #0x8]
	strb	r0, [r5, #0x4]
	ldr	r2, .Lnp_ready_start_other_53 + 8 @ 0xb1c
	add	r0, r5, r2
	strb	r1, [r0]
	mov	r0, #0x3c
	strb	r0, [r5, #0xf]
	ldrb	r0, [r5, #0x9]
	add	r0, r0, #0x1
	strb	r0, [r5, #0x9]
.Lnp_ready_start_other_16:
	ldrb	r0, [r5, #0xf]
	cmp	r0, #0
	ble	.Lnp_ready_start_other_51	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnp_ready_start_other_52
.Lnp_ready_start_other_54:
	.align	2, 0
.Lnp_ready_start_other_53:
	.word	NRam
	.word	ARam
	.word	0xb1c
.Lnp_ready_start_other_51:
	mov	r0, #0x0
.Lnp_ready_start_other_52:
	strb	r0, [r5, #0xf]
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	bne	.Lnp_ready_start_other_55	@cond_branch
	bl	np_game_bgm_normal
	ldr	r0, .Lnp_ready_start_other_56 @ 0xb08
	add	r1, r5, r0
	mov	r0, #0x1
	strb	r0, [r1]
	strb	r4, [r5, #0x9]
.Lnp_ready_start_other_55:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_ready_start_other_57:
	.align	2, 0
.Lnp_ready_start_other_56:
	.word	0xb08
	thumb_func_end np_ready_start_other
