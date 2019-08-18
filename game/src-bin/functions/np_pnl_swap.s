	thumb_func_start np_pnl_swap
np_pnl_swap:
	push	{r4, r5, lr}
	ldr	r1, .Lnp_pnl_swap_6 @ NRam
	mov	r2, #0xa7
	lsl	r2, r2, #0x4
	add	r0, r1, r2
	ldrb	r0, [r0]
	add	r4, r1, #0
	cmp	r0, #0x1
	beq	.Lnp_pnl_swap_1	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnp_pnl_swap_2	@cond_branch
	cmp	r0, #0
	bne	.Lnp_pnl_swap_3	@cond_branch
	b	.Lnp_pnl_swap_26
.Lnp_pnl_swap_3:
	b	.Lnp_pnl_swap_8
.Lnp_pnl_swap_7:
	.align	2, 0
.Lnp_pnl_swap_6:
	.word	NRam
.Lnp_pnl_swap_2:
	cmp	r0, #0x2
	bne	.Lnp_pnl_swap_8	@cond_branch
	b	.Lnp_pnl_swap_9
.Lnp_pnl_swap_8:
	mov	r3, #0xa7
	lsl	r3, r3, #0x4
	add	r1, r4, r3
	mov	r0, #0x0
	strb	r0, [r1]
	b	.Lnp_pnl_swap_26
