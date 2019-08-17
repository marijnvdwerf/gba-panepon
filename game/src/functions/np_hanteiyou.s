	thumb_func_start np_hanteiyou
np_hanteiyou:
	push	{r4, lr}
	ldr	r2, .Lnp_hanteiyou_4 @ NRam+0x154
	mov	r3, #0x47
	mov	r4, #0x0
.Lnp_hanteiyou_6:
	ldrb	r1, [r2]
	sub	r0, r1, #1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x6
	bhi	.Lnp_hanteiyou_1	@cond_branch
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x1
	beq	.Lnp_hanteiyou_2	@cond_branch
.Lnp_hanteiyou_1:
	strb	r4, [r2, #0x3]
	b	.Lnp_hanteiyou_3
.Lnp_hanteiyou_5:
	.align	2, 0
.Lnp_hanteiyou_4:
	.word	NRam+0x154
.Lnp_hanteiyou_2:
	strb	r1, [r2, #0x3]
.Lnp_hanteiyou_3:
	sub	r3, r3, #0x1
	add	r2, r2, #0x8
	cmp	r3, #0
	bge	.Lnp_hanteiyou_6	@cond_branch
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_hanteiyou
