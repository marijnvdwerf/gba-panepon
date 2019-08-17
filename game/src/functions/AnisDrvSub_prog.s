	thumb_func_start AnisDrvSub_prog
AnisDrvSub_prog:
	push	{r4, lr}
	add	sp, sp, #0xfffffffc
	ldr	r2, [r0]
	ldrb	r4, [r2]
	ldr	r3, .LAnisDrvSub_prog_1 @ 0xffffff00
	ldr	r1, [sp]
	and	r1, r1, r3
	orr	r1, r1, r4
	str	r1, [sp]
	add	r2, r2, #0x1
	str	r2, [r0]
	mov	r4, sp
	ldrb	r1, [r2]
	strb	r1, [r4, #0x1]
	add	r3, r2, #1
	str	r3, [r0]
	ldrb	r1, [r2, #0x1]
	strb	r1, [r4, #0x2]
	add	r1, r3, #1
	str	r1, [r0]
	ldrb	r2, [r3, #0x1]
	strb	r2, [r4, #0x3]
	add	r1, r1, #0x1
	str	r1, [r0]
	ldr	r1, [sp]
	bl	_call_via_r1
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.LAnisDrvSub_prog_2:
	.align	2, 0
.LAnisDrvSub_prog_1:
	.word	0xffffff00
	thumb_func_end AnisDrvSub_prog
