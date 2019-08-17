	thumb_func_start AnisDrvSub_tjmp
AnisDrvSub_tjmp:
	push	{r4, r5, lr}
	add	sp, sp, #0xfffffffc
	add	r4, r0, #0
	ldr	r1, [r4]
	ldrb	r3, [r1]
	ldr	r2, .LAnisDrvSub_tjmp_1 @ 0xffffff00
	ldr	r0, [sp]
	and	r0, r0, r2
	orr	r0, r0, r3
	str	r0, [sp]
	add	r1, r1, #0x1
	str	r1, [r4]
	mov	r3, sp
	ldrb	r0, [r1]
	strb	r0, [r3, #0x1]
	add	r2, r1, #1
	str	r2, [r4]
	ldrb	r0, [r1, #0x1]
	strb	r0, [r3, #0x2]
	add	r0, r2, #1
	str	r0, [r4]
	ldrb	r1, [r2, #0x1]
	strb	r1, [r3, #0x3]
	add	r0, r0, #0x1
	str	r0, [r4]
	ldr	r1, [sp]
	add	r0, r4, #0
	bl	_call_via_r1
	lsl	r0, r0, #0x2
	ldr	r1, [r4]
	add	r1, r1, r0
	str	r1, [r4]
	ldrb	r5, [r1]
	add	r0, r1, #1
	str	r0, [r4]
	ldrb	r3, [r1, #0x1]
	add	r1, r0, #1
	str	r1, [r4]
	ldrb	r2, [r0, #0x1]
	add	r0, r1, #1
	str	r0, [r4]
	ldrb	r1, [r1, #0x1]
	add	r0, r0, #0x1
	str	r0, [r4]
	strb	r5, [r4]
	strb	r3, [r4, #0x1]
	strb	r2, [r4, #0x2]
	strb	r1, [r4, #0x3]
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LAnisDrvSub_tjmp_2:
	.align	2, 0
.LAnisDrvSub_tjmp_1:
	.word	0xffffff00
	thumb_func_end AnisDrvSub_tjmp
