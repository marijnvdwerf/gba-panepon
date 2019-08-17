	thumb_func_start np_pchk_dan
np_pchk_dan:
	push	{lr}
	ldr	r0, .Lnp_pchk_dan_3 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x3
	beq	.Lnp_pchk_dan_2	@cond_branch
	cmp	r0, #0x9
	beq	.Lnp_pchk_dan_2	@cond_branch
	bl	np_pchk_0dan
	bl	np_pchk_1dan
	bl	np_pchk_2dan
.Lnp_pchk_dan_2:
	pop	{r0}
	bx	r0
.Lnp_pchk_dan_4:
	.align	2, 0
.Lnp_pchk_dan_3:
	.word	ARam
	thumb_func_end np_pchk_dan
