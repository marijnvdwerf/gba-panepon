	thumb_func_start NisCtc_Obj1Put
NisCtc_Obj1Put:
	push	{r4, r5, lr}
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	ldr	r3, .LNisCtc_Obj1Put_2 @ OamIdx
	ldrh	r0, [r3]
	cmp	r0, #0x7f
	bhi	.LNisCtc_Obj1Put_1	@cond_branch
	lsl	r0, r0, #0x3
	ldr	r1, .LNisCtc_Obj1Put_2 + 4 @ OamBak
	add	r0, r0, r1
	strh	r5, [r0]
	strh	r4, [r0, #0x2]
	strh	r2, [r0, #0x4]
	ldrh	r0, [r3]
	add	r0, r0, #0x1
	strh	r0, [r3]
.LNisCtc_Obj1Put_1:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisCtc_Obj1Put_3:
	.align	2, 0
.LNisCtc_Obj1Put_2:
	.word	OamIdx
	.word	OamBak
	thumb_func_end NisCtc_Obj1Put
