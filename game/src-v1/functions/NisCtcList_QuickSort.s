	thumb_func_start NisCtcList_QuickSort
NisCtcList_QuickSort:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	ldr	r0, .LNisCtcList_QuickSort_4 @ pad8+0xec
	ldr	r4, .LNisCtcList_QuickSort_4 + 4 @ pad8+0x78
	str	r4, [r0]
	ldr	r1, .LNisCtcList_QuickSort_4 + 8 @ pad8+0xf0
	ldr	r3, .LNisCtcList_QuickSort_4 + 12 @ pad8+0xa0
	str	r3, [r1]
	ldr	r5, .LNisCtcList_QuickSort_4 + 16 @ pad8+0xf4
	ldr	r2, .LNisCtcList_QuickSort_4 + 20 @ pad8+0xc8
	str	r2, [r5]
	mov	r0, #0x0
	str	r0, [r4]
	str	r0, [r3]
	str	r0, [r2]
	ldr	r1, [r7]
	ldr	r0, [r1, #0x4]
	ldr	r6, .LNisCtcList_QuickSort_4 + 24 @ pad8+0x4c
	str	r0, [r6]
	ldr	r0, .LNisCtcList_QuickSort_4 + 28 @ pad8+0xf8
	str	r1, [r0]
	ldr	r2, .LNisCtcList_QuickSort_4 + 32 @ pad8+0x50
	mov	r9, r2
	ldr	r4, .LNisCtcList_QuickSort_4 + 36 @ pad8+0x58
	mov	sl, r4
	cmp	r1, #0
	beq	.LNisCtcList_QuickSort_1	@cond_branch
	ldr	r6, .LNisCtcList_QuickSort_4 + 40 @ pad8+0xfc
	mov	ip, r6
	mov	r8, r0
	mov	r3, #0x0
	ldr	r4, .LNisCtcList_QuickSort_4 + 8 @ pad8+0xf0
.LNisCtcList_QuickSort_8:
	mov	r0, r8
	ldr	r1, [r0]
	ldr	r0, [r1]
	mov	r2, ip
	str	r0, [r2]
	ldr	r2, [r1, #0x4]
	ldr	r6, .LNisCtcList_QuickSort_4 + 24 @ pad8+0x4c
	ldr	r0, [r6]
	cmp	r2, r0
	ble	.LNisCtcList_QuickSort_2	@cond_branch
	ldr	r2, .LNisCtcList_QuickSort_4 @ pad8+0xec
	ldr	r0, [r2]
	str	r1, [r0]
	str	r1, [r2]
	b	.LNisCtcList_QuickSort_7
.LNisCtcList_QuickSort_5:
	.align	2, 0
.LNisCtcList_QuickSort_4:
	.word	pad8+0xec
	.word	pad8+0x78
	.word	pad8+0xf0
	.word	pad8+0xa0
	.word	pad8+0xf4
	.word	pad8+0xc8
	.word	pad8+0x4c
	.word	pad8+0xf8
	.word	pad8+0x50
	.word	pad8+0x58
	.word	pad8+0xfc
.LNisCtcList_QuickSort_2:
	cmp	r2, r0
	bge	.LNisCtcList_QuickSort_6	@cond_branch
	ldr	r0, [r5]
	str	r1, [r0]
	str	r1, [r5]
	b	.LNisCtcList_QuickSort_7
.LNisCtcList_QuickSort_6:
	ldr	r0, [r4]
	str	r1, [r0]
	str	r1, [r4]
.LNisCtcList_QuickSort_7:
	str	r3, [r1]
	mov	r6, ip
	ldr	r0, [r6]
	mov	r1, r8
	str	r0, [r1]
	cmp	r0, #0
	bne	.LNisCtcList_QuickSort_8	@cond_branch
.LNisCtcList_QuickSort_1:
	mov	r2, r9
	ldr	r4, .LNisCtcList_QuickSort_11 @ pad8+0x68
	str	r2, [r4]
	ldr	r6, .LNisCtcList_QuickSort_11 + 4 @ pad8+0xec
	ldr	r0, [r6]
	ldr	r1, .LNisCtcList_QuickSort_11 + 8 @ pad8+0x78
	cmp	r0, r1
	bne	.LNisCtcList_QuickSort_9	@cond_branch
	mov	r0, #0x0
	str	r0, [r2]
	str	r0, [r2, #0x4]
	b	.LNisCtcList_QuickSort_10
.LNisCtcList_QuickSort_12:
	.align	2, 0
.LNisCtcList_QuickSort_11:
	.word	pad8+0x68
	.word	pad8+0xec
	.word	pad8+0x78
.LNisCtcList_QuickSort_9:
	ldr	r2, .LNisCtcList_QuickSort_15 @ pad8+0x78
	ldr	r0, [r2]
	mov	r4, r9
	str	r0, [r4]
	ldr	r6, .LNisCtcList_QuickSort_15 + 4 @ pad8+0xec
	ldr	r0, [r6]
	str	r0, [r4, #0x4]
.LNisCtcList_QuickSort_10:
	ldr	r0, .LNisCtcList_QuickSort_15 + 8 @ pad8+0x6c
	mov	r1, sl
	str	r1, [r0]
	ldr	r2, .LNisCtcList_QuickSort_15 + 12 @ pad8+0xf0
	ldr	r0, [r2]
	ldr	r4, .LNisCtcList_QuickSort_15 + 16 @ pad8+0xa0
	cmp	r0, r4
	bne	.LNisCtcList_QuickSort_13	@cond_branch
	mov	r0, #0x0
	str	r0, [r1]
	b	.LNisCtcList_QuickSort_14
.LNisCtcList_QuickSort_16:
	.align	2, 0
.LNisCtcList_QuickSort_15:
	.word	pad8+0x78
	.word	pad8+0xec
	.word	pad8+0x6c
	.word	pad8+0xf0
	.word	pad8+0xa0
.LNisCtcList_QuickSort_13:
	ldr	r6, .LNisCtcList_QuickSort_19 @ pad8+0xa0
	ldr	r0, [r6]
	mov	r1, sl
	str	r0, [r1]
	ldr	r2, .LNisCtcList_QuickSort_19 + 4 @ pad8+0xf0
	ldr	r0, [r2]
.LNisCtcList_QuickSort_14:
	str	r0, [r1, #0x4]
	ldr	r0, .LNisCtcList_QuickSort_19 + 8 @ pad8+0x70
	ldr	r4, .LNisCtcList_QuickSort_19 + 12 @ pad8+0x60
	str	r4, [r0]
	ldr	r6, .LNisCtcList_QuickSort_19 + 16 @ pad8+0xf4
	ldr	r0, [r6]
	ldr	r1, .LNisCtcList_QuickSort_19 + 20 @ pad8+0xc8
	cmp	r0, r1
	bne	.LNisCtcList_QuickSort_17	@cond_branch
	mov	r0, #0x0
	str	r0, [r4]
	b	.LNisCtcList_QuickSort_18
.LNisCtcList_QuickSort_20:
	.align	2, 0
.LNisCtcList_QuickSort_19:
	.word	pad8+0xa0
	.word	pad8+0xf0
	.word	pad8+0x70
	.word	pad8+0x60
	.word	pad8+0xf4
	.word	pad8+0xc8
.LNisCtcList_QuickSort_17:
	ldr	r2, .LNisCtcList_QuickSort_28 @ pad8+0xc8
	ldr	r0, [r2]
	ldr	r4, .LNisCtcList_QuickSort_28 + 4 @ pad8+0x60
	str	r0, [r4]
	ldr	r6, .LNisCtcList_QuickSort_28 + 8 @ pad8+0xf4
	ldr	r0, [r6]
.LNisCtcList_QuickSort_18:
	str	r0, [r4, #0x4]
	ldr	r0, .LNisCtcList_QuickSort_28 + 12 @ pad8+0x68
	ldr	r1, [r0]
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_22	@cond_branch
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_22	@cond_branch
	add	r0, r1, #0
	bl	NisCtcList_QuickSort
.LNisCtcList_QuickSort_22:
	ldr	r0, .LNisCtcList_QuickSort_28 + 16 @ pad8+0x70
	ldr	r1, [r0]
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_24	@cond_branch
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_24	@cond_branch
	add	r0, r1, #0
	bl	NisCtcList_QuickSort
.LNisCtcList_QuickSort_24:
	ldr	r0, .LNisCtcList_QuickSort_28 + 12 @ pad8+0x68
	ldr	r0, [r0]
	ldr	r2, [r0]
	str	r2, [r7]
	ldr	r3, [r0, #0x4]
	str	r3, [r7, #0x4]
	ldr	r1, .LNisCtcList_QuickSort_28 + 20 @ pad8+0x6c
	ldr	r0, [r1]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_QuickSort_25	@cond_branch
	cmp	r2, #0
	bne	.LNisCtcList_QuickSort_26	@cond_branch
	str	r0, [r7]
	b	.LNisCtcList_QuickSort_27
.LNisCtcList_QuickSort_29:
	.align	2, 0
.LNisCtcList_QuickSort_28:
	.word	pad8+0xc8
	.word	pad8+0x60
	.word	pad8+0xf4
	.word	pad8+0x68
	.word	pad8+0x70
	.word	pad8+0x6c
.LNisCtcList_QuickSort_26:
	str	r0, [r3]
.LNisCtcList_QuickSort_27:
	ldr	r0, [r1]
	ldr	r0, [r0, #0x4]
	str	r0, [r7, #0x4]
.LNisCtcList_QuickSort_25:
	ldr	r1, .LNisCtcList_QuickSort_33 @ pad8+0x70
	ldr	r0, [r1]
	ldr	r2, [r0]
	cmp	r2, #0
	beq	.LNisCtcList_QuickSort_30	@cond_branch
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.LNisCtcList_QuickSort_31	@cond_branch
	str	r2, [r7]
	b	.LNisCtcList_QuickSort_32
.LNisCtcList_QuickSort_34:
	.align	2, 0
.LNisCtcList_QuickSort_33:
	.word	pad8+0x70
.LNisCtcList_QuickSort_31:
	ldr	r0, [r7, #0x4]
	str	r2, [r0]
.LNisCtcList_QuickSort_32:
	ldr	r0, [r1]
	ldr	r0, [r0, #0x4]
	str	r0, [r7, #0x4]
.LNisCtcList_QuickSort_30:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end NisCtcList_QuickSort
