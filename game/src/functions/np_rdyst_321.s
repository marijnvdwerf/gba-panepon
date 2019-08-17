	thumb_func_start np_rdyst_321
np_rdyst_321:
	push	{r4, lr}
	ldr	r1, .Lnp_rdyst_321_6 @ NRam
	ldrb	r0, [r1, #0x15]
	cmp	r0, #0
	beq	.Lnp_rdyst_321_1	@cond_branch
	sub	r4, r0, #1
	cmp	r4, #0x3c
	beq	.Lnp_rdyst_321_8	@cond_branch
	cmp	r4, #0x3c
	bgt	.Lnp_rdyst_321_3	@cond_branch
	cmp	r4, #0
	beq	.Lnp_rdyst_321_8	@cond_branch
	b	.Lnp_rdyst_321_11
.Lnp_rdyst_321_7:
	.align	2, 0
.Lnp_rdyst_321_6:
	.word	NRam
.Lnp_rdyst_321_3:
	cmp	r4, #0x78
	beq	.Lnp_rdyst_321_8	@cond_branch
	cmp	r4, #0xb4
	beq	.Lnp_rdyst_321_9	@cond_branch
	b	.Lnp_rdyst_321_11
.Lnp_rdyst_321_8:
	mov	r0, #0x5
	bl	m4aSongNumStart
	b	.Lnp_rdyst_321_11
.Lnp_rdyst_321_9:
	mov	r0, #0x6
	bl	m4aSongNumStart
.Lnp_rdyst_321_11:
	cmp	r4, #0x3b
	bgt	.Lnp_rdyst_321_12	@cond_branch
	ldr	r2, .Lnp_rdyst_321_14 @ Aob_Panel_Ready_03
	b	.Lnp_rdyst_321_17
.Lnp_rdyst_321_15:
	.align	2, 0
.Lnp_rdyst_321_14:
	.word	Aob_Panel_Ready_03
.Lnp_rdyst_321_12:
	cmp	r4, #0x77
	bgt	.Lnp_rdyst_321_16	@cond_branch
	ldr	r2, .Lnp_rdyst_321_18 @ Aob_Panel_Ready_02
	b	.Lnp_rdyst_321_17
.Lnp_rdyst_321_19:
	.align	2, 0
.Lnp_rdyst_321_18:
	.word	Aob_Panel_Ready_02
.Lnp_rdyst_321_16:
	cmp	r4, #0xb3
	ble	.Lnp_rdyst_321_20	@cond_branch
	ldr	r1, .Lnp_rdyst_321_22 @ NRam
	mov	r0, #0x0
	b	.Lnp_rdyst_321_21
.Lnp_rdyst_321_23:
	.align	2, 0
.Lnp_rdyst_321_22:
	.word	NRam
.Lnp_rdyst_321_20:
	ldr	r2, .Lnp_rdyst_321_24 @ Aob_Panel_Ready_01
.Lnp_rdyst_321_17:
	mov	r0, #0x7e
	mov	r1, #0x3c
	bl	NisCtc_PutCtc
	ldr	r1, .Lnp_rdyst_321_24 + 4 @ NRam
	ldrb	r0, [r1, #0x15]
	add	r0, r0, #0x1
.Lnp_rdyst_321_21:
	strb	r0, [r1, #0x15]
.Lnp_rdyst_321_1:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_rdyst_321_25:
	.align	2, 0
.Lnp_rdyst_321_24:
	.word	Aob_Panel_Ready_01
	.word	NRam
	thumb_func_end np_rdyst_321
