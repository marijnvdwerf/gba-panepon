	thumb_func_start np_shoukyo_kensaku
np_shoukyo_kensaku:
	push	{lr}
	ldr	r0, .Lnp_shoukyo_kensaku_6 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x3
	bne	.Lnp_shoukyo_kensaku_3	@cond_branch
	ldr	r1, .Lnp_shoukyo_kensaku_6 + 4 @ NRam
	ldr	r2, .Lnp_shoukyo_kensaku_6 + 8 @ 0xab1
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_shoukyo_kensaku_3	@cond_branch
	add	r2, r2, #0x1
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_shoukyo_kensaku_3	@cond_branch
	sub	r2, r2, #0x42
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0x3
	bne	.Lnp_shoukyo_kensaku_4	@cond_branch
.Lnp_shoukyo_kensaku_3:
	bl	np_hanteiyou
	b	.Lnp_shoukyo_kensaku_5
.Lnp_shoukyo_kensaku_7:
	.align	2, 0
.Lnp_shoukyo_kensaku_6:
	.word	ARam
	.word	NRam
	.word	0xab1
.Lnp_shoukyo_kensaku_4:
	bl	np_hanteiclr
	bl	np_pzlmode_gameover
.Lnp_shoukyo_kensaku_5:
	bl	np_yoko_shoukyo
	bl	np_tate_shoukyo
	bl	np_bak_check
	bl	np_bak_main
	bl	np_clear_ch
	bl	np_mk_main
	bl	np_baku_ani_main
	pop	{r0}
	bx	r0
	thumb_func_end np_shoukyo_kensaku
