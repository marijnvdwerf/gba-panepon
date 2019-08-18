	thumb_func_start np_roll_up
np_roll_up:
	push	{r4, lr}
	ldr	r0, .Lnp_roll_up_9 @ NRam
	ldrb	r1, [r0, #0x8]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.Lnp_roll_up_7	@cond_branch
	ldr	r0, .Lnp_roll_up_9 + 4 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x3
	beq	.Lnp_roll_up_7	@cond_branch
	cmp	r0, #0x9
	beq	.Lnp_roll_up_7	@cond_branch
	mov	r1, #0xab
	lsl	r1, r1, #0x4
	add	r0, r4, r1
	ldrb	r3, [r0]
	cmp	r3, #0
	bne	.Lnp_roll_up_4	@cond_branch
	ldr	r0, .Lnp_roll_up_9 + 8 @ KeyRead_Now
	ldr	r2, .Lnp_roll_up_9 + 12 @ 0xbc4
	add	r1, r4, r2
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_roll_up_5	@cond_branch
	ldr	r1, .Lnp_roll_up_9 + 16 @ 0xab4
	add	r0, r4, r1
	strh	r3, [r0]
.Lnp_roll_up_5:
	ldr	r2, .Lnp_roll_up_9 + 16 @ 0xab4
	add	r0, r4, r2
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_roll_up_7	@cond_branch
	ldr	r1, .Lnp_roll_up_9 + 20 @ 0xa84
	add	r0, r4, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_roll_up_7	@cond_branch
	bl	np_rlup_add
.Lnp_roll_up_7:
	ldr	r0, .Lnp_roll_up_9 @ NRam
	mov	r2, #0xab
	lsl	r2, r2, #0x4
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r4, r0, #0
	cmp	r1, #0
	beq	.Lnp_roll_up_8	@cond_branch
.Lnp_roll_up_4:
	mov	r0, #0xab
	lsl	r0, r0, #0x4
	add	r1, r4, r0
	ldrb	r0, [r1]
	sub	r0, r0, #0x1
	strb	r0, [r1]
.Lnp_roll_up_8:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_roll_up_10:
	.align	2, 0
.Lnp_roll_up_9:
	.word	NRam
	.word	ARam
	.word	KeyRead_Now
	.word	0xbc4
	.word	0xab4
	.word	0xa84
	thumb_func_end np_roll_up
