	thumb_func_start np_BigMojiYure_main
np_BigMojiYure_main:
	push	{r4, r5, lr}
	ldr	r3, .Lnp_BigMojiYure_main_6 @ NRam+0xbac
	add	r4, r3, #4
	add	r5, r3, #0
	add	r5, r5, #0x20
.Lnp_BigMojiYure_main_11:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.Lnp_BigMojiYure_main_10	@cond_branch
	mov	r2, #0x0
	ldrsb	r2, [r1, r2]
	add	r0, r1, #1
	str	r0, [r3]
	mov	r0, #0x7f
	neg	r0, r0
	cmp	r2, r0
	beq	.Lnp_BigMojiYure_main_2	@cond_branch
	cmp	r2, r0
	bgt	.Lnp_BigMojiYure_main_3	@cond_branch
	sub	r0, r0, #0x1
	cmp	r2, r0
	beq	.Lnp_BigMojiYure_main_4	@cond_branch
	b	.Lnp_BigMojiYure_main_9
.Lnp_BigMojiYure_main_7:
	.align	2, 0
.Lnp_BigMojiYure_main_6:
	.word	NRam+0xbac
.Lnp_BigMojiYure_main_3:
	mov	r0, #0x7e
	neg	r0, r0
	cmp	r2, r0
	beq	.Lnp_BigMojiYure_main_11	@cond_branch
	b	.Lnp_BigMojiYure_main_9
.Lnp_BigMojiYure_main_4:
	mov	r0, #0x0
	str	r0, [r3]
	b	.Lnp_BigMojiYure_main_10
.Lnp_BigMojiYure_main_2:
	mov	r2, #0x1
	ldrsb	r2, [r1, r2]
	add	r0, r1, r2
	str	r0, [r3]
	b	.Lnp_BigMojiYure_main_11
.Lnp_BigMojiYure_main_9:
	ldrb	r0, [r4]
	add	r0, r0, r2
	strb	r0, [r5]
.Lnp_BigMojiYure_main_10:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end np_BigMojiYure_main
