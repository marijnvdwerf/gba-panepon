	thumb_func_start n_dectime
n_dectime:
	add	r1, r0, #0
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Ln_dectime_1	@cond_branch
	sub	r0, r0, #0x1
	b	.Ln_dectime_4
.Ln_dectime_1:
	ldrb	r0, [r1, #0x1]
	cmp	r0, #0
	bne	.Ln_dectime_3	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1]
	mov	r0, #0x3b
	b	.Ln_dectime_4
.Ln_dectime_3:
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0
	bne	.Ln_dectime_5	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x2]
	mov	r0, #0x3b
	b	.Ln_dectime_6
.Ln_dectime_5:
	ldrb	r0, [r1, #0x3]
	cmp	r0, #0
	bne	.Ln_dectime_7	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x3]
	mov	r0, #0x3b
	strb	r0, [r1, #0x2]
.Ln_dectime_6:
	strb	r0, [r1, #0x1]
.Ln_dectime_4:
	strb	r0, [r1]
.Ln_dectime_7:
	add	r0, r1, #0
	bx	lr
	thumb_func_end n_dectime
