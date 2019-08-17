	thumb_func_start npka_writ0
npka_writ0:
	add	r1, r0, #0
	mov	r3, #0xa
.Lnpka_writ0_3:
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x1
	bne	.Lnpka_writ0_2	@cond_branch
	ldrb	r2, [r1]
	add	r0, r2, #0
	sub	r0, r0, #0x8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1d
	bls	.Lnpka_writ0_2	@cond_branch
	strb	r2, [r1, #0x1]
.Lnpka_writ0_2:
	sub	r3, r3, #0x1
	add	r1, r1, #0x30
	cmp	r3, #0
	bge	.Lnpka_writ0_3	@cond_branch
	bx	lr
	thumb_func_end npka_writ0
