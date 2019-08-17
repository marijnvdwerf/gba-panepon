	thumb_func_start NisCtc_PutCtc_R
NisCtc_PutCtc_R:
	push	{lr}
	add	sp, sp, #0xffffffdc
	str	r0, [sp, #0x10]
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x18]
	mov	r0, sp
	bl	NisCtcList_Sub_PutCtc_R
	add	sp, sp, #0x24
	pop	{r0}
	bx	r0
	thumb_func_end NisCtc_PutCtc_R
