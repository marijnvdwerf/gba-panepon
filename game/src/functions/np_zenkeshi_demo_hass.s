	thumb_func_start np_zenkeshi_demo_hass
np_zenkeshi_demo_hass:
	push	{lr}
	ldr	r0, .Lnp_zenkeshi_demo_hass_1 @ NRam
	ldr	r1, .Lnp_zenkeshi_demo_hass_1 + 4 @ 0xc46
	add	r0, r0, r1
	mov	r1, #0x1
	strh	r1, [r0]
	mov	r0, #0x38
	bl	m4aSongNumStart
	pop	{r0}
	bx	r0
.Lnp_zenkeshi_demo_hass_2:
	.align	2, 0
.Lnp_zenkeshi_demo_hass_1:
	.word	NRam
	.word	0xc46
	thumb_func_end np_zenkeshi_demo_hass
