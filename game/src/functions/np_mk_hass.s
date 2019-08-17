	thumb_func_start np_mk_hass
np_mk_hass:
	push	{r4, lr}
	ldr	r3, .Lnp_mk_hass_5 @ NRam
	ldr	r4, .Lnp_mk_hass_5 + 4 @ 0xc38
	add	r2, r3, r4
	strh	r0, [r2]
	ldr	r2, .Lnp_mk_hass_5 + 8 @ 0xc3a
	add	r0, r3, r2
	strh	r1, [r0]
	ldr	r4, .Lnp_mk_hass_5 + 12 @ 0x446
	add	r0, r3, r4
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mk_hass_2	@cond_branch
	ldr	r1, .Lnp_mk_hass_5 + 16 @ 0xc24
	add	r0, r3, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mk_hass_2	@cond_branch
	bl	np_mh_rens
.Lnp_mk_hass_2:
	ldr	r4, .Lnp_mk_hass_5 @ NRam
	mov	r2, #0xc2
	lsl	r2, r2, #0x4
	add	r0, r4, r2
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mk_hass_3	@cond_branch
	bl	np_mh_douj
.Lnp_mk_hass_3:
	ldr	r1, .Lnp_mk_hass_5 + 20 @ 0xc28
	add	r0, r4, r1
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_mk_hass_4	@cond_branch
	bl	np_mh_bikk
.Lnp_mk_hass_4:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_mk_hass_6:
	.align	2, 0
.Lnp_mk_hass_5:
	.word	NRam
	.word	0xc38
	.word	0xc3a
	.word	0x446
	.word	0xc24
	.word	0xc28
	thumb_func_end np_mk_hass
