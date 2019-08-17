	thumb_func_start np_bak_roll_up
np_bak_roll_up:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, .Lnp_bak_roll_up_5 @ NRam+0x3c4
	mov	r2, #0x0
	ldr	r0, .Lnp_bak_roll_up_5 + 4 @ 0xfffffc5f
	add	r0, r0, r1
	mov	r8, r0
.Lnp_bak_roll_up_4:
	ldrb	r0, [r1]
	add	r2, r2, #0x1
	mov	ip, r2
	add	r7, r1, #0
	add	r7, r7, #0x10
	cmp	r0, #0
	beq	.Lnp_bak_roll_up_2	@cond_branch
	ldrh	r3, [r1, #0x2]
	mov	r1, r8
	add	r0, r3, r1
	ldrb	r4, [r0]
	add	r3, r3, #0x1
	mov	r0, #0xff
	and	r3, r3, r0
	cmp	r4, #0
	beq	.Lnp_bak_roll_up_2	@cond_branch
	ldr	r5, .Lnp_bak_roll_up_5 + 8 @ NRam+0x23
	mov	r6, #0xff
.Lnp_bak_roll_up_3:
	add	r1, r3, #0
	add	r0, r1, r5
	ldrb	r2, [r0]
	add	r0, r1, #1
	and	r0, r0, r6
	add	r0, r0, r5
	ldrb	r0, [r0]
	lsl	r0, r0, #0x8
	orr	r0, r0, r2
	sub	r0, r0, #0x6
	add	r1, r3, r5
	strb	r0, [r1]
	add	r3, r3, #0x1
	and	r3, r3, r6
	add	r1, r3, r5
	lsr	r0, r0, #0x8
	strb	r0, [r1]
	add	r3, r3, #0x1
	and	r3, r3, r6
	sub	r0, r4, #1
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	cmp	r4, #0
	bne	.Lnp_bak_roll_up_3	@cond_branch
.Lnp_bak_roll_up_2:
	mov	r2, ip
	add	r1, r7, #0
	cmp	r2, #0x7
	ble	.Lnp_bak_roll_up_4	@cond_branch
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_bak_roll_up_6:
	.align	2, 0
.Lnp_bak_roll_up_5:
	.word	NRam+0x3c4
	.word	0xfffffc5f
	.word	NRam+0x23
	thumb_func_end np_bak_roll_up
