	thumb_func_start np_time_cnt
np_time_cnt:
	ldr	r0, .Lnp_time_cnt_3 @ NRam
	ldr	r1, .Lnp_time_cnt_3 + 4 @ 0xa9c
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_time_cnt_34	@cond_branch
	ldr	r0, .Lnp_time_cnt_3 + 8 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_time_cnt_34	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_time_cnt_3 + 12 @ .Lnp_time_cnt_5
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_time_cnt_4:
	.align	2, 0
.Lnp_time_cnt_3:
	.word	NRam
	.word	0xa9c
	.word	ARam
	.word	.Lnp_time_cnt_5
.Lnp_time_cnt_5:
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_13
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_13
	.word	.Lnp_time_cnt_15
	.word	.Lnp_time_cnt_15
.Lnp_time_cnt_15:
	ldr	r1, .Lnp_time_cnt_18 @ NRam+0xa98
	ldrb	r0, [r1]
	cmp	r0, #0x3a
	bhi	.Lnp_time_cnt_16	@cond_branch
	add	r0, r0, #0x1
	b	.Lnp_time_cnt_31
.Lnp_time_cnt_19:
	.align	2, 0
.Lnp_time_cnt_18:
	.word	NRam+0xa98
.Lnp_time_cnt_16:
	ldrb	r0, [r1, #0x1]
	cmp	r0, #0x3a
	bhi	.Lnp_time_cnt_20	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1]
	mov	r0, #0x0
	b	.Lnp_time_cnt_31
.Lnp_time_cnt_20:
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x3a
	bhi	.Lnp_time_cnt_22	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x2]
	mov	r0, #0x0
	b	.Lnp_time_cnt_33
.Lnp_time_cnt_22:
	ldrb	r0, [r1, #0x3]
	cmp	r0, #0x8
	bhi	.Lnp_time_cnt_34	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x3]
	mov	r0, #0x0
	b	.Lnp_time_cnt_25
.Lnp_time_cnt_13:
	ldr	r1, .Lnp_time_cnt_28 @ NRam+0xa98
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_time_cnt_26	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnp_time_cnt_31
.Lnp_time_cnt_29:
	.align	2, 0
.Lnp_time_cnt_28:
	.word	NRam+0xa98
.Lnp_time_cnt_26:
	ldrb	r0, [r1, #0x1]
	cmp	r0, #0
	bne	.Lnp_time_cnt_30	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1]
	mov	r0, #0x3b
	b	.Lnp_time_cnt_31
.Lnp_time_cnt_30:
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0
	bne	.Lnp_time_cnt_32	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x2]
	mov	r0, #0x3b
	b	.Lnp_time_cnt_33
.Lnp_time_cnt_32:
	ldrb	r0, [r1, #0x3]
	cmp	r0, #0
	bne	.Lnp_time_cnt_34	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x3]
	mov	r0, #0x3b
.Lnp_time_cnt_25:
	strb	r0, [r1, #0x2]
.Lnp_time_cnt_33:
	strb	r0, [r1, #0x1]
.Lnp_time_cnt_31:
	strb	r0, [r1]
.Lnp_time_cnt_34:
	bx	lr
	thumb_func_end np_time_cnt
