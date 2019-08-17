	thumb_func_start MainSeqSearchNear
MainSeqSearchNear:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	ldr	r0, .LMainSeqSearchNear_2 @ MainSeqIdx
	ldr	r2, [r0]
	add	r3, r2, #0
	add	r6, r0, #0
	ldr	r5, .LMainSeqSearchNear_2 + 4 @ MainSeqTable
	b	.LMainSeqSearchNear_4
.LMainSeqSearchNear_3:
	.align	2, 0
.LMainSeqSearchNear_2:
	.word	MainSeqIdx
	.word	MainSeqTable
.LMainSeqSearchNear_10:
	add	r2, r2, #0x1
	add	r1, r1, #0x1
.LMainSeqSearchNear_9:
	cmp	r1, #0
	bne	.LMainSeqSearchNear_4	@cond_branch
.LMainSeqSearchNear_5:
	b	.LMainSeqSearchNear_5
.LMainSeqSearchNear_4:
	mov	r1, #0x0
	cmp	r3, #0
	blt	.LMainSeqSearchNear_6	@cond_branch
	lsl	r0, r3, #0x2
	add	r0, r0, r5
	ldr	r0, [r0]
	cmp	r4, r0
	bne	.LMainSeqSearchNear_7	@cond_branch
	str	r3, [r6]
	b	.LMainSeqSearchNear_8
.LMainSeqSearchNear_7:
	sub	r3, r3, #0x1
	mov	r1, #0x1
.LMainSeqSearchNear_6:
	cmp	r2, #0xf
	bhi	.LMainSeqSearchNear_9	@cond_branch
	lsl	r0, r2, #0x2
	add	r0, r0, r5
	ldr	r0, [r0]
	cmp	r4, r0
	bne	.LMainSeqSearchNear_10	@cond_branch
	str	r2, [r6]
.LMainSeqSearchNear_8:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end MainSeqSearchNear
