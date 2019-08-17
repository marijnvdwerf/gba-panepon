	thumb_func_start NisCtcList_EffPut
NisCtcList_EffPut:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r9, r0
	mov	sl, r3
	ldr	r0, [sp, #0x20]
	ldr	r3, [sp, #0x24]
	ldr	r4, [sp, #0x28]
	lsl	r1, r1, #0x10
	lsr	r5, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r6, r2, #0x10
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	lsl	r3, r3, #0x10
	lsr	r7, r3, #0x10
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	bl	NisCtcList_SearchLink
	add	r3, r0, #0
	cmp	r3, #0
	beq	.LNisCtcList_EffPut_1	@cond_branch
	ldr	r0, .LNisCtcList_EffPut_2 @ NisCtc_Sub_EffPut + 1
	str	r0, [r3, #0x8]
	mov	r0, r9
	str	r0, [r3, #0x4]
	lsl	r0, r5, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0x10]
	lsl	r0, r6, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0xc]
	mov	r0, sl
	str	r0, [r3, #0x18]
	mov	r0, r8
	strh	r0, [r3, #0x1c]
	strh	r7, [r3, #0x1e]
	strh	r4, [r3, #0x20]
.LNisCtcList_EffPut_1:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtcList_EffPut_3:
	.align	2, 0
.LNisCtcList_EffPut_2:
	.word	NisCtc_Sub_EffPut + 1
	thumb_func_end NisCtcList_EffPut
