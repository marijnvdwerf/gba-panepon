	thumb_func_start np_set_scfg
np_set_scfg:
	ldr	r0, .Lnp_set_scfg_6 @ NRam
	ldr	r2, .Lnp_set_scfg_6 + 4 @ 0xb31
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r2, r0, #0
	cmp	r1, #0
	beq	.Lnp_set_scfg_4	@cond_branch
	ldr	r1, .Lnp_set_scfg_6 + 8 @ 0xb32
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_set_scfg_4	@cond_branch
	sub	r1, r1, #0x42
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_set_scfg_4	@cond_branch
	add	r1, r1, #0x49
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_set_scfg_4	@cond_branch
	mov	r0, #0x1
	b	.Lnp_set_scfg_5
.Lnp_set_scfg_7:
	.align	2, 0
.Lnp_set_scfg_6:
	.word	NRam
	.word	0xb31
	.word	0xb32
.Lnp_set_scfg_4:
	mov	r0, #0x0
.Lnp_set_scfg_5:
	strb	r0, [r2, #0x7]
	bx	lr
	thumb_func_end np_set_scfg
