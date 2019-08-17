	thumb_func_start PutBgDex
PutBgDex:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffff4
	mov	r9, r0
	add	r4, r1, #0
	ldr	r5, [sp, #0x2c]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	ip, r2
	mov	r0, #0x0
	mov	r8, r0
	mov	r2, #0x9
	sub	r3, r3, #0x1
	mov	sl, r3
.LPutBgDex_8:
	mov	r3, #0x0
	lsl	r1, r2, #0x2
	ldr	r6, .LPutBgDex_6 @ PutDataBgDex
	add	r0, r1, r6
	ldr	r0, [r0]
	mov	r7, sp
	add	r6, r7, r2
	sub	r7, r2, #1
	cmp	r5, r0
	blt	.LPutBgDex_1	@cond_branch
	ldr	r2, .LPutBgDex_6 @ PutDataBgDex
.LPutBgDex_2:
	add	r0, r1, r2
	ldr	r0, [r0]
	sub	r5, r5, r0
	add	r3, r3, #0x1
	cmp	r5, r0
	bge	.LPutBgDex_2	@cond_branch
.LPutBgDex_1:
	cmp	r3, #0
	beq	.LPutBgDex_3	@cond_branch
	mov	r0, #0x1
	add r8, r8, r0
.LPutBgDex_3:
	mov	r1, r8
	cmp	r1, #0
	beq	.LPutBgDex_4	@cond_branch
	strb	r3, [r6]
	b	.LPutBgDex_5
.LPutBgDex_7:
	.align	2, 0
.LPutBgDex_6:
	.word	PutDataBgDex
.LPutBgDex_4:
	mov	r0, #0xff
	strb	r0, [r6]
.LPutBgDex_5:
	add	r2, r7, #0
	cmp	r2, #0
	bgt	.LPutBgDex_8	@cond_branch
	mov	r0, sp
	strb	r5, [r0]
	mov	r2, sl
	cmp	r2, #0
	blt	.LPutBgDex_9	@cond_branch
.LPutBgDex_17:
	mov	r6, sp
	add	r3, r6, r2
	ldrb	r0, [r3]
	cmp	r0, #0xff
	bne	.LPutBgDex_10	@cond_branch
	ldr	r0, .LPutBgDex_14 @ 0xfffe
	cmp	ip, r0
	beq	.LPutBgDex_11	@cond_branch
	add	r0, r0, #0x1
	cmp	ip, r0
	bne	.LPutBgDex_12	@cond_branch
	mov	r7, r9
	ldrh	r0, [r7]
	b	.LPutBgDex_16
.LPutBgDex_15:
	.align	2, 0
.LPutBgDex_14:
	.word	0xfffe
.LPutBgDex_12:
	mov	r0, ip
	b	.LPutBgDex_16
.LPutBgDex_10:
	ldrb	r0, [r3]
	lsl	r0, r0, #0x1
	add r0, r0, r9
	ldrh	r0, [r0]
.LPutBgDex_16:
	strh	r0, [r4]
	add	r4, r4, #0x2
.LPutBgDex_11:
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.LPutBgDex_17	@cond_branch
.LPutBgDex_9:
	add	sp, sp, #0xc
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end PutBgDex
