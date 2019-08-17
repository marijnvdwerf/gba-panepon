	thumb_func_start NisSelectInit
NisSelectInit:
	push	{r4, r5, r6, lr}
	add	sp, sp, #0xffffffe8
	bl	NisSelectSub_Every
	ldr	r0, .LNisSelectInit_1 @ MDCPC_BUF_Help
	ldr	r1, .LNisSelectInit_1 + 4 @ 0x600c000
	mov	r2, #0x1b
	str	r2, [sp]
	mov	r2, #0x7
	str	r2, [sp, #0x4]
	mov	r5, #0x2
	str	r5, [sp, #0x8]
	str	r5, [sp, #0xc]
	mov	r2, #0x3
	str	r2, [sp, #0x10]
	mov	r4, #0x0
	str	r4, [sp, #0x14]
	mov	r2, #0x11
	mov	r3, #0x3
	bl	MDCPC_init
	ldr	r6, .LNisSelectInit_1 + 8 @ MDCPC_BUF_Main
	ldr	r1, .LNisSelectInit_1 + 12 @ 0x600d000
	mov	r0, #0xe
	str	r0, [sp]
	mov	r0, #0x10
	str	r0, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r0, #0x1
	str	r0, [sp, #0xc]
	str	r5, [sp, #0x10]
	str	r4, [sp, #0x14]
	add	r0, r6, #0
	mov	r2, #0x2
	mov	r3, #0x5
	bl	MDCPC_init
	bl	NisSelectSub_Search
	ldr	r1, [r0, #0xc]
	add	r0, r6, #0
	bl	MDCPC_start
	ldr	r0, .LNisSelectInit_1 + 16 @ NisSelectMain + 1
	bl	MainSeqSearchNear
	add	sp, sp, #0x18
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LNisSelectInit_2:
	.align	2, 0
.LNisSelectInit_1:
	.word	MDCPC_BUF_Help
	.word	0x600c000
	.word	MDCPC_BUF_Main
	.word	0x600d000
	.word	NisSelectMain + 1
	thumb_func_end NisSelectInit
