	thumb_func_start NisCtcList_SearchLink
NisCtcList_SearchLink:
	push	{r4, lr}
	ldr	r4, .LNisCtcList_SearchLink_3 @ NisCtcListIdx
	ldrh	r0, [r4]
	add	r1, r0, #0
	cmp	r1, #0x1
	bls	.LNisCtcList_SearchLink_1	@cond_branch
	mov	r0, #0x0
	b	.LNisCtcList_SearchLink_6
.LNisCtcList_SearchLink_4:
	.align	2, 0
.LNisCtcList_SearchLink_3:
	.word	NisCtcListIdx
.LNisCtcList_SearchLink_1:
	ldr	r3, .LNisCtcList_SearchLink_7 @ NisCtcListp
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.LNisCtcList_SearchLink_5	@cond_branch
	add	r0, r0, #0x1
	strh	r0, [r4]
	lsl	r0, r1, #0x3
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	ldr	r1, .LNisCtcList_SearchLink_7 + 4 @ NisCtcListRam
	add	r0, r0, r1
	ldr	r1, [r3, #0x4]
	str	r0, [r1]
	str	r0, [r3, #0x4]
	mov	r1, #0x0
	str	r1, [r0]
	b	.LNisCtcList_SearchLink_6
.LNisCtcList_SearchLink_8:
	.align	2, 0
.LNisCtcList_SearchLink_7:
	.word	NisCtcListp
	.word	NisCtcListRam
.LNisCtcList_SearchLink_5:
	mov	r0, #0x1
	strh	r0, [r4]
	ldr	r0, .LNisCtcList_SearchLink_9 @ NisCtcListRam
	str	r0, [r3]
	str	r0, [r3, #0x4]
	str	r2, [r0]
.LNisCtcList_SearchLink_6:
	pop	{r4}
	pop	{r1}
	bx	r1
.LNisCtcList_SearchLink_10:
	.align	2, 0
.LNisCtcList_SearchLink_9:
	.word	NisCtcListRam
	thumb_func_end NisCtcList_SearchLink
