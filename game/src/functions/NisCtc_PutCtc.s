	thumb_func_start NisCtc_PutCtc
NisCtc_PutCtc:
	push	{lr}
	add	sp, sp, #0xffffffdc
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	str	r0, [sp, #0x10]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x18]
	mov	r0, sp
	bl	NisCtcList_Sub_PutCtc
	add	sp, sp, #0x24
	pop	{r0}
	bx	r0
	thumb_func_end NisCtc_PutCtc
