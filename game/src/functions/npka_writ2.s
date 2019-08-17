	thumb_func_start npka_writ2
npka_writ2:
	add	r2, r0, #0
	mov	r3, #0xb
.Lnpka_writ2_3:
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x1
	bne	.Lnpka_writ2_2	@cond_branch
	ldrb	r1, [r2]
	add	r0, r1, #0
	sub	r0, r0, #0x8
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1d
	bls	.Lnpka_writ2_2	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x35
	strb	r0, [r2, #0x1]
.Lnpka_writ2_2:
	sub	r3, r3, #0x1
	add	r2, r2, #0x30
	cmp	r3, #0
	bge	.Lnpka_writ2_3	@cond_branch
	bx	lr
	thumb_func_end npka_writ2
