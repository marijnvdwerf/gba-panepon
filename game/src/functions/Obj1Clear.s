	thumb_func_start Obj1Clear
Obj1Clear:
	push	{r4, lr}
	bl	NisCtcList_SortPut
	ldr	r0, .LObj1Clear_3 @ OamIdx
	ldrh	r2, [r0]
	cmp	r2, #0x7f
	bgt	.LObj1Clear_1	@cond_branch
	ldr	r1, .LObj1Clear_3 + 4 @ OamBak
	mov	r4, #0xa0
	mov	r3, #0x0
	lsl	r0, r2, #0x3
	add	r0, r0, r1
.LObj1Clear_2:
	strh	r4, [r0]
	strh	r3, [r0, #0x2]
	strh	r3, [r0, #0x4]
	add	r0, r0, #0x8
	add	r2, r2, #0x1
	cmp	r2, #0x7f
	ble	.LObj1Clear_2	@cond_branch
.LObj1Clear_1:
	ldr	r1, .LObj1Clear_3 @ OamIdx
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r1, .LObj1Clear_3 + 8 @ OamParaIdx
	ldr	r0, .LObj1Clear_3 + 12 @ OamParaId0
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .LObj1Clear_3 + 16 @ NisCtcListp
	mov	r0, #0x0
	str	r0, [r1]
	str	r0, [r1, #0x4]
	ldr	r1, .LObj1Clear_3 + 20 @ NisCtcListIdx
	strh	r0, [r1]
	pop	{r4}
	pop	{r0}
	bx	r0
.LObj1Clear_4:
	.align	2, 0
.LObj1Clear_3:
	.word	OamIdx
	.word	OamBak
	.word	OamParaIdx
	.word	OamParaId0
	.word	NisCtcListp
	.word	NisCtcListIdx
	thumb_func_end Obj1Clear
