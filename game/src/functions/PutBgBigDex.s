	thumb_func_start PutBgBigDex
PutBgBigDex:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xffffffe4
	str	r0, [sp, #0xc]
	add	r5, r1, #0
	mov	ip, r2
	mov	r8, r3
	ldr	r0, [sp, #0x3c]
	ldr	r1, [sp, #0x40]
	ldr	r2, [sp, #0x44]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	sl, r0
	mov	r0, #0x0
	str	r0, [sp, #0x18]
	mov	r4, #0x9
	sub	r1, r1, #0x1
	str	r1, [sp, #0x14]
.LPutBgBigDex_8:
	mov	r3, #0x0
	lsl	r1, r4, #0x2
	ldr	r6, .LPutBgBigDex_6 @ PutDataBgDex
	add	r0, r1, r6
	ldr	r0, [r0]
	mov	r7, sp
	add	r6, r7, r4
	sub	r4, r4, #0x1
	mov	r9, r4
	cmp	r2, r0
	blt	.LPutBgBigDex_1	@cond_branch
	ldr	r4, .LPutBgBigDex_6 @ PutDataBgDex
.LPutBgBigDex_2:
	add	r0, r1, r4
	ldr	r0, [r0]
	sub	r2, r2, r0
	add	r3, r3, #0x1
	cmp	r2, r0
	bge	.LPutBgBigDex_2	@cond_branch
.LPutBgBigDex_1:
	cmp	r3, #0
	beq	.LPutBgBigDex_3	@cond_branch
	ldr	r0, [sp, #0x18]
	add	r0, r0, #0x1
	str	r0, [sp, #0x18]
.LPutBgBigDex_3:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.LPutBgBigDex_4	@cond_branch
	strb	r3, [r6]
	b	.LPutBgBigDex_5
.LPutBgBigDex_7:
	.align	2, 0
.LPutBgBigDex_6:
	.word	PutDataBgDex
.LPutBgBigDex_4:
	mov	r0, #0xff
	strb	r0, [r6]
.LPutBgBigDex_5:
	mov	r4, r9
	cmp	r4, #0
	bgt	.LPutBgBigDex_8	@cond_branch
	mov	r0, sp
	strb	r2, [r0]
	ldr	r4, [sp, #0x14]
	cmp	r4, #0
	blt	.LPutBgBigDex_9	@cond_branch
	mov	r0, #0x20
	sub	r0, r0, r5
	str	r0, [sp, #0x10]
.LPutBgBigDex_29:
	mov	r2, r8
	mov	r6, sp
	add	r1, r6, r4
	ldrb	r0, [r1]
	cmp	r0, #0xff
	bne	.LPutBgBigDex_10	@cond_branch
	ldr	r0, .LPutBgBigDex_18 @ 0xfffe
	sub	r4, r4, #0x1
	mov	r9, r4
	cmp	sl, r0
	beq	.LPutBgBigDex_11	@cond_branch
	add	r0, r0, #0x1
	cmp	sl, r0
	bne	.LPutBgBigDex_12	@cond_branch
	ldr	r7, [sp, #0xc]
	ldr	r3, [r7]
	mov	r0, #0x0
	lsl	r6, r5, #0x1
	cmp	r0, ip
	bge	.LPutBgBigDex_25	@cond_branch
	ldr	r1, [sp, #0x10]
	lsl	r7, r1, #0x1
.LPutBgBigDex_16:
	add	r4, r0, #1
	cmp	r5, #0
	ble	.LPutBgBigDex_14	@cond_branch
	add	r1, r5, #0
.LPutBgBigDex_15:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, r3, #0x2
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.LPutBgBigDex_15	@cond_branch
.LPutBgBigDex_14:
	add	r2, r2, r7
	add	r0, r4, #0
	cmp	r0, ip
	blt	.LPutBgBigDex_16	@cond_branch
	b	.LPutBgBigDex_25
.LPutBgBigDex_19:
	.align	2, 0
.LPutBgBigDex_18:
	.word	0xfffe
.LPutBgBigDex_12:
	mov	r0, #0x0
	lsl	r6, r5, #0x1
	cmp	r0, ip
	bge	.LPutBgBigDex_25	@cond_branch
	ldr	r7, [sp, #0x10]
	lsl	r3, r7, #0x1
.LPutBgBigDex_23:
	add	r4, r0, #1
	cmp	r5, #0
	ble	.LPutBgBigDex_21	@cond_branch
	add	r1, r5, #0
.LPutBgBigDex_22:
	mov	r0, sl
	strh	r0, [r2]
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.LPutBgBigDex_22	@cond_branch
.LPutBgBigDex_21:
	add	r2, r2, r3
	add	r0, r4, #0
	cmp	r0, ip
	blt	.LPutBgBigDex_23	@cond_branch
	b	.LPutBgBigDex_25
.LPutBgBigDex_10:
	ldrb	r0, [r1]
	lsl	r0, r0, #0x2
	ldr	r1, [sp, #0xc]
	add	r0, r0, r1
	ldr	r3, [r0]
	mov	r0, #0x0
	sub	r4, r4, #0x1
	mov	r9, r4
	lsl	r6, r5, #0x1
	cmp	r0, ip
	bge	.LPutBgBigDex_25	@cond_branch
	ldr	r1, [sp, #0x10]
	lsl	r7, r1, #0x1
.LPutBgBigDex_28:
	add	r4, r0, #1
	cmp	r5, #0
	ble	.LPutBgBigDex_26	@cond_branch
	add	r1, r5, #0
.LPutBgBigDex_27:
	ldrh	r0, [r3]
	strh	r0, [r2]
	add	r3, r3, #0x2
	add	r2, r2, #0x2
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.LPutBgBigDex_27	@cond_branch
.LPutBgBigDex_26:
	add	r2, r2, r7
	add	r0, r4, #0
	cmp	r0, ip
	blt	.LPutBgBigDex_28	@cond_branch
.LPutBgBigDex_25:
	add r8, r8, r6
.LPutBgBigDex_11:
	mov	r4, r9
	cmp	r4, #0
	bge	.LPutBgBigDex_29	@cond_branch
.LPutBgBigDex_9:
	add	sp, sp, #0x1c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end PutBgBigDex
