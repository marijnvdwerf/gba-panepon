	thumb_func_start sub_200C03C
sub_200C03C:
	push	{r4, r5, lr}
	ldr	r1, .Lsub_200C03C_1 @ 0x40000d4
	ldr	r0, .Lsub_200C03C_1 + 4 @ healthsafety_jp_Acl
	str	r0, [r1]
	mov	r0, #0xa0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .Lsub_200C03C_1 + 8 @ 0x84000008
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	ldr	r1, .Lsub_200C03C_1 + 12 @ 0x500000c
	ldr	r2, .Lsub_200C03C_1 + 16 @ 0xffff
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .Lsub_200C03C_1 + 20 @ healthsafety_jp_Acg_LZ
	mov	r1, #0xc0
	lsl	r1, r1, #0x13
	bl	LZ77UnCompVram
	ldr	r0, .Lsub_200C03C_1 + 24 @ healthsafety_jp_Asc_LZ
	ldr	r1, .Lsub_200C03C_1 + 28 @ 0x600c000
	bl	LZ77UnCompVram
	ldr	r4, .Lsub_200C03C_1 + 32 @ 0x4000054
	mov	r3, #0x10
	strh	r3, [r4]
	ldr	r0, .Lsub_200C03C_1 + 36 @ b_BG0HOFS
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 40 @ b_BG0VOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 44 @ b_BG1HOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 48 @ b_BG1VOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 52 @ b_BG2HOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 56 @ b_BG2VOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 60 @ b_BG3HOFS
	strh	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 64 @ b_BG3VOFS
	strh	r1, [r0]
	ldr	r2, .Lsub_200C03C_1 + 68 @ 0x4000008
	mov	r5, #0xc0
	lsl	r5, r5, #0x5
	add	r0, r5, #0
	strh	r0, [r2]
	add	r2, r2, #0x48
	mov	r0, #0x81
	strh	r0, [r2]
	strh	r3, [r4]
	add	r2, r2, #0x2
	ldr	r3, .Lsub_200C03C_1 + 72 @ 0x80e
	add	r0, r3, #0
	strh	r0, [r2]
	ldr	r3, .Lsub_200C03C_1 + 76 @ 0x4000208
	strh	r1, [r3]
	ldr	r1, .Lsub_200C03C_1 + 80 @ 0x4000200
	ldrh	r0, [r1]
	strh	r0, [r1]
	ldrh	r0, [r1]
	mov	r2, #0x1
	orr	r0, r0, r2
	strh	r0, [r1]
	strh	r2, [r3]
	ldr	r1, .Lsub_200C03C_1 + 84 @ 0x4000004
	mov	r0, #0x8
	strh	r0, [r1]
	sub	r1, r1, #0x4
	mov	r5, #0x80
	lsl	r5, r5, #0x1
	add	r0, r5, #0
	strh	r0, [r1]
	ldr	r0, .Lsub_200C03C_1 + 88 @ pad8
	mov	r1, #0x0
	str	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 92 @ pad8+0x4
	str	r1, [r0]
	ldr	r0, .Lsub_200C03C_1 + 96 @ sub_200C14C + 1
	bl	MainSeqSearchNear
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lsub_200C03C_2:
	.align	2, 0
.Lsub_200C03C_1:
	.word	0x40000d4
	.word	healthsafety_jp_Acl
	.word	0x84000008
	.word	0x500000c
	.word	0xffff
	.word	healthsafety_jp_Acg_LZ
	.word	healthsafety_jp_Asc_LZ
	.word	0x600c000
	.word	0x4000054
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	.word	b_BG3HOFS
	.word	b_BG3VOFS
	.word	0x4000008
	.word	0x80e
	.word	0x4000208
	.word	0x4000200
	.word	0x4000004
	.word	pad9
	.word	pad9+0x4
	.word	sub_200C14C + 1
	thumb_func_end sub_200C03C
