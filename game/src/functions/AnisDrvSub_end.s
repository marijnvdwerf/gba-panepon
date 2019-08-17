	thumb_func_start AnisDrvSub_end
AnisDrvSub_end:
	ldr	r1, [r0]
	sub	r1, r1, #0x1
	str	r1, [r0]
	ldrh	r2, [r0, #0x1e]
	ldr	r1, .LAnisDrvSub_end_1 @ 0xfffe
	and	r1, r1, r2
	mov	r2, #0x2
	orr	r1, r1, r2
	strh	r1, [r0, #0x1e]
	bx	lr
.LAnisDrvSub_end_2:
	.align	2, 0
.LAnisDrvSub_end_1:
	.word	0xfffe
	thumb_func_end AnisDrvSub_end
