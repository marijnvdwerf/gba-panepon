	thumb_func_start AnisDrvStart1
AnisDrvStart1:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	bl	AnisDrvInit
	ldrh	r2, [r4, #0x1e]
	mov	r0, #0x1
	mov	r3, #0x0
	mov	r1, #0x0
	orr	r0, r0, r2
	strh	r0, [r4, #0x1e]
	str	r5, [r4]
	str	r1, [r4, #0xc]
	str	r1, [r4, #0x4]
	str	r1, [r4, #0x8]
	strb	r3, [r4, #0x1c]
	strh	r1, [r4, #0x20]
	strh	r1, [r4, #0x22]
	str	r1, [r4, #0x24]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvStart1
