	thumb_func_start AnisDrvSub_bcs
AnisDrvSub_bcs:
	push	{r4, r5, lr}
	add	sp, sp, #0xfffffffc
	add	r5, r0, #0
	ldr	r1, [r5]
	ldrb	r3, [r1]
	ldr	r2, .LAnisDrvSub_bcs_3 @ 0xffffff00
	ldr	r0, [sp]
	and	r0, r0, r2
	orr	r0, r0, r3
	str	r0, [sp]
	add	r1, r1, #0x1
	str	r1, [r5]
	mov	r3, sp
	ldrb	r0, [r1]
	strb	r0, [r3, #0x1]
	add	r2, r1, #1
	str	r2, [r5]
	ldrb	r0, [r1, #0x1]
	strb	r0, [r3, #0x2]
	add	r0, r2, #1
	str	r0, [r5]
	ldrb	r1, [r2, #0x1]
	strb	r1, [r3, #0x3]
	add	r0, r0, #0x1
	str	r0, [r5]
	ldr	r1, [sp]
	add	r0, r5, #0
	bl	_call_via_r1
	cmp	r0, #0
	bne	.LAnisDrvSub_bcs_1	@cond_branch
	ldr	r0, [r5]
	add	r0, r0, #0x4
	str	r0, [r5]
	b	.LAnisDrvSub_bcs_2
.LAnisDrvSub_bcs_4:
	.align	2, 0
.LAnisDrvSub_bcs_3:
	.word	0xffffff00
.LAnisDrvSub_bcs_1:
	ldr	r0, [r5]
	ldrb	r4, [r0]
	add	r0, r0, #0x1
	str	r0, [r5]
	ldrb	r3, [r0]
	add	r1, r0, #1
	str	r1, [r5]
	ldrb	r2, [r0, #0x1]
	add	r0, r1, #1
	str	r0, [r5]
	ldrb	r1, [r1, #0x1]
	add	r0, r0, #0x1
	str	r0, [r5]
	strb	r4, [r5]
	strb	r3, [r5, #0x1]
	strb	r2, [r5, #0x2]
	strb	r1, [r5, #0x3]
.LAnisDrvSub_bcs_2:
	add	sp, sp, #0x4
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvSub_bcs
