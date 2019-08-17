	thumb_func_start AnisDrvInit
AnisDrvInit:
	mov	r1, #0x30
	mov	r2, #0x0
.LAnisDrvInit_1:
	strb	r2, [r0]
	add	r0, r0, #0x1
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.LAnisDrvInit_1	@cond_branch
	bx	lr
	thumb_func_end AnisDrvInit
