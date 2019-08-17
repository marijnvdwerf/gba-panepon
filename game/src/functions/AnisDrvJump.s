	thumb_func_start AnisDrvJump
AnisDrvJump:
	str	r1, [r0]
	mov	r1, #0x0
	strh	r1, [r0, #0x20]
	bx	lr
	thumb_func_end AnisDrvJump
