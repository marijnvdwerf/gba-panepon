	thumb_func_start np_rlup_add
np_rlup_add:
	push	{r4, r5, lr}
	ldr	r0, .Lnp_rlup_add_10 @ ARam
	ldrb	r1, [r0, #0x18]
	add	r4, r0, #0
	ldr	r3, .Lnp_rlup_add_10 + 4 @ NRam
	cmp	r1, #0
	bne	.Lnp_rlup_add_1	@cond_branch
	ldrb	r0, [r3, #0x7]
	cmp	r0, #0
	beq	.Lnp_rlup_add_15	@cond_branch
.Lnp_rlup_add_1:
	ldr	r0, .Lnp_rlup_add_10 + 8 @ KeyRead_Now
	ldr	r2, .Lnp_rlup_add_10 + 12 @ 0xbc8
	add	r1, r3, r2
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_rlup_add_6	@cond_branch
	ldr	r5, .Lnp_rlup_add_10 + 16 @ 0xab2
	add	r1, r3, r5
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_rlup_add_7	@cond_branch
	mov	r2, #0x1
	strb	r2, [r1]
	ldr	r0, .Lnp_rlup_add_10 + 20 @ 0xab3
	add	r1, r3, r0
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_rlup_add_6	@cond_branch
	strb	r2, [r1]
	mov	r1, #0xa9
	lsl	r1, r1, #0x4
	add	r2, r3, r1
	ldr	r0, [r2]
	add	r0, r0, #0x1
	str	r0, [r2]
	sub	r5, r5, #0x1e
	add	r1, r3, r5
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.Lnp_rlup_add_6	@cond_branch
	str	r1, [r2]
.Lnp_rlup_add_6:
	ldr	r1, .Lnp_rlup_add_10 + 16 @ 0xab2
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_rlup_add_7	@cond_branch
	ldrb	r0, [r3, #0x7]
	cmp	r0, #0
	beq	.Lnp_rlup_add_15	@cond_branch
	ldr	r2, .Lnp_rlup_add_10 + 24 @ 0xaae
	add	r0, r3, r2
	ldrh	r2, [r0]
	b	.Lnp_rlup_add_9
.Lnp_rlup_add_11:
	.align	2, 0
.Lnp_rlup_add_10:
	.word	ARam
	.word	NRam
	.word	KeyRead_Now
	.word	0xbc8
	.word	0xab2
	.word	0xab3
	.word	0xaae
.Lnp_rlup_add_7:
	ldrb	r0, [r4, #0x18]
	cmp	r0, #0
	beq	.Lnp_rlup_add_12	@cond_branch
	ldr	r5, .Lnp_rlup_add_18 @ 0xab6
	add	r0, r3, r5
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_rlup_add_15	@cond_branch
	ldr	r1, .Lnp_rlup_add_18 + 4 @ 0xa74
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_rlup_add_15	@cond_branch
	ldr	r2, .Lnp_rlup_add_18 + 8 @ 0xabd
	add	r0, r3, r2
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_rlup_add_15	@cond_branch
.Lnp_rlup_add_12:
	mov	r2, #0x80
	lsl	r2, r2, #0x5
	mov	r5, #0xab
	lsl	r5, r5, #0x4
	add	r1, r3, r5
	mov	r0, #0x0
	strh	r0, [r1]
.Lnp_rlup_add_9:
	mov	r0, #0xab
	lsl	r0, r0, #0x4
	add	r1, r3, r0
	ldrh	r0, [r1]
	add	r0, r2, r0
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x1c
	cmp	r4, #0
	ble	.Lnp_rlup_add_16	@cond_branch
.Lnp_rlup_add_17:
	bl	np_1dot_roll_up
	sub	r4, r4, #0x1
	cmp	r4, #0
	bgt	.Lnp_rlup_add_17	@cond_branch
.Lnp_rlup_add_16:
	ldr	r0, .Lnp_rlup_add_18 + 12 @ NRam
	mov	r1, #0xab
	lsl	r1, r1, #0x4
	add	r0, r0, r1
	ldrh	r2, [r0]
	ldr	r1, .Lnp_rlup_add_18 + 16 @ 0xfff
	and	r1, r1, r2
	strh	r1, [r0]
.Lnp_rlup_add_15:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_rlup_add_19:
	.align	2, 0
.Lnp_rlup_add_18:
	.word	0xab6
	.word	0xa74
	.word	0xabd
	.word	NRam
	.word	0xfff
	thumb_func_end np_rlup_add
