	thumb_func_start np_zenkeshi_demo_main
np_zenkeshi_demo_main:
	push	{r4, r5, r6, lr}
	ldr	r0, .Lnp_zenkeshi_demo_main_6 @ NRam
	ldr	r1, .Lnp_zenkeshi_demo_main_6 + 4 @ 0xbca
	add	r3, r0, r1
	ldrh	r1, [r3]
	add	r2, r1, #0
	add	r6, r0, #0
	cmp	r2, #0
	beq	.Lnp_zenkeshi_demo_main_11	@cond_branch
	ldr	r0, .Lnp_zenkeshi_demo_main_6 + 8 @ np_zenkeshi_demo_data
	add	r1, r1, #0x1
	strh	r1, [r3]
	add	r1, r2, r0
	ldrb	r4, [r1]
	add	r5, r0, #0
	cmp	r4, #0xfe
	beq	.Lnp_zenkeshi_demo_main_2	@cond_branch
	cmp	r4, #0xfe
	bgt	.Lnp_zenkeshi_demo_main_3	@cond_branch
	cmp	r4, #0
	beq	.Lnp_zenkeshi_demo_main_11	@cond_branch
	b	.Lnp_zenkeshi_demo_main_9
.Lnp_zenkeshi_demo_main_7:
	.align	2, 0
.Lnp_zenkeshi_demo_main_6:
	.word	NRam
	.word	0xbca
	.word	np_zenkeshi_demo_data
.Lnp_zenkeshi_demo_main_3:
	cmp	r4, #0xff
	beq	.Lnp_zenkeshi_demo_main_8	@cond_branch
	b	.Lnp_zenkeshi_demo_main_9
.Lnp_zenkeshi_demo_main_2:
	mov	r0, #0x1
	mov	r1, #0x0
	bl	nbmn_bik_sound
	b	.Lnp_zenkeshi_demo_main_11
.Lnp_zenkeshi_demo_main_8:
	mov	r0, #0x0
	strh	r0, [r3]
	b	.Lnp_zenkeshi_demo_main_11
.Lnp_zenkeshi_demo_main_9:
	ldr	r0, .Lnp_zenkeshi_demo_main_12 @ 0xbca
	add	r3, r6, r0
	ldrh	r0, [r3]
	add	r2, r0, #1
	strh	r2, [r3]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r0, r0, r5
	ldrb	r1, [r0]
	add	r0, r2, #1
	strh	r0, [r3]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	add	r2, r2, r5
	ldrb	r2, [r2]
	add	r0, r4, #0
	bl	np_baku_ani_hass
.Lnp_zenkeshi_demo_main_11:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_zenkeshi_demo_main_13:
	.align	2, 0
.Lnp_zenkeshi_demo_main_12:
	.word	0xbca
	thumb_func_end np_zenkeshi_demo_main
