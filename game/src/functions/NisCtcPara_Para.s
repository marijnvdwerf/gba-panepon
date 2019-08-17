	thumb_func_start NisCtcPara_Para
NisCtcPara_Para:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	add	r7, r3, #0
	ldr	r3, .LNisCtcPara_Para_2 @ OamParaIdx
	ldrh	r0, [r3]
	cmp	r0, #0x1f
	bhi	.LNisCtcPara_Para_1	@cond_branch
	lsl	r1, r0, #0x5
	ldr	r2, .LNisCtcPara_Para_2 + 4 @ OamBak
	add	r1, r1, r2
	add	r1, r1, #0x6
	add	r0, r0, #0x1
	strh	r0, [r3]
	strh	r4, [r1]
	add	r1, r1, #0x8
	strh	r5, [r1]
	add	r1, r1, #0x8
	strh	r6, [r1]
	strh	r7, [r1, #0x8]
.LNisCtcPara_Para_1:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtcPara_Para_3:
	.align	2, 0
.LNisCtcPara_Para_2:
	.word	OamParaIdx
	.word	OamBak
	thumb_func_end NisCtcPara_Para
