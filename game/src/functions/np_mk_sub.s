	thumb_func_start np_mk_sub
np_mk_sub:
	push	{r4, lr}
	add	r4, r0, #0
	ldr	r0, .Lnp_mk_sub_4 @ ARam
	ldrb	r2, [r0, #0x13]
	cmp	r2, #0x1
	bne	.Lnp_mk_sub_1	@cond_branch
	ldr	r0, .Lnp_mk_sub_4 + 4 @ NmiInc
	ldr	r1, [r0]
	and	r1, r1, r2
	cmp	r1, #0
	beq	.Lnp_mk_sub_2	@cond_branch
	ldr	r0, .Lnp_mk_sub_4 + 8 @ NRam
	ldr	r1, .Lnp_mk_sub_4 + 12 @ 0xc3e
	add	r0, r0, r1
	strb	r2, [r0]
	b	.Lnp_mk_sub_3
.Lnp_mk_sub_5:
	.align	2, 0
.Lnp_mk_sub_4:
	.word	ARam
	.word	NmiInc
	.word	NRam
	.word	0xc3e
.Lnp_mk_sub_2:
	ldr	r0, .Lnp_mk_sub_7 @ NRam
	ldr	r2, .Lnp_mk_sub_7 + 4 @ 0xc3e
	add	r0, r0, r2
	b	.Lnp_mk_sub_6
.Lnp_mk_sub_8:
	.align	2, 0
.Lnp_mk_sub_7:
	.word	NRam
	.word	0xc3e
.Lnp_mk_sub_1:
	ldr	r0, .Lnp_mk_sub_11 @ NRam
	ldr	r1, .Lnp_mk_sub_11 + 4 @ 0xc3e
	add	r0, r0, r1
	mov	r1, #0x0
.Lnp_mk_sub_6:
	strb	r1, [r0]
.Lnp_mk_sub_3:
	add	r0, r4, #0
	bl	np_mks_tenjof
	ldrb	r0, [r4]
	cmp	r0, #0x1
	beq	.Lnp_mk_sub_9	@cond_branch
.Lnp_mk_sub_10:
	b	.Lnp_mk_sub_10
.Lnp_mk_sub_12:
	.align	2, 0
.Lnp_mk_sub_11:
	.word	NRam
	.word	0xc3e
.Lnp_mk_sub_9:
	ldr	r1, .Lnp_mk_sub_16 @ np_mk_updt
	ldrb	r0, [r4, #0x12]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mk_sub_13	@cond_branch
	cmp	r0, #0xfe
	bne	.Lnp_mk_sub_14	@cond_branch
	mov	r2, #0xff
	lsl	r2, r2, #0x8
	add	r0, r2, #0
	ldrh	r1, [r4, #0x18]
	add	r0, r0, r1
	strh	r0, [r4, #0x18]
.Lnp_mk_sub_14:
	ldrb	r0, [r4, #0x12]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x12]
	add	r0, r4, #0
	bl	np_mks_uzuuput
	add	r0, r4, #0
	bl	np_mks_markput
	b	.Lnp_mk_sub_15
.Lnp_mk_sub_17:
	.align	2, 0
.Lnp_mk_sub_16:
	.word	np_mk_updt
.Lnp_mk_sub_13:
	add	r0, r4, #0
	bl	np_mki_mawaru
.Lnp_mk_sub_15:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_mk_sub
