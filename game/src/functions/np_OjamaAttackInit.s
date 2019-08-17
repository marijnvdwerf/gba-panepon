	thumb_func_start np_OjamaAttackInit
np_OjamaAttackInit:
	push	{r4, r5, lr}
	ldr	r0, .Lnp_OjamaAttackInit_3 @ ARam
	ldrb	r1, [r0, #0xa]
	cmp	r1, #0x1
	bge	.Lnp_OjamaAttackInit_1	@cond_branch
	mov	r1, #0x1
.Lnp_OjamaAttackInit_1:
	mov	r0, #0x63
	cmp	r0, r1
	bge	.Lnp_OjamaAttackInit_2	@cond_branch
	mov	r1, #0x63
.Lnp_OjamaAttackInit_2:
	ldr	r4, .Lnp_OjamaAttackInit_3 + 4 @ NRam
	add	r0, r4, #0
	add	r0, r0, #0x20
	strb	r1, [r0]
	ldrb	r0, [r0]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x3
	ldr	r1, .Lnp_OjamaAttackInit_3 + 8 @ OjamaAttackData
	add	r0, r0, r1
	str	r0, [r4, #0x18]
	mov	r5, #0x0
	mov	r0, #0x96
	lsl	r0, r0, #0x1
	strh	r0, [r4, #0x1e]
	bl	RandomGet03
	strb	r0, [r4, #0x1c]
	add	r4, r4, #0x21
	strb	r5, [r4]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_OjamaAttackInit_4:
	.align	2, 0
.Lnp_OjamaAttackInit_3:
	.word	ARam
	.word	NRam
	.word	OjamaAttackData
	thumb_func_end np_OjamaAttackInit