.Lnp_pnl_swap_1:
	ldr	r3, .Lnp_pnl_swap_16 @ np_pictuescr
	ldr	r5, .Lnp_pnl_swap_16 + 4 @ 0xa74
	add	r0, r4, r5
	ldr	r2, [r0]
	ldrb	r0, [r2]
	lsl	r0, r0, #0x1
	add	r0, r0, r3
	ldrh	r1, [r0]
	add	r5, r5, #0xc
	add	r0, r4, r5
	strh	r1, [r0]
	ldrb	r0, [r2, #0x8]
	lsl	r0, r0, #0x1
	add	r0, r0, r3
	ldrh	r1, [r0]
	ldr	r2, .Lnp_pnl_swap_16 + 8 @ 0xa82
	add	r0, r4, r2
	strh	r1, [r0]
	ldr	r3, .Lnp_pnl_swap_16 + 12 @ 0xa5b
	add	r0, r4, r3
	ldrb	r0, [r0]
	cmp	r0, #0x8
	beq	.Lnp_pnl_swap_11	@cond_branch
	cmp	r0, #0x8
	ble	.Lnp_pnl_swap_12	@cond_branch
	cmp	r0, #0xc
	beq	.Lnp_pnl_swap_13	@cond_branch
	cmp	r0, #0x10
	beq	.Lnp_pnl_swap_14	@cond_branch
.Lnp_pnl_swap_12:
	ldr	r5, .Lnp_pnl_swap_16 + 16 @ 0xa78
	add	r1, r4, r5
	ldr	r0, .Lnp_pnl_swap_16 + 20 @ nswp_04_frame
	b	.Lnp_pnl_swap_21
.Lnp_pnl_swap_17:
	.align	2, 0
.Lnp_pnl_swap_16:
	.word	np_pictuescr
	.word	0xa74
	.word	0xa82
	.word	0xa5b
	.word	0xa78
	.word	nswp_04_frame
.Lnp_pnl_swap_11:
	ldr	r0, .Lnp_pnl_swap_19 @ 0xa78
	add	r1, r4, r0
	ldr	r0, .Lnp_pnl_swap_19 + 4 @ nswp_08_frame
	b	.Lnp_pnl_swap_21
.Lnp_pnl_swap_20:
	.align	2, 0
.Lnp_pnl_swap_19:
	.word	0xa78
	.word	nswp_08_frame
.Lnp_pnl_swap_13:
	ldr	r2, .Lnp_pnl_swap_22 @ 0xa78
	add	r1, r4, r2
	ldr	r0, .Lnp_pnl_swap_22 + 4 @ nswp_0c_frame
	b	.Lnp_pnl_swap_21
.Lnp_pnl_swap_23:
	.align	2, 0
.Lnp_pnl_swap_22:
	.word	0xa78
	.word	nswp_0c_frame
.Lnp_pnl_swap_14:
	ldr	r3, .Lnp_pnl_swap_27 @ 0xa78
	add	r1, r4, r3
	ldr	r0, .Lnp_pnl_swap_27 + 4 @ nswp_10_frame
.Lnp_pnl_swap_21:
	str	r0, [r1]
	ldr	r5, .Lnp_pnl_swap_27 + 8 @ 0xa71
	add	r0, r4, r5
	ldrb	r1, [r0]
	lsl	r0, r1, #0x3
	sub	r0, r0, r1
	lsl	r0, r0, #0x1
	add	r2, r0, #0
	add	r2, r2, #0x5c
	ldr	r3, .Lnp_pnl_swap_27 + 12 @ 0xa7c
	add	r1, r4, r3
	strb	r2, [r1]
	add	r0, r0, #0x6a
	add	r5, r5, #0xc
	add	r1, r4, r5
	strb	r0, [r1]
	ldr	r1, .Lnp_pnl_swap_27 + 16 @ 0xa72
	add	r0, r4, r1
	ldrb	r1, [r0]
	mov	r0, #0xd
	mul	r0, r0, r1
	add	r0, r0, #0x4
	ldr	r2, .Lnp_pnl_swap_27 + 20 @ 0xa7e
	add	r1, r4, r2
	strb	r0, [r1]
	sub	r3, r3, #0x8
	add	r0, r4, r3
	mov	r3, #0x0
	ldr	r2, [r0]
.Lnp_pnl_swap_24:
	ldrb	r1, [r2]
	ldrb	r0, [r2, #0x8]
	strb	r0, [r2]
	add	r2, r2, #0x1
	strb	r1, [r2, #0x7]
	add	r3, r3, #0x1
	cmp	r3, #0x7
	bls	.Lnp_pnl_swap_24	@cond_branch
	ldr	r4, .Lnp_pnl_swap_27 + 24 @ NRam
	ldr	r0, .Lnp_pnl_swap_27 + 28 @ 0xa74
	add	r5, r4, r0
	ldr	r0, [r5]
	bl	nswp_0sp
	ldr	r0, [r5]
	add	r0, r0, #0x8
	bl	nswp_0sp
	mov	r1, #0xa7
	lsl	r1, r1, #0x4
	add	r4, r4, r1
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
.Lnp_pnl_swap_9:
	ldr	r3, .Lnp_pnl_swap_27 + 24 @ NRam
	ldr	r2, .Lnp_pnl_swap_27 @ 0xa78
	add	r1, r3, r2
	ldr	r0, [r1]
	ldrb	r2, [r0]
	add	r0, r0, #0x1
	str	r0, [r1]
	cmp	r2, #0
	bne	.Lnp_pnl_swap_25	@cond_branch
	bl	nswp_objend
	b	.Lnp_pnl_swap_26
.Lnp_pnl_swap_28:
	.align	2, 0
.Lnp_pnl_swap_27:
	.word	0xa78
	.word	nswp_10_frame
	.word	0xa71
	.word	0xa7c
	.word	0xa72
	.word	0xa7e
	.word	NRam
	.word	0xa74
.Lnp_pnl_swap_25:
	ldr	r5, .Lnp_pnl_swap_29 @ 0xa7c
	add	r1, r3, r5
	ldrb	r0, [r1]
	add	r0, r0, r2
	strb	r0, [r1]
	ldr	r0, .Lnp_pnl_swap_29 + 4 @ 0xa7d
	add	r1, r3, r0
	ldrb	r0, [r1]
	sub	r0, r0, r2
	strb	r0, [r1]
	bl	nswp_objput
.Lnp_pnl_swap_26:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_pnl_swap_30:
	.align	2, 0
.Lnp_pnl_swap_29:
	.word	0xa7c
	.word	0xa7d
	thumb_func_end np_pnl_swap
