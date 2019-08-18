	thumb_func_start NisCtc_CadPut
NisCtc_CadPut:
	push	{lr}
	ldr	r3, .LNisCtc_CadPut_1 @ pad8+0x100
	lsl	r0, r0, #0x10
	asr	r0, r0, #0x10
	str	r0, [r3, #0x10]
	lsl	r1, r1, #0x10
	asr	r1, r1, #0x10
	str	r1, [r3, #0xc]
	str	r2, [r3, #0x18]
	add	r0, r3, #0
	bl	NisCtc_Sub_CadPut
	pop	{r0}
	bx	r0
.LNisCtc_CadPut_2:
	.align	2, 0
.LNisCtc_CadPut_1:
	.word	pad8+0x100
	thumb_func_end NisCtc_CadPut
