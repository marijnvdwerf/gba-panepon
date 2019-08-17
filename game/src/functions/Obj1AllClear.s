	thumb_func_start Obj1AllClear
Obj1AllClear:
	push	{lr}
	add	sp, sp, #0xfffffffc
	mov	r3, #0xa0
	str	r3, [sp]
	ldr	r0, .LObj1AllClear_1 @ 0x40000d4
	mov	r1, sp
	str	r1, [r0]
	mov	r1, #0xe0
	lsl	r1, r1, #0x13
	str	r1, [r0, #0x4]
	ldr	r2, .LObj1AllClear_1 + 4 @ 0x85000100
	str	r2, [r0, #0x8]
	ldr	r1, [r0, #0x8]
	str	r3, [sp]
	mov	r1, sp
	str	r1, [r0]
	ldr	r1, .LObj1AllClear_1 + 8 @ OamBak
	str	r1, [r0, #0x4]
	str	r2, [r0, #0x8]
	ldr	r0, [r0, #0x8]
	ldr	r0, .LObj1AllClear_1 + 12 @ OamIdx
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .LObj1AllClear_1 + 16 @ OamParaId0
	strh	r1, [r0]
	ldr	r0, .LObj1AllClear_1 + 20 @ OamParaIdx
	strh	r1, [r0]
	bl	NisCtcPara_Init
	ldr	r1, .LObj1AllClear_1 + 24 @ NisCtcListp
	mov	r0, #0x0
	str	r0, [r1]
	str	r0, [r1, #0x4]
	ldr	r1, .LObj1AllClear_1 + 28 @ NisCtcListIdx
	strh	r0, [r1]
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.LObj1AllClear_2:
	.align	2, 0
.LObj1AllClear_1:
	.word	0x40000d4
	.word	0x85000100
	.word	OamBak
	.word	OamIdx
	.word	OamParaId0
	.word	OamParaIdx
	.word	NisCtcListp
	.word	NisCtcListIdx
	thumb_func_end Obj1AllClear
