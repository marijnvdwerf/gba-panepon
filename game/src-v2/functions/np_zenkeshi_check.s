	thumb_func_start np_zenkeshi_check
np_zenkeshi_check:
	push	{r4, lr}
	ldr	r0, .Lnp_zenkeshi_check_6 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x24
	ldrb	r1, [r1]
	add	r4, r0, #0
	cmp	r1, #0
	bne	.Lnp_zenkeshi_check_2	@cond_branch
	ldr	r2, .Lnp_zenkeshi_check_6 + 4 @ NRam+0x38c
	mov	r1, #0x47
.Lnp_zenkeshi_check_3:
	ldrb	r0, [r2]
	cmp	r0, #0
	bne	.Lnp_zenkeshi_check_2	@cond_branch
	sub	r1, r1, #0x1
	sub	r2, r2, #0x8
	cmp	r1, #0
	bge	.Lnp_zenkeshi_check_3	@cond_branch
	ldr	r3, .Lnp_zenkeshi_check_6 + 8 @ 0xbb8
	ldrb	r0, [r4, #0x1f]
	cmp	r0, #0
	beq	.Lnp_zenkeshi_check_4	@cond_branch
	lsr	r3, r3, #0x2
.Lnp_zenkeshi_check_4:
	ldr	r1, .Lnp_zenkeshi_check_6 + 12 @ NRam
	mov	r0, #0xa9
	lsl	r0, r0, #0x4
	add	r2, r1, r0
	ldr	r0, [r2]
	add	r0, r0, r3
	str	r0, [r2]
	ldr	r3, .Lnp_zenkeshi_check_6 + 16 @ 0xa94
	add	r1, r1, r3
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.Lnp_zenkeshi_check_5	@cond_branch
	str	r1, [r2]
.Lnp_zenkeshi_check_5:
	bl	np_zenkeshi_demo_hass
.Lnp_zenkeshi_check_2:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_zenkeshi_check_7:
	.align	2, 0
.Lnp_zenkeshi_check_6:
	.word	ARam
	.word	NRam+0x38c
	.word	0xbb8
	.word	NRam
	.word	0xa94
	thumb_func_end np_zenkeshi_check
