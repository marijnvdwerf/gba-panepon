	thumb_func_start np_mk_main
np_mk_main:
	push	{r4, r5, lr}
	ldr	r4, .Lnp_mk_main_3 @ NRam+0x684
	mov	r5, #0x10
.Lnp_mk_main_2:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnp_mk_main_1	@cond_branch
	add	r0, r4, #0
	bl	np_mk_sub
.Lnp_mk_main_1:
	sub	r5, r5, #0x1
	add	r4, r4, #0x24
	cmp	r5, #0
	bne	.Lnp_mk_main_2	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_mk_main_4:
	.align	2, 0
.Lnp_mk_main_3:
	.word	NRam+0x684
	thumb_func_end np_mk_main
