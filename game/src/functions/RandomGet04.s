	thumb_func_start RandomGet04
RandomGet04:
	push	{lr}
	bl	Pon_RandomNORM
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #0
	cmp	r0, #0x32
	bhi	.LRandomGet04_1	@cond_branch
	mov	r0, #0x0
	b	.LRandomGet04_8
.LRandomGet04_1:
	cmp	r0, #0x65
	bhi	.LRandomGet04_3	@cond_branch
	mov	r0, #0x1
	b	.LRandomGet04_8
.LRandomGet04_3:
	cmp	r0, #0x98
	bhi	.LRandomGet04_5	@cond_branch
	mov	r0, #0x2
	b	.LRandomGet04_8
.LRandomGet04_5:
	cmp	r1, #0xcb
	bls	.LRandomGet04_7	@cond_branch
	mov	r0, #0x4
	b	.LRandomGet04_8
.LRandomGet04_7:
	mov	r0, #0x3
.LRandomGet04_8:
	pop	{r1}
	bx	r1
	thumb_func_end RandomGet04
