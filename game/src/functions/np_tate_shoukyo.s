	thumb_func_start np_tate_shoukyo
np_tate_shoukyo:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r1, #0x0
	ldr	r0, .Lnp_tate_shoukyo_4 @ NRam+0x154
	mov	r8, r0
.Lnp_tate_shoukyo_14:
	mov	r6, #0x0
	lsl	r0, r1, #0x3
	mov	r3, r8
	add	r2, r0, r3
	mov	r3, #0x0
	mov	r4, #0xff
	add	r7, r1, #1
	ldrb	r0, [r2, #0x3]
	cmp	r4, r0
	beq	.Lnp_tate_shoukyo_12	@cond_branch
.Lnp_tate_shoukyo_13:
	ldrb	r4, [r2, #0x3]
	cmp	r4, #0
	bne	.Lnp_tate_shoukyo_2	@cond_branch
	mov	r4, #0xff
.Lnp_tate_shoukyo_2:
	mov	r3, #0x0
	b	.Lnp_tate_shoukyo_3
.Lnp_tate_shoukyo_5:
	.align	2, 0
.Lnp_tate_shoukyo_4:
	.word	NRam+0x154
.Lnp_tate_shoukyo_12:
	add	r0, r3, #1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
.Lnp_tate_shoukyo_3:
	add	r2, r2, #0x30
	add	r6, r6, #0x1
	cmp	r3, #0x1
	bls	.Lnp_tate_shoukyo_8	@cond_branch
	ldrb	r0, [r2, #0x3]
	cmp	r4, r0
	bne	.Lnp_tate_shoukyo_7	@cond_branch
	cmp	r6, #0xb
	ble	.Lnp_tate_shoukyo_8	@cond_branch
.Lnp_tate_shoukyo_7:
	add	r1, r2, #0
	add	r0, r3, #1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, #0
	beq	.Lnp_tate_shoukyo_9	@cond_branch
	mov	r5, #0x40
.Lnp_tate_shoukyo_10:
	sub	r1, r1, #0x30
	ldrb	r0, [r1, #0x4]
	orr	r0, r0, r5
	strb	r0, [r1, #0x4]
	sub	r0, r3, #1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	cmp	r3, #0
	bne	.Lnp_tate_shoukyo_10	@cond_branch
.Lnp_tate_shoukyo_9:
	cmp	r6, #0x9
	bgt	.Lnp_tate_shoukyo_11	@cond_branch
.Lnp_tate_shoukyo_8:
	ldrb	r0, [r2, #0x3]
	cmp	r4, r0
	beq	.Lnp_tate_shoukyo_12	@cond_branch
	cmp	r6, #0x9
	ble	.Lnp_tate_shoukyo_13	@cond_branch
.Lnp_tate_shoukyo_11:
	add	r1, r7, #0
	cmp	r1, #0x5
	ble	.Lnp_tate_shoukyo_14	@cond_branch
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end np_tate_shoukyo
