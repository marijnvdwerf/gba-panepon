	thumb_func_start np_baku_ani_main
np_baku_ani_main:
	push	{r4, r5, lr}
	ldr	r4, .Lnp_baku_ani_main_4 @ NRam+0x448
	mov	r5, #0x1f
.Lnp_baku_ani_main_3:
	ldr	r2, [r4]
	cmp	r2, #0
	beq	.Lnp_baku_ani_main_2	@cond_branch
	ldrb	r0, [r4, #0x4]
	ldrb	r1, [r4, #0x5]
	ldr	r2, [r2]
	bl	NisCtc_PutCtc
	ldr	r1, [r4]
	add	r0, r1, #4
	str	r0, [r4]
	ldr	r0, [r1, #0x4]
	cmp	r0, #0
	bne	.Lnp_baku_ani_main_2	@cond_branch
	str	r0, [r4]
.Lnp_baku_ani_main_2:
	sub	r5, r5, #0x1
	add	r4, r4, #0x8
	cmp	r5, #0
	bge	.Lnp_baku_ani_main_3	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_baku_ani_main_5:
	.align	2, 0
.Lnp_baku_ani_main_4:
	.word	NRam+0x448
	thumb_func_end np_baku_ani_main
