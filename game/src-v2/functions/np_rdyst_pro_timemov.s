	thumb_func_start np_rdyst_pro_timemov
np_rdyst_pro_timemov:
	push	{r4, lr}
	ldr	r1, .Lnp_rdyst_pro_timemov_3 @ NRam
	ldrb	r0, [r1, #0x17]
	sub	r0, r0, #0x1
	add	r3, r1, #0
	cmp	r0, #0x5
	bls	.Lnp_rdyst_pro_timemov_1	@cond_branch
	b	.Lnp_rdyst_pro_timemov_24
.Lnp_rdyst_pro_timemov_1:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_rdyst_pro_timemov_3 + 4 @ .Lnp_rdyst_pro_timemov_5
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_rdyst_pro_timemov_4:
	.align	2, 0
.Lnp_rdyst_pro_timemov_3:
	.word	NRam
	.word	.Lnp_rdyst_pro_timemov_5
.Lnp_rdyst_pro_timemov_5:
	.word	.Lnp_rdyst_pro_timemov_6
	.word	.Lnp_rdyst_pro_timemov_7
	.word	.Lnp_rdyst_pro_timemov_8
	.word	.Lnp_rdyst_pro_timemov_9
	.word	.Lnp_rdyst_pro_timemov_10
	.word	.Lnp_rdyst_pro_timemov_11
.Lnp_rdyst_pro_timemov_6:
	mov	r0, #0x39
	strb	r0, [r3, #0x16]
	ldrb	r0, [r3, #0x17]
	add	r0, r0, #0x1
	b	.Lnp_rdyst_pro_timemov_42
.Lnp_rdyst_pro_timemov_7:
	ldr	r0, .Lnp_rdyst_pro_timemov_17 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnp_rdyst_pro_timemov_13	@cond_branch
	ldr	r1, .Lnp_rdyst_pro_timemov_17 + 4 @ np_rdyst_dat_timemov
	ldrb	r0, [r1]
	ldrb	r1, [r1, #0x1]
	bl	nrdytmv_funputfun
.Lnp_rdyst_pro_timemov_13:
	ldr	r1, .Lnp_rdyst_pro_timemov_17 + 8 @ NRam
	ldrb	r0, [r1, #0x16]
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x16]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0
	beq	.Lnp_rdyst_pro_timemov_14	@cond_branch
	b	.Lnp_rdyst_pro_timemov_24
.Lnp_rdyst_pro_timemov_14:
	strb	r0, [r1, #0x16]
	ldrb	r0, [r1, #0x17]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x17]
	b	.Lnp_rdyst_pro_timemov_24
.Lnp_rdyst_pro_timemov_18:
	.align	2, 0
.Lnp_rdyst_pro_timemov_17:
	.word	NmiInc
	.word	np_rdyst_dat_timemov
	.word	NRam
.Lnp_rdyst_pro_timemov_8:
	ldr	r0, .Lnp_rdyst_pro_timemov_21 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x7
	beq	.Lnp_rdyst_pro_timemov_19	@cond_branch
	ldr	r1, .Lnp_rdyst_pro_timemov_21 + 4 @ np_rdyst_dat_timemov
	b	.Lnp_rdyst_pro_timemov_20
.Lnp_rdyst_pro_timemov_22:
	.align	2, 0
.Lnp_rdyst_pro_timemov_21:
	.word	ARam
	.word	np_rdyst_dat_timemov
.Lnp_rdyst_pro_timemov_19:
	ldr	r1, .Lnp_rdyst_pro_timemov_25 @ np_rdyst_dat_timemv2
.Lnp_rdyst_pro_timemov_20:
	ldrb	r0, [r3, #0x16]
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r2, [r0]
	ldrb	r1, [r0, #0x1]
	cmp	r2, #0
	beq	.Lnp_rdyst_pro_timemov_23	@cond_branch
	add	r0, r2, #0
	bl	nrdytmv_funputfun
	ldr	r1, .Lnp_rdyst_pro_timemov_25 + 4 @ NRam
	ldrb	r0, [r1, #0x16]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x16]
	b	.Lnp_rdyst_pro_timemov_24
.Lnp_rdyst_pro_timemov_26:
	.align	2, 0
.Lnp_rdyst_pro_timemov_25:
	.word	np_rdyst_dat_timemv2
	.word	NRam
.Lnp_rdyst_pro_timemov_23:
	ldrb	r0, [r3, #0x17]
	add	r0, r0, #0x1
	b	.Lnp_rdyst_pro_timemov_42
.Lnp_rdyst_pro_timemov_9:
	ldr	r0, .Lnp_rdyst_pro_timemov_32 @ ARam
	ldrb	r2, [r0, #0x15]
	cmp	r2, #0x1
	beq	.Lnp_rdyst_pro_timemov_28	@cond_branch
	cmp	r2, #0x1
	bgt	.Lnp_rdyst_pro_timemov_29	@cond_branch
	cmp	r2, #0
	beq	.Lnp_rdyst_pro_timemov_30	@cond_branch
	b	.Lnp_rdyst_pro_timemov_36
.Lnp_rdyst_pro_timemov_33:
	.align	2, 0
.Lnp_rdyst_pro_timemov_32:
	.word	ARam
.Lnp_rdyst_pro_timemov_29:
	cmp	r2, #0x2
	beq	.Lnp_rdyst_pro_timemov_34	@cond_branch
	b	.Lnp_rdyst_pro_timemov_36
.Lnp_rdyst_pro_timemov_30:
	ldr	r1, .Lnp_rdyst_pro_timemov_37 @ 0xa9c
	add	r0, r3, r1
	strb	r2, [r0]
	ldr	r4, .Lnp_rdyst_pro_timemov_37 + 4 @ 0xa9d
	add	r0, r3, r4
	strb	r2, [r0]
	ldr	r0, .Lnp_rdyst_pro_timemov_37 + 8 @ 0xa9e
	add	r1, r3, r0
	mov	r0, #0x2
	strb	r0, [r1]
	ldr	r1, .Lnp_rdyst_pro_timemov_37 + 12 @ 0xa9f
	add	r0, r3, r1
	strb	r2, [r0]
	b	.Lnp_rdyst_pro_timemov_36
.Lnp_rdyst_pro_timemov_38:
	.align	2, 0
.Lnp_rdyst_pro_timemov_37:
	.word	0xa9c
	.word	0xa9d
	.word	0xa9e
	.word	0xa9f
.Lnp_rdyst_pro_timemov_28:
	ldr	r4, .Lnp_rdyst_pro_timemov_40 @ 0xa9c
	add	r0, r3, r4
	mov	r1, #0x0
	strb	r1, [r0]
	add	r4, r4, #0x1
	add	r0, r3, r4
	strb	r1, [r0]
	add	r4, r4, #0x1
	add	r0, r3, r4
	strb	r2, [r0]
	ldr	r2, .Lnp_rdyst_pro_timemov_40 + 4 @ 0xa9f
	add	r0, r3, r2
	b	.Lnp_rdyst_pro_timemov_39
.Lnp_rdyst_pro_timemov_41:
	.align	2, 0
.Lnp_rdyst_pro_timemov_40:
	.word	0xa9c
	.word	0xa9f
.Lnp_rdyst_pro_timemov_34:
	ldr	r4, .Lnp_rdyst_pro_timemov_43 @ 0xa9c
	add	r0, r3, r4
	mov	r1, #0x0
	strb	r1, [r0]
	ldr	r0, .Lnp_rdyst_pro_timemov_43 + 4 @ 0xa9d
	add	r2, r3, r0
	mov	r0, #0x14
	strb	r0, [r2]
	ldr	r2, .Lnp_rdyst_pro_timemov_43 + 8 @ 0xa9e
	add	r0, r3, r2
	strb	r1, [r0]
	add	r4, r4, #0x3
	add	r0, r3, r4
.Lnp_rdyst_pro_timemov_39:
	strb	r1, [r0]
.Lnp_rdyst_pro_timemov_36:
	ldrb	r0, [r3, #0x17]
	add	r0, r0, #0x1
	b	.Lnp_rdyst_pro_timemov_42
.Lnp_rdyst_pro_timemov_44:
	.align	2, 0
.Lnp_rdyst_pro_timemov_43:
	.word	0xa9c
	.word	0xa9d
	.word	0xa9e
.Lnp_rdyst_pro_timemov_10:
	ldrb	r0, [r3, #0x17]
	add	r0, r0, #0x1
	strb	r0, [r3, #0x17]
.Lnp_rdyst_pro_timemov_11:
	mov	r0, #0x0
.Lnp_rdyst_pro_timemov_42:
	strb	r0, [r3, #0x17]
.Lnp_rdyst_pro_timemov_24:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_rdyst_pro_timemov
