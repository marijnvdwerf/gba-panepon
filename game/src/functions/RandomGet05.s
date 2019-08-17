	thumb_func_start RandomGet05
RandomGet05:
	push	{lr}
	bl	Pon_RandomNORM
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	cmp	r0, #0x2a
	bhi	.LRandomGet05_1	@cond_branch
	mov	r0, #0x0
	b	.LRandomGet05_10
.LRandomGet05_1:
	cmp	r0, #0x55
	bhi	.LRandomGet05_3	@cond_branch
	mov	r0, #0x1
	b	.LRandomGet05_10
.LRandomGet05_3:
	cmp	r0, #0x80
	bhi	.LRandomGet05_5	@cond_branch
	mov	r0, #0x2
	b	.LRandomGet05_10
.LRandomGet05_5:
	cmp	r0, #0xab
	bhi	.LRandomGet05_7	@cond_branch
	mov	r0, #0x3
	b	.LRandomGet05_10
.LRandomGet05_7:
	cmp	r1, #0xd5
	bls	.LRandomGet05_9	@cond_branch
	mov	r0, #0x5
	b	.LRandomGet05_10
.LRandomGet05_9:
	mov	r0, #0x4
.LRandomGet05_10:
	pop	{r1}
	bx	r1
	thumb_func_end RandomGet05
