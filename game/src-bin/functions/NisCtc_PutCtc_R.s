	thumb_func_start NisCtc_PutCtc_R
NisCtc_PutCtc_R:
	push	{lr}
	add	r3, r0, #0
	ldr	r0, .LNisCtc_PutCtc_R_1 @ pad8+0x28
	str	r3, [r0, #0x10]
	str	r1, [r0, #0xc]
	str	r2, [r0, #0x18]
	bl	NisCtcList_Sub_PutCtc_R
	pop	{r0}
	bx	r0
.LNisCtc_PutCtc_R_2:
	.align	2, 0
.LNisCtc_PutCtc_R_1:
	.word	pad8+0x28
	thumb_func_end NisCtc_PutCtc_R
