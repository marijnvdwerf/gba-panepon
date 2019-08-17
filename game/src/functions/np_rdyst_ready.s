	thumb_func_start np_rdyst_ready
np_rdyst_ready:
	push	{r4, lr}
	ldr	r4, .Lnp_rdyst_ready_4 @ NRam
	ldrb	r0, [r4, #0x14]
	cmp	r0, #0
	beq	.Lnp_rdyst_ready_1	@cond_branch
	sub	r1, r0, #1
	cmp	r1, #0x59
	ble	.Lnp_rdyst_ready_2	@cond_branch
	mov	r0, #0x0
	b	.Lnp_rdyst_ready_3
.Lnp_rdyst_ready_5:
	.align	2, 0
.Lnp_rdyst_ready_4:
	.word	NRam
.Lnp_rdyst_ready_2:
	cmp	r1, #0xf
	bls	.Lnp_rdyst_ready_6	@cond_branch
	mov	r1, #0xf
.Lnp_rdyst_ready_6:
	ldr	r0, .Lnp_rdyst_ready_7 @ np_rdyst_dat_ready
	add	r0, r1, r0
	ldrb	r1, [r0]
	ldr	r2, .Lnp_rdyst_ready_7 + 4 @ Aob_Panel_Ready_00
	mov	r0, #0x6c
	bl	NisCtc_PutCtc
	ldrb	r0, [r4, #0x14]
	add	r0, r0, #0x1
.Lnp_rdyst_ready_3:
	strb	r0, [r4, #0x14]
.Lnp_rdyst_ready_1:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_rdyst_ready_8:
	.align	2, 0
.Lnp_rdyst_ready_7:
	.word	np_rdyst_dat_ready
	.word	Aob_Panel_Ready_00
	thumb_func_end np_rdyst_ready
