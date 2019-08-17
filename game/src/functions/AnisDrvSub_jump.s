	thumb_func_start AnisDrvSub_jump
AnisDrvSub_jump:
	push	{r4, r5, lr}
	ldr	r1, [r0]
	ldrb	r5, [r1]
	add	r1, r1, #0x1
	str	r1, [r0]
	ldrb	r4, [r1]
	add	r2, r1, #1
	str	r2, [r0]
	ldrb	r3, [r1, #0x1]
	add	r1, r2, #1
	str	r1, [r0]
	ldrb	r2, [r2, #0x1]
	add	r1, r1, #0x1
	str	r1, [r0]
	strb	r5, [r0]
	strb	r4, [r0, #0x1]
	strb	r3, [r0, #0x2]
	strb	r2, [r0, #0x3]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvSub_jump
