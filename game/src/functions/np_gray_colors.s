	thumb_func_start np_gray_colors
np_gray_colors:
	ldr	r0, .Lnp_gray_colors_3 @ NRam
	ldr	r2, .Lnp_gray_colors_3 + 4 @ 0x395
	add	r1, r0, r2
	mov	r3, #0x1
	mov	r2, #0x5
.Lnp_gray_colors_2:
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_gray_colors_1	@cond_branch
	sub	r0, r0, #0x3d
	strb	r0, [r1]
	strb	r3, [r1, #0x1]
.Lnp_gray_colors_1:
	add	r1, r1, #0x8
	sub	r2, r2, #0x1
	cmp	r2, #0
	bge	.Lnp_gray_colors_2	@cond_branch
	bx	lr
.Lnp_gray_colors_4:
	.align	2, 0
.Lnp_gray_colors_3:
	.word	NRam
	.word	0x395
	thumb_func_end np_gray_colors
