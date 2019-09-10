	thumb_func_start np_AgbKey_Init
np_AgbKey_Init:
	ldr	r0, .Lnp_AgbKey_Init_3 @ ARam
	ldrb	r0, [r0, #0x1d]
	cmp	r0, #0
	bne	.Lnp_AgbKey_Init_1	@cond_branch
	ldr	r1, .Lnp_AgbKey_Init_3 + 4 @ NRam
	ldr	r0, .Lnp_AgbKey_Init_3 + 8 @ 0xbc2
	add	r2, r1, r0
	mov	r0, #0x3
	strh	r0, [r2]
	ldr	r0, .Lnp_AgbKey_Init_3 + 12 @ 0xbc4
	add	r1, r1, r0
	mov	r0, #0xc0
	lsl	r0, r0, #0x2
	b	.Lnp_AgbKey_Init_2
.Lnp_AgbKey_Init_4:
	.align	2, 0
.Lnp_AgbKey_Init_3:
	.word	ARam
	.word	NRam
	.word	0xbc2
	.word	0xbc4
.Lnp_AgbKey_Init_1:
	ldr	r1, .Lnp_AgbKey_Init_5 @ NRam
	ldr	r0, .Lnp_AgbKey_Init_5 + 4 @ 0xbc2
	add	r2, r1, r0
	mov	r0, #0x1
	strh	r0, [r2]
	ldr	r0, .Lnp_AgbKey_Init_5 + 8 @ 0xbc4
	add	r1, r1, r0
	ldr	r0, .Lnp_AgbKey_Init_5 + 12 @ 0x302
.Lnp_AgbKey_Init_2:
	strh	r0, [r1]
	bx	lr
.Lnp_AgbKey_Init_6:
	.align	2, 0
.Lnp_AgbKey_Init_5:
	.word	NRam
	.word	0xbc2
	.word	0xbc4
	.word	0x302
	thumb_func_end np_AgbKey_Init
