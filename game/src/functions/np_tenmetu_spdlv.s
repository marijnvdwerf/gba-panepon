	thumb_func_start np_tenmetu_spdlv
np_tenmetu_spdlv:
	push	{r4, r5, lr}
	ldr	r1, .Lnp_tenmetu_spdlv_8 @ NRam
	ldr	r0, .Lnp_tenmetu_spdlv_8 + 4 @ 0xb34
	add	r4, r1, r0
	ldr	r0, [r4]
	add	r5, r1, #0
	cmp	r0, #0
	beq	.Lnp_tenmetu_spdlv_1	@cond_branch
	ldrh	r3, [r4]
	ldr	r2, .Lnp_tenmetu_spdlv_8 + 8 @ 0xb36
	add	r0, r1, r2
	strh	r3, [r0]
	lsl	r0, r3, #0x10
	cmp	r0, #0
	beq	.Lnp_tenmetu_spdlv_20	@cond_branch
	sub	r2, r2, #0x5
	add	r0, r1, r2
	ldrb	r0, [r0]
	mov	r2, #0x0
	cmp	r0, #0
	beq	.Lnp_tenmetu_spdlv_3	@cond_branch
	ldr	r2, .Lnp_tenmetu_spdlv_8 + 12 @ 0xb32
	add	r0, r1, r2
	ldrb	r1, [r0]
	neg	r0, r1
	orr	r0, r0, r1
	lsr	r2, r0, #0x1f
.Lnp_tenmetu_spdlv_3:
	sub	r0, r3, r2
	strh	r0, [r4]
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	ldr	r0, .Lnp_tenmetu_spdlv_8 + 16 @ 0x257
	cmp	r1, r0
	bhi	.Lnp_tenmetu_spdlv_4	@cond_branch
	ldr	r0, .Lnp_tenmetu_spdlv_8 + 20 @ 0x12b
	cmp	r1, r0
	bhi	.Lnp_tenmetu_spdlv_5	@cond_branch
	cmp	r1, #0x77
	bhi	.Lnp_tenmetu_spdlv_6	@cond_branch
	mov	r2, #0x9
	mov	r3, #0x5
	b	.Lnp_tenmetu_spdlv_11
.Lnp_tenmetu_spdlv_9:
	.align	2, 0
.Lnp_tenmetu_spdlv_8:
	.word	NRam
	.word	0xb34
	.word	0xb36
	.word	0xb32
	.word	0x257
	.word	0x12b
.Lnp_tenmetu_spdlv_6:
	mov	r2, #0xd
	mov	r3, #0x7
	b	.Lnp_tenmetu_spdlv_11
.Lnp_tenmetu_spdlv_5:
	mov	r2, #0x13
	mov	r3, #0xa
	b	.Lnp_tenmetu_spdlv_11
.Lnp_tenmetu_spdlv_4:
	mov	r2, #0x1d
	mov	r3, #0xf
.Lnp_tenmetu_spdlv_11:
	ldr	r1, .Lnp_tenmetu_spdlv_17 @ 0xb38
	add	r0, r5, r1
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	cmp	r1, #0
	blt	.Lnp_tenmetu_spdlv_12	@cond_branch
	cmp	r2, r1
	bge	.Lnp_tenmetu_spdlv_13	@cond_branch
.Lnp_tenmetu_spdlv_12:
	mov	r1, #0x0
.Lnp_tenmetu_spdlv_13:
	ldr	r2, .Lnp_tenmetu_spdlv_17 @ 0xb38
	add	r0, r5, r2
	strb	r1, [r0]
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0
	beq	.Lnp_tenmetu_spdlv_14	@cond_branch
	cmp	r0, r3
	beq	.Lnp_tenmetu_spdlv_15	@cond_branch
	b	.Lnp_tenmetu_spdlv_23
.Lnp_tenmetu_spdlv_18:
	.align	2, 0
.Lnp_tenmetu_spdlv_17:
	.word	0xb38
.Lnp_tenmetu_spdlv_1:
	add	r1, r1, #0x22
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_tenmetu_spdlv_23	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
	mov	r3, #0x1f
	and	r3, r3, r0
	cmp	r3, #0
	beq	.Lnp_tenmetu_spdlv_20	@cond_branch
	cmp	r3, #0x10
	bne	.Lnp_tenmetu_spdlv_23	@cond_branch
.Lnp_tenmetu_spdlv_14:
	bl	np_srwreq_e_spdlv
	b	.Lnp_tenmetu_spdlv_23
.Lnp_tenmetu_spdlv_20:
	bl	np_srwreq_spdlv
	b	.Lnp_tenmetu_spdlv_23
.Lnp_tenmetu_spdlv_15:
	bl	np_srwreq_stpct
.Lnp_tenmetu_spdlv_23:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end np_tenmetu_spdlv
