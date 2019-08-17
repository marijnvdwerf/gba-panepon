	thumb_func_start NisCtc_EffPut
NisCtc_EffPut:
	push	{r4, r5, lr}
	add	sp, sp, #0xffffffdc
	ldr	r4, [sp, #0x30]
	ldr	r5, [sp, #0x34]
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	str	r0, [sp, #0x10]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	str	r1, [sp, #0xc]
	str	r2, [sp, #0x18]
	mov	r0, sp
	strh	r3, [r0, #0x1c]
	strh	r4, [r0, #0x1e]
	strh	r5, [r0, #0x20]
	bl	NisCtc_Sub_EffPut
	add	sp, sp, #0x24
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end NisCtc_EffPut
