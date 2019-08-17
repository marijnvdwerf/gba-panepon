	thumb_func_start AnisDrvStop
AnisDrvStop:
	ldrh	r2, [r0, #0x1e]
	ldr	r1, .LAnisDrvStop_1 @ 0xfffe
	and	r1, r1, r2
	mov	r2, #0x2
	orr	r1, r1, r2
	strh	r1, [r0, #0x1e]
	bx	lr
.LAnisDrvStop_2:
	.align	2, 0
.LAnisDrvStop_1:
	.word	0xfffe
	thumb_func_end AnisDrvStop
