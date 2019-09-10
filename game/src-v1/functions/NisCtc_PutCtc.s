	thumb_func_start NisCtc_PutCtc
NisCtc_PutCtc:
	push	{lr}
	ldr	r3, .LNisCtc_PutCtc_1 @ pad8
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0x10]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x18]
	add	r0, r3, #0
	bl	NisCtcList_Sub_PutCtc
	pop	{r0}
	bx	r0
.LNisCtc_PutCtc_2:
	.align	2, 0
.LNisCtc_PutCtc_1:
	.word	pad8
	thumb_func_end NisCtc_PutCtc
