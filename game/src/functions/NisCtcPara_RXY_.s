	thumb_func_start NisCtcPara_RXY_
NisCtcPara_RXY_:
	push	{r4, lr}
	ldr	r4, .LNisCtcPara_RXY__2 @ OamParaIdx
	ldrh	r0, [r4]
	cmp	r0, #0x1f
	bhi	.LNisCtcPara_RXY__1	@cond_branch
	mov	r3, #0x0
	add	r2, r0, #0
	lsl	r0, r2, #0x5
	ldr	r1, .LNisCtcPara_RXY__2 + 4 @ OamBak
	add	r0, r0, r1
	add	r0, r0, #0x6
	add	r2, r2, #0x1
	strh	r2, [r4]
	strh	r3, [r0]
	add	r0, r0, #0x8
	strh	r3, [r0]
	add	r0, r0, #0x8
	strh	r3, [r0]
	add	r0, r0, #0x8
	strh	r3, [r0]
.LNisCtcPara_RXY__1:
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisCtcPara_RXY__3:
	.align	2, 0
.LNisCtcPara_RXY__2:
	.word	OamParaIdx
	.word	OamBak
	thumb_func_end NisCtcPara_RXY_
