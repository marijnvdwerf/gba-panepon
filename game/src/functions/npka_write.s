	thumb_func_start npka_write
npka_write:
	push	{r4, lr}
	add	r3, r0, #0
	add	r4, r1, #0
	mov	r1, #0xa
.Lnpka_write_3:
	ldrb	r0, [r3, #0x2]
	cmp	r0, #0x1
	bne	.Lnpka_write_2	@cond_branch
	ldrb	r2, [r3]
	add	r0, r2, #0
	sub	r0, r0, #0x8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1d
	bls	.Lnpka_write_2	@cond_branch
	add	r0, r2, r4
	strb	r0, [r3, #0x1]
.Lnpka_write_2:
	sub	r1, r1, #0x1
	add	r3, r3, #0x30
	cmp	r1, #0
	bge	.Lnpka_write_3	@cond_branch
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end npka_write
