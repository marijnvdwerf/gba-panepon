	thumb_func_start np_pchk_2dan
np_pchk_2dan:
	push	{lr}
	ldr	r2, .Lnp_pchk_2dan_4 @ NRam+0x184
	mov	r3, #0x6
	ldr	r0, .Lnp_pchk_2dan_4 + 4 @ 0xfffffe7c
	add	r1, r2, r0
.Lnp_pchk_2dan_2:
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0
	bne	.Lnp_pchk_2dan_1	@cond_branch
	sub	r3, r3, #0x1
	add	r2, r2, #0x8
	cmp	r3, #0
	bne	.Lnp_pchk_2dan_2	@cond_branch
	ldr	r2, .Lnp_pchk_2dan_4 + 8 @ 0xa8a
	add	r0, r1, r2
	strb	r3, [r0]
	b	.Lnp_pchk_2dan_3
.Lnp_pchk_2dan_5:
	.align	2, 0
.Lnp_pchk_2dan_4:
	.word	NRam+0x184
	.word	0xfffffe7c
	.word	0xa8a
.Lnp_pchk_2dan_1:
	ldr	r0, .Lnp_pchk_2dan_6 @ 0xa8a
	add	r1, r1, r0
	mov	r0, #0x1
	strb	r0, [r1]
.Lnp_pchk_2dan_3:
	pop	{r0}
	bx	r0
.Lnp_pchk_2dan_7:
	.align	2, 0
.Lnp_pchk_2dan_6:
	.word	0xa8a
	thumb_func_end np_pchk_2dan
