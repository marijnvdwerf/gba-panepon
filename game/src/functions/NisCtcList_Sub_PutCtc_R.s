	thumb_func_start NisCtcList_Sub_PutCtc_R
NisCtcList_Sub_PutCtc_R:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r3, r0, #0
	ldr	r6, [r3, #0x18]
	cmp	r6, #0
	beq	.LNisCtcList_Sub_PutCtc_R_5	@cond_branch
	ldr	r1, [r3, #0x10]
	mov	r0, #0x80
	lsl	r0, r0, #0x5
	and	r0, r0, r1
	mov	r9, r1
	cmp	r0, #0
	bne	.LNisCtcList_Sub_PutCtc_R_2	@cond_branch
	add	r0, r3, #0
	bl	NisCtcList_Sub_PutCtc
	b	.LNisCtcList_Sub_PutCtc_R_5
.LNisCtcList_Sub_PutCtc_R_2:
	ldrh	r0, [r6]
	mov	ip, r0
	add	r6, r6, #0x2
	ldr	r1, .LNisCtcList_Sub_PutCtc_R_7 @ OamIdx
	mov	r8, r1
	ldrh	r2, [r1]
	lsl	r7, r0, #0x10
	asr	r4, r7, #0x10
	add	r0, r2, r4
	cmp	r0, #0x80
	bgt	.LNisCtcList_Sub_PutCtc_R_5	@cond_branch
	lsl	r0, r2, #0x3
	ldr	r1, .LNisCtcList_Sub_PutCtc_R_7 + 4 @ OamBak
	add	r5, r0, r1
	mov	r1, ip
	add	r0, r2, r1
	mov	r2, r8
	strh	r0, [r2]
	cmp	r4, #0
	ble	.LNisCtcList_Sub_PutCtc_R_5	@cond_branch
	ldr	r3, [r3, #0xc]
	mov	r8, r3
	ldr	r0, .LNisCtcList_Sub_PutCtc_R_7 + 8 @ haba.39
	mov	sl, r0
	mov	r1, #0xfe
	lsl	r1, r1, #0x8
	mov	ip, r1
.LNisCtcList_Sub_PutCtc_R_6:
	ldrh	r3, [r6]
	add	r6, r6, #0x2
	mov	r2, r8
	add	r0, r3, r2
	lsl	r0, r0, #0x10
	mov	r1, #0xff
	lsl	r1, r1, #0x10
	and	r1, r1, r0
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	and	r3, r3, r0
	lsl	r3, r3, #0x10
	orr	r3, r3, r1
	lsr	r0, r3, #0x10
	strh	r0, [r5]
	add	r5, r5, #0x2
	ldrh	r4, [r6]
	add	r6, r6, #0x2
	neg	r1, r4
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	lsr	r0, r4, #0xe
	lsr	r3, r3, #0x1c
	mov	r2, #0xc
	and	r3, r3, r2
	orr	r0, r0, r3
	lsl	r0, r0, #0x1
	add r0, r0, sl
	ldrh	r0, [r0]
	sub	r1, r1, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	add r1, r1, r9
	ldr	r2, .LNisCtcList_Sub_PutCtc_R_7 + 12 @ 0x1ff
	and	r1, r1, r2
	mov	r0, ip
	and	r4, r4, r0
	mov	r2, #0x80
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	eor	r4, r4, r0
	orr	r4, r4, r1
	strh	r4, [r5]
	add	r5, r5, #0x2
	ldrh	r0, [r6]
	add	r6, r6, #0x2
	strh	r0, [r5]
	add	r5, r5, #0x4
	ldr	r0, .LNisCtcList_Sub_PutCtc_R_7 + 16 @ 0xffff0000
	add	r7, r7, r0
	asr	r0, r7, #0x10
	cmp	r0, #0
	bgt	.LNisCtcList_Sub_PutCtc_R_6	@cond_branch
.LNisCtcList_Sub_PutCtc_R_5:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtcList_Sub_PutCtc_R_8:
	.align	2, 0
.LNisCtcList_Sub_PutCtc_R_7:
	.word	OamIdx
	.word	OamBak
	.word	haba.39
	.word	0x1ff
	.word	0xffff0000
	thumb_func_end NisCtcList_Sub_PutCtc_R
