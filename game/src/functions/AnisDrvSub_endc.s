	thumb_func_start AnisDrvSub_endc
AnisDrvSub_endc:
	ldrh	r2, [r0, #0x1e]
	mov	r1, #0x2
	orr	r1, r1, r2
	strh	r1, [r0, #0x1e]
	bx	lr
	thumb_func_end AnisDrvSub_endc
