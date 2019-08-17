	thumb_func_start np_mks_tenjof
np_mks_tenjof:
	ldrb	r2, [r0, #0x10]
	mov	r0, #0x80
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_mks_tenjof_1	@cond_branch
	ldr	r0, .Lnp_mks_tenjof_2 @ NRam
	mov	r1, #0x1f
	and	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, .Lnp_mks_tenjof_2 + 4 @ 0xb88
	add	r1, r1, r0
	mov	r0, #0x3c
	strb	r0, [r1]
.Lnp_mks_tenjof_1:
	bx	lr
.Lnp_mks_tenjof_3:
	.align	2, 0
.Lnp_mks_tenjof_2:
	.word	NRam
	.word	0xb88
	thumb_func_end np_mks_tenjof
