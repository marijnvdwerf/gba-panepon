	thumb_func_start RandomGet02
RandomGet02:
	push	{lr}
	bl	Pon_RandomNORM
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x55
	bhi	.LRandomGet02_1	@cond_branch
	mov	r0, #0x0
	b	.LRandomGet02_4
.LRandomGet02_1:
	cmp	r0, #0xaa
	bls	.LRandomGet02_3	@cond_branch
	mov	r0, #0x2
	b	.LRandomGet02_4
.LRandomGet02_3:
	mov	r0, #0x1
.LRandomGet02_4:
	pop	{r1}
	bx	r1
	thumb_func_end RandomGet02
