	thumb_func_start np_ojm_atahas
np_ojm_atahas:
	push	{lr}
	ldr	r0, .Lnp_ojm_atahas_4 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x4
	bne	.Lnp_ojm_atahas_7	@cond_branch
	ldr	r0, .Lnp_ojm_atahas_4 + 4 @ NRam
	ldr	r1, .Lnp_ojm_atahas_4 + 8 @ 0xa9c
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_ojm_atahas_7	@cond_branch
	bl	np_OjamaAttackDown
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x10
	bhi	.Lnp_ojm_atahas_7	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_ojm_atahas_4 + 12 @ .Lnp_ojm_atahas_6
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_ojm_atahas_5:
	.align	2, 0
.Lnp_ojm_atahas_4:
	.word	ARam
	.word	NRam
	.word	0xa9c
	.word	.Lnp_ojm_atahas_6
.Lnp_ojm_atahas_6:
	.word	.Lnp_ojm_atahas_7
	.word	.Lnp_ojm_atahas_8
	.word	.Lnp_ojm_atahas_9
	.word	.Lnp_ojm_atahas_10
	.word	.Lnp_ojm_atahas_11
	.word	.Lnp_ojm_atahas_12
	.word	.Lnp_ojm_atahas_13
	.word	.Lnp_ojm_atahas_14
	.word	.Lnp_ojm_atahas_15
	.word	.Lnp_ojm_atahas_16
	.word	.Lnp_ojm_atahas_17
	.word	.Lnp_ojm_atahas_18
	.word	.Lnp_ojm_atahas_19
	.word	.Lnp_ojm_atahas_20
	.word	.Lnp_ojm_atahas_21
	.word	.Lnp_ojm_atahas_22
	.word	.Lnp_ojm_atahas_23
.Lnp_ojm_atahas_8:
	mov	r0, #0x10
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_9:
	mov	r0, #0x11
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_10:
	mov	r0, #0x12
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_11:
	mov	r0, #0x13
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_12:
	mov	r0, #0x14
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_13:
	mov	r0, #0x15
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_14:
	mov	r0, #0x16
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_15:
	mov	r0, #0x17
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_16:
	mov	r0, #0x18
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_17:
	mov	r0, #0x19
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_18:
	mov	r0, #0x1a
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_19:
	mov	r0, #0x1b
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_20:
	mov	r0, #0xd
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_21:
	mov	r0, #0xe
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_22:
	mov	r0, #0xf
	b	.Lnp_ojm_atahas_38
.Lnp_ojm_atahas_23:
	mov	r0, #0x25
.Lnp_ojm_atahas_38:
	bl	np_otai_wt
.Lnp_ojm_atahas_7:
	pop	{r0}
	bx	r0
	thumb_func_end np_ojm_atahas
