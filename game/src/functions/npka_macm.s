	thumb_func_start npka_macm
npka_macm:
	push	{lr}
	add	r2, r0, #0
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x1
	beq	.Lnpka_macm_3	@cond_branch
	add	r2, r2, #0x30
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x1
	bne	.Lnpka_macm_2	@cond_branch
	ldr	r0, .Lnpka_macm_5 @ NRam
	ldr	r3, .Lnpka_macm_5 + 4 @ 0xb34
	add	r0, r0, r3
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.Lnpka_macm_3	@cond_branch
	add	r0, r2, #0
	bl	npka_write
	b	.Lnpka_macm_7
.Lnpka_macm_6:
	.align	2, 0
.Lnpka_macm_5:
	.word	NRam
	.word	0xb34
.Lnpka_macm_3:
	add	r0, r2, #0
	bl	npka_writ2
	b	.Lnpka_macm_7
.Lnpka_macm_2:
	add	r0, r2, #0
	bl	npka_writ0
.Lnpka_macm_7:
	pop	{r0}
	bx	r0
	thumb_func_end npka_macm
