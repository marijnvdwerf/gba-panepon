	thumb_func_start np_SE_rens_douj
np_SE_rens_douj:
	push	{lr}
	ldr	r0, .Lnp_SE_rens_douj_4 @ ARam
	ldrb	r0, [r0, #0x1b]
	cmp	r0, #0
	bne	.Lnp_SE_rens_douj_3	@cond_branch
	ldr	r0, .Lnp_SE_rens_douj_4 + 4 @ NRam
	ldr	r1, .Lnp_SE_rens_douj_4 + 8 @ 0xa89
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_SE_rens_douj_2	@cond_branch
	mov	r0, #0x3b
	bl	m4aSongNumStart
	b	.Lnp_SE_rens_douj_3
.Lnp_SE_rens_douj_5:
	.align	2, 0
.Lnp_SE_rens_douj_4:
	.word	ARam
	.word	NRam
	.word	0xa89
.Lnp_SE_rens_douj_2:
	mov	r0, #0x38
	bl	m4aSongNumStart
.Lnp_SE_rens_douj_3:
	pop	{r0}
	bx	r0
	thumb_func_end np_SE_rens_douj
