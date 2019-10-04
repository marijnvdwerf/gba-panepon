	thumb_func_start np_baku_ani_hass
np_baku_ani_hass:
	push	{r4, r5, lr}
	add	r4, r0, #0
	ldr	r5, .Lnp_baku_ani_hass_4 @ NRam+0x448
	mov	r3, #0x0
.Lnp_baku_ani_hass_2:
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.Lnp_baku_ani_hass_1	@cond_branch
	add	r3, r3, #0x1
	add	r5, r5, #0x8
	cmp	r3, #0x1f
	ble	.Lnp_baku_ani_hass_2	@cond_branch
	b	.Lnp_baku_ani_hass_3
.Lnp_baku_ani_hass_5:
	.align	2, 0
.Lnp_baku_ani_hass_4:
	.word	NRam+0x448
.Lnp_baku_ani_hass_1:
	cmp	r4, #0x2
	beq	.Lnp_baku_ani_hass_6	@cond_branch
	cmp	r4, #0x2
	ble	.Lnp_baku_ani_hass_7	@cond_branch
	cmp	r4, #0x3
	beq	.Lnp_baku_ani_hass_8	@cond_branch
	b	.Lnp_baku_ani_hass_10
.Lnp_baku_ani_hass_7:
	cmp	r4, #0
	blt	.Lnp_baku_ani_hass_10	@cond_branch
	ldr	r0, .Lnp_baku_ani_hass_12 @ Aob_Title_Obj_00+0x744
	b	.Lnp_baku_ani_hass_17
.Lnp_baku_ani_hass_13:
	.align	2, 0
.Lnp_baku_ani_hass_12:
	.word	Aob_Title_Obj_00+0x744
.Lnp_baku_ani_hass_6:
	ldr	r0, .Lnp_baku_ani_hass_15 @ Aob_Title_Obj_00+0x7a4
	b	.Lnp_baku_ani_hass_17
.Lnp_baku_ani_hass_16:
	.align	2, 0
.Lnp_baku_ani_hass_15:
	.word	Aob_Title_Obj_00+0x7a4
.Lnp_baku_ani_hass_8:
	ldr	r0, .Lnp_baku_ani_hass_18 @ Aob_Title_Obj_00+0x804
	b	.Lnp_baku_ani_hass_17
.Lnp_baku_ani_hass_19:
	.align	2, 0
.Lnp_baku_ani_hass_18:
	.word	Aob_Title_Obj_00+0x804
.Lnp_baku_ani_hass_10:
	ldr	r0, .Lnp_baku_ani_hass_20 @ Aob_Panel_Baku_Ani03
.Lnp_baku_ani_hass_17:
	str	r0, [r5]
	lsl	r0, r1, #0x3
	sub	r0, r0, r1
	lsl	r0, r0, #0x1
	add	r0, r0, #0x63
	strb	r0, [r5, #0x4]
	mov	r0, #0xd
	mul	r0, r0, r2
	add	r0, r0, #0xa
	strb	r0, [r5, #0x5]
	ldr	r1, .Lnp_baku_ani_hass_20 + 4 @ NRam
	ldrb	r2, [r1, #0x5]
	sub	r0, r0, r2
	strb	r0, [r5, #0x5]
	mov	r2, #0xbd
	lsl	r2, r2, #0x4
	add	r1, r1, r2
	ldrb	r1, [r1]
	sub	r0, r0, r1
	strb	r0, [r5, #0x5]
.Lnp_baku_ani_hass_3:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_baku_ani_hass_21:
	.align	2, 0
.Lnp_baku_ani_hass_20:
	.word	Aob_Panel_Baku_Ani03
	.word	NRam
	thumb_func_end np_baku_ani_hass
