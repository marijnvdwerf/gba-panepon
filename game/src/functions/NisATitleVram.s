	thumb_func_start NisATitleVram
NisATitleVram:
	push	{r4, r5, lr}
	ldr	r1, .LNisATitleVram_1 @ 0x4000008
	mov	r2, #0xfc
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisATitleVram_1 + 4 @ 0x4000050
	mov	r4, #0x0
	strh	r4, [r0]
	add	r1, r1, #0x4a
	ldr	r2, .LNisATitleVram_1 + 8 @ 0x80e
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisATitleVram_1 + 12 @ 0x4000054
	mov	r5, #0x8
	strh	r5, [r0]
	ldr	r1, .LNisATitleVram_1 + 16 @ 0x10001
	mov	r0, #0x2
	bl	irq_set_ie
	ldr	r0, .LNisATitleVram_1 + 20 @ 0x4000004
	strh	r5, [r0]
	mov	r1, #0x80
	lsl	r1, r1, #0x13
	mov	r2, #0x88
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisATitleVram_1 + 24 @ b_BG0HOFS
	strh	r4, [r0]
	ldr	r0, .LNisATitleVram_1 + 28 @ b_BG0VOFS
	strh	r4, [r0]
	ldr	r0, .LNisATitleVram_1 + 32 @ b_BG1HOFS
	strh	r4, [r0]
	ldr	r0, .LNisATitleVram_1 + 36 @ b_BG1VOFS
	strh	r4, [r0]
	ldr	r0, .LNisATitleVram_1 + 40 @ b_BG2HOFS
	strh	r4, [r0]
	ldr	r0, .LNisATitleVram_1 + 44 @ b_BG2VOFS
	strh	r4, [r0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisATitleVram_2:
	.align	2, 0
.LNisATitleVram_1:
	.word	0x4000008
	.word	0x4000050
	.word	0x80e
	.word	0x4000054
	.word	0x10001
	.word	0x4000004
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	thumb_func_end NisATitleVram
