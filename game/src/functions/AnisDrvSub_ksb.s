	thumb_func_start AnisDrvSub_ksb
AnisDrvSub_ksb:
	ldr	r1, [r0]
	ldrb	r2, [r1]
	strb	r2, [r0, #0x4]
	add	r1, r1, #0x1
	str	r1, [r0]
	ldrb	r2, [r1]
	strb	r2, [r0, #0x5]
	add	r2, r1, #1
	str	r2, [r0]
	ldrb	r1, [r1, #0x1]
	strb	r1, [r0, #0x6]
	add	r1, r2, #1
	str	r1, [r0]
	ldrb	r2, [r2, #0x1]
	strb	r2, [r0, #0x7]
	add	r1, r1, #0x1
	str	r1, [r0]
	bx	lr
	thumb_func_end AnisDrvSub_ksb
