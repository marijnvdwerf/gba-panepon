	thumb_func_start NisCtcList_CadPut
NisCtcList_CadPut:
	push	{r4, r5, r6, r7, lr}
	add	r6, r0, #0
	add	r7, r3, #0
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x10
	lsr	r5, r2, #0x10
	bl	NisCtcList_SearchLink
	add	r3, r0, #0
	cmp	r3, #0
	beq	.LNisCtcList_CadPut_1	@cond_branch
	ldr	r0, .LNisCtcList_CadPut_2 @ NisCtc_Sub_CadPut + 1
	str	r0, [r3, #0x8]
	str	r6, [r3, #0x4]
	lsl	r0, r4, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0x10]
	lsl	r0, r5, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0xc]
	str	r7, [r3, #0x18]
.LNisCtcList_CadPut_1:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtcList_CadPut_3:
	.align	2, 0
.LNisCtcList_CadPut_2:
	.word	NisCtc_Sub_CadPut + 1
	thumb_func_end NisCtcList_CadPut
