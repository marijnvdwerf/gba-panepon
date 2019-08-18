	thumb_func_start NisCtc_EffPut
NisCtc_EffPut:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	ldr	r5, [sp, #0x10]
	ldr	r6, [sp, #0x14]
	ldr	r0, .LNisCtc_EffPut_1 @ pad8+0x128
	lsl	r4, r4, #0x10
	asr	r4, r4, #0x10
	str	r4, [r0, #0x10]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	str	r1, [r0, #0xc]
	str	r2, [r0, #0x18]
	strh	r3, [r0, #0x1c]
	strh	r5, [r0, #0x1e]
	strh	r6, [r0, #0x20]
	bl	NisCtc_Sub_EffPut
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LNisCtc_EffPut_2:
	.align	2, 0
.LNisCtc_EffPut_1:
	.word	pad8+0x128
	thumb_func_end NisCtc_EffPut
