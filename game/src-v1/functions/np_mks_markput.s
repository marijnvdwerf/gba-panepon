	thumb_func_start np_mks_markput
np_mks_markput:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r2, .Lnp_mks_markput_3 @ NRam
	ldr	r1, .Lnp_mks_markput_3 + 4 @ 0xbbe
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_mks_markput_2	@cond_branch
	ldrh	r0, [r4, #0x16]
	lsr	r0, r0, #0x8
	ldr	r3, .Lnp_mks_markput_3 + 8 @ 0xbbc
	add	r1, r2, r3
	strb	r0, [r1]
	ldrh	r0, [r4, #0x18]
	lsr	r0, r0, #0x8
	add	r3, r3, #0x1
	add	r1, r2, r3
	strb	r0, [r1]
	add	r0, r4, #0
	mov	r1, #0x0
	bl	np_mk_put_agb
	ldrb	r1, [r4, #0x11]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_mks_markput_2	@cond_branch
	add	r0, r4, #0
	bl	np_mk_put_stop
.Lnp_mks_markput_2:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_mks_markput_4:
	.align	2, 0
.Lnp_mks_markput_3:
	.word	NRam
	.word	0xbbe
	.word	0xbbc
	thumb_func_end np_mks_markput
