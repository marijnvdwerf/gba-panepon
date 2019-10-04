	thumb_func_start np_mh_xys
np_mh_xys:
	push	{r4, r5, r6, lr}
	add	r3, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	ldr	r4, .Lnp_mh_xys_3 @ NRam
	ldr	r1, .Lnp_mh_xys_3 + 4 @ 0x844
	add	r0, r4, r1
	ldrb	r1, [r0]
	mov	r0, #0x2
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lnp_mh_xys_1	@cond_branch
	ldr	r2, .Lnp_mh_xys_3 + 8 @ 0xbbc
	add	r0, r4, r2
	mov	r2, #0x0
	ldsh	r1, [r0, r2]
	lsl	r0, r1, #0x3
	sub	r0, r0, r1
	lsl	r0, r0, #0x1
	add	r0, r0, #0x5c
	add	r0, r0, r5
	lsl	r0, r0, #0x8
	mov	r2, #0x80
	orr	r0, r0, r2
	strh	r0, [r3, #0x16]
	ldr	r5, .Lnp_mh_xys_3 + 12 @ 0xbbe
	add	r0, r4, r5
	mov	r5, #0x0
	ldsh	r1, [r0, r5]
	mov	r0, #0xd
	mul	r0, r0, r1
	add	r0, r0, #0x4
	add	r0, r0, r6
	ldrb	r1, [r4, #0x5]
	sub	r0, r0, r1
	lsl	r0, r0, #0x8
	orr	r0, r0, r2
	b	.Lnp_mh_xys_2
.Lnp_mh_xys_4:
	.align	2, 0
.Lnp_mh_xys_3:
	.word	NRam
	.word	0x844
	.word	0xbbc
	.word	0xbbe
.Lnp_mh_xys_1:
	ldr	r1, .Lnp_mh_xys_5 @ 0xbbc
	add	r0, r4, r1
	ldrh	r0, [r0]
	add	r0, r0, #0x70
	add	r0, r0, r5
	lsl	r0, r0, #0x8
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r3, #0x16]
	ldr	r2, .Lnp_mh_xys_5 + 4 @ 0xbbe
	add	r0, r4, r2
	ldrh	r0, [r0]
	add	r0, r0, #0x50
	add	r0, r0, r6
	lsl	r0, r0, #0x8
	orr	r0, r0, r1
.Lnp_mh_xys_2:
	strh	r0, [r3, #0x18]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_mh_xys_6:
	.align	2, 0
.Lnp_mh_xys_5:
	.word	0xbbc
	.word	0xbbe
	thumb_func_end np_mh_xys
