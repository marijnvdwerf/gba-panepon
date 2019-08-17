	thumb_func_start NisCtcList_SortPut
NisCtcList_SortPut:
	push	{r4, lr}
	ldr	r1, .LNisCtcList_SortPut_5 @ NisCtcListp
	ldr	r0, [r1]
	cmp	r0, #0
	beq	.LNisCtcList_SortPut_2	@cond_branch
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisCtcList_SortPut_2	@cond_branch
	add	r0, r1, #0
	bl	NisCtcList_QuickSort
.LNisCtcList_SortPut_2:
	ldr	r0, .LNisCtcList_SortPut_5 @ NisCtcListp
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.LNisCtcList_SortPut_3	@cond_branch
.LNisCtcList_SortPut_4:
	ldr	r1, [r4, #0x8]
	add	r0, r4, #0
	bl	_call_via_r1
	ldr	r4, [r4]
	cmp	r4, #0
	bne	.LNisCtcList_SortPut_4	@cond_branch
.LNisCtcList_SortPut_3:
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisCtcList_SortPut_6:
	.align	2, 0
.LNisCtcList_SortPut_5:
	.word	NisCtcListp
	thumb_func_end NisCtcList_SortPut
