	thumb_func_start n_inctime
n_inctime:
	add	r1, r0, #0
	ldrb	r0, [r1]
	cmp	r0, #0x3a
	bhi	.Ln_inctime_1	@cond_branch
	add	r0, r0, #0x1
	b	.Ln_inctime_4
.Ln_inctime_1:
	ldrb	r0, [r1, #0x1]
	cmp	r0, #0x3a
	bhi	.Ln_inctime_3	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1]
	mov	r0, #0x0
	b	.Ln_inctime_4
.Ln_inctime_3:
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x3a
	bhi	.Ln_inctime_5	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x2]
	mov	r0, #0x0
	b	.Ln_inctime_6
.Ln_inctime_5:
	ldrb	r0, [r1, #0x3]
	cmp	r0, #0x8
	bhi	.Ln_inctime_7	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x3]
	mov	r0, #0x0
	strb	r0, [r1, #0x2]
.Ln_inctime_6:
	strb	r0, [r1, #0x1]
.Ln_inctime_4:
	strb	r0, [r1]
.Ln_inctime_7:
	add	r0, r1, #0
	bx	lr
	thumb_func_end n_inctime
