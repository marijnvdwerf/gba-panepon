	thumb_func_start AnisDrvStart4
AnisDrvStart4:
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #0
	add	r5, r3, #0
	ldr	r6, [sp, #0x14]
	ldr	r7, [sp, #0x18]
	bl	AnisDrvStart2
	lsl	r0, r6, #0x5
	add	r5, r5, r0
	str	r5, [r4, #0x24]
	strh	r6, [r4, #0x2c]
	add	r4, r4, #0x2e
	strb	r7, [r4]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvStart4
