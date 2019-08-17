	thumb_func_start NisCtcList_Sub_PutCtc
NisCtcList_Sub_PutCtc:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r6, r0, #0
	ldr	r4, [r6, #0x18]
	cmp	r4, #0
	beq	.LNisCtcList_Sub_PutCtc_3	@cond_branch
	ldrh	r0, [r4]
	mov	ip, r0
	add	r4, r4, #0x2
	ldr	r1, .LNisCtcList_Sub_PutCtc_5 @ OamIdx
	mov	r8, r1
	ldrh	r2, [r1]
	lsl	r5, r0, #0x10
	asr	r7, r5, #0x10
	add	r0, r2, r7
	cmp	r0, #0x80
	bgt	.LNisCtcList_Sub_PutCtc_3	@cond_branch
	lsl	r0, r2, #0x3
	ldr	r1, .LNisCtcList_Sub_PutCtc_5 + 4 @ OamBak
	add	r3, r0, r1
	mov	r1, ip
	add	r0, r2, r1
	mov	r2, r8
	strh	r0, [r2]
	cmp	r7, #0
	ble	.LNisCtcList_Sub_PutCtc_3	@cond_branch
	mov	r0, #0xff
	lsl	r0, r0, #0x8
	mov	r9, r0
	ldr	r1, .LNisCtcList_Sub_PutCtc_5 + 8 @ 0x1ff
	mov	ip, r1
	mov	r2, #0xfe
	lsl	r2, r2, #0x8
	mov	r8, r2
	ldr	r7, [r6, #0xc]
	ldr	r6, [r6, #0x10]
.LNisCtcList_Sub_PutCtc_4:
	ldrh	r2, [r4]
	add	r4, r4, #0x2
	add	r1, r2, r7
	lsl	r1, r1, #0x10
	mov	r0, #0xff
	lsl	r0, r0, #0x10
	and	r0, r0, r1
	mov	r1, r9
	and	r2, r2, r1
	lsr	r0, r0, #0x10
	orr	r0, r0, r2
	strh	r0, [r3]
	add	r3, r3, #0x2
	ldrh	r1, [r4]
	add	r4, r4, #0x2
	add	r0, r1, r6
	mov	r2, ip
	and	r0, r0, r2
	mov	r2, r8
	and	r1, r1, r2
	orr	r1, r1, r0
	strh	r1, [r3]
	add	r3, r3, #0x2
	ldrh	r0, [r4]
	add	r4, r4, #0x2
	strh	r0, [r3]
	add	r3, r3, #0x4
	ldr	r0, .LNisCtcList_Sub_PutCtc_5 + 12 @ 0xffff0000
	add	r5, r5, r0
	asr	r0, r5, #0x10
	cmp	r0, #0
	bgt	.LNisCtcList_Sub_PutCtc_4	@cond_branch
.LNisCtcList_Sub_PutCtc_3:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtcList_Sub_PutCtc_6:
	.align	2, 0
.LNisCtcList_Sub_PutCtc_5:
	.word	OamIdx
	.word	OamBak
	.word	0x1ff
	.word	0xffff0000
	thumb_func_end NisCtcList_Sub_PutCtc
