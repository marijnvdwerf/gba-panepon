	thumb_func_start AnisDrvSub_rvwk
AnisDrvSub_rvwk:
	mov	r1, #0x1
	strh	r1, [r0, #0x20]
	ldr	r1, [r0, #0x4]
	str	r1, [r0, #0x8]
	bx	lr
	thumb_func_end AnisDrvSub_rvwk
