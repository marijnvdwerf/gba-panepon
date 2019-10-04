	thumb_func_start np_add_bonus
np_add_bonus:
	push	{r4, lr}
	ldr	r1, .Lnp_add_bonus_9 @ NRam
	ldr	r2, .Lnp_add_bonus_9 + 4 @ 0xba4
	add	r0, r1, r2
	ldr	r0, [r0]
	add	r3, r1, #0
	cmp	r0, #0
	beq	.Lnp_add_bonus_4	@cond_branch
	cmp	r0, #0x48
	ble	.Lnp_add_bonus_2	@cond_branch
	mov	r0, #0x48
.Lnp_add_bonus_2:
	ldr	r1, .Lnp_add_bonus_9 + 8 @ np_bonus_douji_AGB
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r1, [r0]
	ldr	r0, .Lnp_add_bonus_9 + 12 @ ARam
	ldrb	r0, [r0, #0x1f]
	cmp	r0, #0
	beq	.Lnp_add_bonus_3	@cond_branch
	lsr	r1, r1, #0x2
.Lnp_add_bonus_3:
	mov	r4, #0xa9
	lsl	r4, r4, #0x4
	add	r2, r3, r4
	ldr	r0, [r2]
	add	r0, r0, r1
	str	r0, [r2]
	add	r4, r4, #0x4
	add	r1, r3, r4
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.Lnp_add_bonus_4	@cond_branch
	str	r1, [r2]
.Lnp_add_bonus_4:
	ldr	r1, .Lnp_add_bonus_9 + 16 @ 0xba8
	add	r0, r3, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_add_bonus_8	@cond_branch
	cmp	r0, #0xd
	ble	.Lnp_add_bonus_6	@cond_branch
	mov	r0, #0xd
.Lnp_add_bonus_6:
	ldr	r1, .Lnp_add_bonus_9 + 20 @ np_bonus_rensa_AGB
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r1, [r0]
	ldr	r0, .Lnp_add_bonus_9 + 12 @ ARam
	ldrb	r0, [r0, #0x1f]
	cmp	r0, #0
	beq	.Lnp_add_bonus_7	@cond_branch
	lsr	r1, r1, #0x2
.Lnp_add_bonus_7:
	mov	r4, #0xa9
	lsl	r4, r4, #0x4
	add	r2, r3, r4
	ldr	r0, [r2]
	add	r0, r0, r1
	str	r0, [r2]
	add	r4, r4, #0x4
	add	r1, r3, r4
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.Lnp_add_bonus_8	@cond_branch
	str	r1, [r2]
.Lnp_add_bonus_8:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_add_bonus_10:
	.align	2, 0
.Lnp_add_bonus_9:
	.word	NRam
	.word	0xba4
	.word	np_bonus_douji_AGB
	.word	ARam
	.word	0xba8
	.word	np_bonus_rensa_AGB
	thumb_func_end np_add_bonus
