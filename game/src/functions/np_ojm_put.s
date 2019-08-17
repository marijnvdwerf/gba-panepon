	thumb_func_start np_ojm_put
np_ojm_put:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r4, r1, #0
	add	r3, r0, #0
	lsl	r0, r4, #0x18
	lsr	r7, r0, #0x18
	add	r6, r3, #0
	neg	r0, r2
	orr	r0, r0, r2
	asr	r5, r0, #0x1f
	mov	r0, #0x80
	and	r5, r5, r0
	mov	r0, #0x9
	mov	r8, r0
	cmp	r7, #0x1f
	bls	.Lnp_ojm_put_1	@cond_branch
	mov	r1, #0xa
	mov	r8, r1
.Lnp_ojm_put_1:
	ldr	r1, .Lnp_ojm_put_8 @ nojpt_tbl
	add	r0, r4, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r4, [r0]
	ldrb	r2, [r4]
	add	r4, r4, #0x1
	ldr	r1, .Lnp_ojm_put_8 + 4 @ NRam+0x154
	sub	r0, r3, r1
	lsr	r0, r0, #0x3
	add	r0, r0, #0x1
	cmp	r2, r0
	ble	.Lnp_ojm_put_2	@cond_branch
	add	r2, r0, #0
.Lnp_ojm_put_2:
	ldr	r0, .Lnp_ojm_put_8 + 8 @ nojpt_emtbl
	mov	sl, r0
	mov	r1, #0xb
	neg	r1, r1
	add	r1, r1, r7
	mov	r9, r1
	cmp	r2, #0
	beq	.Lnp_ojm_put_3	@cond_branch
	mov	r1, #0x0
	mov	r0, #0x7
	mov	ip, r0
.Lnp_ojm_put_4:
	mov	r0, r8
	strb	r0, [r3]
	ldrb	r0, [r4]
	strb	r0, [r3, #0x1]
	add	r4, r4, #0x1
	mov	r0, ip
	strb	r0, [r3, #0x2]
	strb	r1, [r3, #0x3]
	strb	r5, [r3, #0x4]
	strb	r1, [r3, #0x5]
	sub	r2, r2, #0x1
	sub	r3, r3, #0x8
	cmp	r2, #0
	bne	.Lnp_ojm_put_4	@cond_branch
.Lnp_ojm_put_3:
	strb	r7, [r6]
	ldrb	r1, [r6, #0x4]
	mov	r0, #0x14
	orr	r0, r0, r1
	strb	r0, [r6, #0x4]
	mov	r1, r9
	lsl	r0, r1, #0x2
	add r0, r0, sl
	ldrb	r2, [r0]
	mov	r1, #0x2
	ldsh	r0, [r0, r1]
	lsl	r0, r0, #0x3
	add	r3, r6, r0
	ldr	r0, .Lnp_ojm_put_8 + 4 @ NRam+0x154
	cmp	r3, r0
	bcc	.Lnp_ojm_put_6	@cond_branch
	cmp	r2, #0
	beq	.Lnp_ojm_put_6	@cond_branch
	mov	r0, #0x0
.Lnp_ojm_put_7:
	strb	r0, [r3]
	strb	r0, [r3, #0x1]
	strb	r0, [r3, #0x2]
	strb	r0, [r3, #0x3]
	strb	r0, [r3, #0x4]
	strb	r0, [r3, #0x5]
	sub	r2, r2, #0x1
	sub	r3, r3, #0x8
	cmp	r2, #0
	bne	.Lnp_ojm_put_7	@cond_branch
.Lnp_ojm_put_6:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_ojm_put_9:
	.align	2, 0
.Lnp_ojm_put_8:
	.word	nojpt_tbl
	.word	NRam+0x154
	.word	nojpt_emtbl
	thumb_func_end np_ojm_put
