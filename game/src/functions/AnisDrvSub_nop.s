	thumb_func_start AnisDrvSub_nop
AnisDrvSub_nop:
	ldr	r1, [r0]
	ldrb	r2, [r1]
	strh	r2, [r0, #0x20]
	add	r1, r1, #0x1
	str	r1, [r0]
	bx	lr
	thumb_func_end AnisDrvSub_nop
