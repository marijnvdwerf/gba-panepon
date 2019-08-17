	thumb_func_start NisTitleVram
NisTitleVram:
	push	{r4, r5, lr}
	ldr	r1, .LNisTitleVram_1 @ 0x4000008
	mov	r2, #0xc0
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r2, .LNisTitleVram_1 + 4 @ 0x1901
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r2, .LNisTitleVram_1 + 8 @ 0x1a02
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r2, .LNisTitleVram_1 + 12 @ 0x1e03
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisTitleVram_1 + 16 @ 0x4000050
	mov	r4, #0x0
	strh	r4, [r0]
	add	r1, r1, #0x44
	ldr	r2, .LNisTitleVram_1 + 20 @ 0x80e
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisTitleVram_1 + 24 @ 0x4000054
	mov	r5, #0x8
	strh	r5, [r0]
	ldr	r1, .LNisTitleVram_1 + 28 @ 0x10001
	mov	r0, #0x2
	bl	irq_set_ie
	ldr	r0, .LNisTitleVram_1 + 32 @ 0x4000004
	strh	r5, [r0]
	mov	r1, #0x80
	lsl	r1, r1, #0x13
	mov	r2, #0xfa
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisTitleVram_1 + 36 @ b_BG0HOFS
	strh	r4, [r0]
	ldr	r0, .LNisTitleVram_1 + 40 @ b_BG0VOFS
	strh	r4, [r0]
	ldr	r0, .LNisTitleVram_1 + 44 @ b_BG1HOFS
	strh	r4, [r0]
	ldr	r0, .LNisTitleVram_1 + 48 @ b_BG1VOFS
	strh	r4, [r0]
	ldr	r0, .LNisTitleVram_1 + 52 @ b_BG2HOFS
	strh	r4, [r0]
	ldr	r0, .LNisTitleVram_1 + 56 @ b_BG2VOFS
	strh	r4, [r0]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNisTitleVram_2:
	.align	2, 0
.LNisTitleVram_1:
	.word	0x4000008
	.word	0x1901
	.word	0x1a02
	.word	0x1e03
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
	thumb_func_end NisTitleVram
