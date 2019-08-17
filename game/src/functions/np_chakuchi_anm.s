	thumb_func_start np_chakuchi_anm
np_chakuchi_anm:
	push	{r4, r5, r6, lr}
	ldr	r1, .Lnp_chakuchi_anm_4 @ NRam+0x154
	mov	r4, #0x48
	mov	r5, #0xf7
	ldr	r6, .Lnp_chakuchi_anm_4 + 4 @ nprks_chaku_stt
.Lnp_chakuchi_anm_8:
	ldrb	r2, [r1, #0x4]
	mov	r0, #0x8
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_chakuchi_anm_7	@cond_branch
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0x1
	beq	.Lnp_chakuchi_anm_2	@cond_branch
	ldrb	r0, [r1]
	strb	r0, [r1, #0x1]
	b	.Lnp_chakuchi_anm_3
.Lnp_chakuchi_anm_5:
	.align	2, 0
.Lnp_chakuchi_anm_4:
	.word	NRam+0x154
	.word	nprks_chaku_stt
.Lnp_chakuchi_anm_2:
	ldrb	r3, [r1, #0x5]
	cmp	r3, #0
	bne	.Lnp_chakuchi_anm_6	@cond_branch
.Lnp_chakuchi_anm_3:
	add	r0, r5, #0
	and	r0, r0, r2
	strb	r0, [r1, #0x4]
	b	.Lnp_chakuchi_anm_7
.Lnp_chakuchi_anm_6:
	ldrb	r0, [r1, #0x5]
	add	r0, r0, r6
	ldrb	r0, [r0]
	ldrb	r2, [r1]
	add	r0, r0, r2
	strb	r0, [r1, #0x1]
	sub	r0, r3, #1
	strb	r0, [r1, #0x5]
.Lnp_chakuchi_anm_7:
	sub	r4, r4, #0x1
	add	r1, r1, #0x8
	cmp	r4, #0
	bne	.Lnp_chakuchi_anm_8	@cond_branch
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end np_chakuchi_anm
