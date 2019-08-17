	thumb_func_start NisCtcList_QuickSort
NisCtcList_QuickSort:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xffffff7c
	mov	r8, r0
	mov	r2, sp
	add	r3, sp, #0x24
	add	r4, sp, #0x48
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x24]
	str	r0, [sp, #0x48]
	mov	r1, r8
	ldr	r0, [r1]
	ldr	r6, [r0, #0x4]
	add	r1, sp, #0x6c
	mov	ip, r1
	add	r1, sp, #0x74
	mov	r9, r1
	add	r1, sp, #0x7c
	mov	sl, r1
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_1	@cond_branch
	mov	r7, #0x0
.LNisCtcList_QuickSort_6:
	ldr	r5, [r0]
	ldr	r1, [r0, #0x4]
	cmp	r1, r6
	ble	.LNisCtcList_QuickSort_2	@cond_branch
	str	r0, [r2]
	add	r2, r0, #0
	str	r7, [r2]
	b	.LNisCtcList_QuickSort_5
.LNisCtcList_QuickSort_2:
	cmp	r1, r6
	bge	.LNisCtcList_QuickSort_4	@cond_branch
	str	r0, [r4]
	add	r4, r0, #0
	str	r7, [r4]
	b	.LNisCtcList_QuickSort_5
.LNisCtcList_QuickSort_4:
	str	r0, [r3]
	add	r3, r0, #0
	str	r7, [r3]
.LNisCtcList_QuickSort_5:
	add	r0, r5, #0
	cmp	r0, #0
	bne	.LNisCtcList_QuickSort_6	@cond_branch
.LNisCtcList_QuickSort_1:
	mov	r5, ip
	cmp	r2, sp
	bne	.LNisCtcList_QuickSort_7	@cond_branch
	mov	r0, #0x0
	str	r0, [sp, #0x6c]
	str	r0, [r5, #0x4]
	b	.LNisCtcList_QuickSort_8
.LNisCtcList_QuickSort_7:
	ldr	r0, [sp]
	str	r0, [sp, #0x6c]
	str	r2, [r5, #0x4]
.LNisCtcList_QuickSort_8:
	mov	r7, r9
	add	r2, sp, #0x24
	cmp	r3, r2
	bne	.LNisCtcList_QuickSort_9	@cond_branch
	mov	r0, #0x0
	str	r0, [sp, #0x74]
	str	r0, [r7, #0x4]
	b	.LNisCtcList_QuickSort_10
.LNisCtcList_QuickSort_9:
	ldr	r0, [sp, #0x24]
	str	r0, [sp, #0x74]
	str	r3, [r7, #0x4]
.LNisCtcList_QuickSort_10:
	mov	r6, sl
	add	r0, sp, #0x48
	cmp	r4, r0
	bne	.LNisCtcList_QuickSort_11	@cond_branch
	mov	r0, #0x0
	str	r0, [sp, #0x7c]
	str	r0, [r6, #0x4]
	b	.LNisCtcList_QuickSort_12
.LNisCtcList_QuickSort_11:
	ldr	r0, [sp, #0x48]
	str	r0, [sp, #0x7c]
	str	r4, [r6, #0x4]
.LNisCtcList_QuickSort_12:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_14	@cond_branch
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_14	@cond_branch
	add	r0, r5, #0
	bl	NisCtcList_QuickSort
.LNisCtcList_QuickSort_14:
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_16	@cond_branch
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_16	@cond_branch
	add	r0, r6, #0
	bl	NisCtcList_QuickSort
.LNisCtcList_QuickSort_16:
	ldr	r2, [r5]
	mov	r1, r8
	str	r2, [r1]
	ldr	r0, [r5, #0x4]
	str	r0, [r1, #0x4]
	ldr	r1, [r7]
	cmp	r1, #0
	beq	.LNisCtcList_QuickSort_17	@cond_branch
	cmp	r2, #0
	bne	.LNisCtcList_QuickSort_18	@cond_branch
	mov	r2, r8
	str	r1, [r2]
	b	.LNisCtcList_QuickSort_19
.LNisCtcList_QuickSort_18:
	str	r1, [r0]
.LNisCtcList_QuickSort_19:
	ldr	r0, [r7, #0x4]
	mov	r1, r8
	str	r0, [r1, #0x4]
.LNisCtcList_QuickSort_17:
	ldr	r1, [r6]
	cmp	r1, #0
	beq	.LNisCtcList_QuickSort_20	@cond_branch
	mov	r2, r8
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.LNisCtcList_QuickSort_21	@cond_branch
	str	r1, [r2]
	b	.LNisCtcList_QuickSort_22
.LNisCtcList_QuickSort_21:
	mov	r2, r8
	ldr	r0, [r2, #0x4]
	str	r1, [r0]
.LNisCtcList_QuickSort_22:
	ldr	r0, [r6, #0x4]
	mov	r1, r8
	str	r0, [r1, #0x4]
.LNisCtcList_QuickSort_20:
	add	sp, sp, #0x84
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end NisCtcList_QuickSort
