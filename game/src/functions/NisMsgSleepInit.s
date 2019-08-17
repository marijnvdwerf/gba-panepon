	thumb_func_start NisMsgSleepInit
NisMsgSleepInit:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #0xffffffe8
	mov	r0, #0x0
	ldr	r7, .LNisMsgSleepInit_5 @ MDCPC_BUF_Main
	ldr	r6, .LNisMsgSleepInit_5 + 4 @ np_Msg_SleepMode
	mov	r4, #0x0
	ldr	r5, .LNisMsgSleepInit_5 + 8 @ 0x600b83a
	mov	r3, #0x0
.LNisMsgSleepInit_2:
	mov	r2, #0x1d
	add	r1, r3, r5
.LNisMsgSleepInit_1:
	strh	r4, [r1]
	sub	r1, r1, #0x2
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.LNisMsgSleepInit_1	@cond_branch
	add	r3, r3, #0x40
	add	r0, r0, #0x1
	cmp	r0, #0x13
	ble	.LNisMsgSleepInit_2	@cond_branch
	mov	r0, #0x3
	ldr	r1, .LNisMsgSleepInit_5 + 12 @ 0x203f
	add	r3, r1, #0
	ldr	r4, .LNisMsgSleepInit_5 + 16 @ 0x600b804
.LNisMsgSleepInit_4:
	add	r1, r0, #1
	lsl	r0, r0, #0x6
	add	r0, r0, r4
	mov	r2, #0x19
.LNisMsgSleepInit_3:
	strh	r3, [r0]
	add	r0, r0, #0x2
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.LNisMsgSleepInit_3	@cond_branch
	add	r0, r1, #0
	cmp	r0, #0xf
	ble	.LNisMsgSleepInit_4	@cond_branch
	mov	r4, #0x0
	ldr	r1, .LNisMsgSleepInit_5 + 20 @ 0x600b800
	mov	r0, #0x1b
	str	r0, [sp]
	mov	r0, #0xf
	str	r0, [sp, #0x4]
	mov	r0, #0x1
	str	r0, [sp, #0x8]
	str	r0, [sp, #0xc]
	mov	r0, #0x2
	str	r0, [sp, #0x10]
	str	r6, [sp, #0x14]
	add	r0, r7, #0
	mov	r2, #0x3
	mov	r3, #0x4
	bl	MDCPC_init
	mov	r0, #0x64
	bl	m4aSongNumStart
	ldr	r1, .LNisMsgSleepInit_5 + 24 @ 0x4000008
	mov	r2, #0xb8
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	sub	r1, r1, #0x8
	mov	r2, #0x94
	lsl	r2, r2, #0x4
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LNisMsgSleepInit_5 + 28 @ 0x4000050
	strh	r4, [r0]
	ldr	r0, .LNisMsgSleepInit_5 + 32 @ NisMsgSleepMain + 1
	bl	MainSeqSearchNear
	add	sp, sp, #0x18
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisMsgSleepInit_6:
	.align	2, 0
.LNisMsgSleepInit_5:
	.word	MDCPC_BUF_Main
	.word	np_Msg_SleepMode
	.word	0x600b83a
	.word	0x203f
	.word	0x600b804
	.word	0x600b800
	.word	0x4000008
	.word	0x4000050
	.word	NisMsgSleepMain + 1
	thumb_func_end NisMsgSleepInit
