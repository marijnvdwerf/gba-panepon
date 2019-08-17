	thumb_func_start np_bak_main
np_bak_main:
	push	{r4, r5, lr}
	ldr	r2, .Lnp_bak_main_3 @ NRam
	ldr	r0, .Lnp_bak_main_3 + 4 @ 0xb31
	add	r1, r2, r0
	mov	r0, #0x1
	strb	r0, [r1]
	mov	r0, #0xf1
	lsl	r0, r0, #0x2
	add	r4, r2, r0
	mov	r5, #0x7
.Lnp_bak_main_2:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnp_bak_main_1	@cond_branch
	add	r0, r4, #0
	bl	np_bak_main_knbldfkjnsdfjkjnl
.Lnp_bak_main_1:
	add	r4, r4, #0x10
	sub	r5, r5, #0x1
	cmp	r5, #0
	bge	.Lnp_bak_main_2	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_bak_main_4:
	.align	2, 0
.Lnp_bak_main_3:
	.word	NRam
	.word	0xb31
	thumb_func_end np_bak_main
