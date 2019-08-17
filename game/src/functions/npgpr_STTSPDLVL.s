	thumb_func_start npgpr_STTSPDLVL
npgpr_STTSPDLVL:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_STTSPDLVL_2 @ ARam
	ldrb	r2, [r0, #0x2]
	add	r4, r0, #0
	cmp	r2, #0x9
	bhi	.Lnpgpr_STTSPDLVL_26	@cond_branch
	lsl	r0, r2, #0x2
	ldr	r1, .Lnpgpr_STTSPDLVL_2 + 4 @ .Lnpgpr_STTSPDLVL_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_STTSPDLVL_3:
	.align	2, 0
.Lnpgpr_STTSPDLVL_2:
	.word	ARam
	.word	.Lnpgpr_STTSPDLVL_4
.Lnpgpr_STTSPDLVL_4:
	.word	.Lnpgpr_STTSPDLVL_6
	.word	.Lnpgpr_STTSPDLVL_6
	.word	.Lnpgpr_STTSPDLVL_7
	.word	.Lnpgpr_STTSPDLVL_14
	.word	.Lnpgpr_STTSPDLVL_13
	.word	.Lnpgpr_STTSPDLVL_13
	.word	.Lnpgpr_STTSPDLVL_13
	.word	.Lnpgpr_STTSPDLVL_13
	.word	.Lnpgpr_STTSPDLVL_13
	.word	.Lnpgpr_STTSPDLVL_14
.Lnpgpr_STTSPDLVL_6:
	ldrb	r1, [r4, #0x7]
	mov	r0, #0x0
	cmp	r1, #0
	ble	.Lnpgpr_STTSPDLVL_15	@cond_branch
	sub	r0, r1, #1
.Lnpgpr_STTSPDLVL_15:
	lsl	r0, r0, #0x18
	mov	r1, #0x80
	lsl	r1, r1, #0x11
	add	r0, r0, r1
	lsr	r1, r0, #0x18
	ldr	r0, .Lnpgpr_STTSPDLVL_17 @ NRam
	ldr	r2, .Lnpgpr_STTSPDLVL_17 + 4 @ 0xb25
	add	r0, r0, r2
	strb	r1, [r0]
	b	.Lnpgpr_STTSPDLVL_26
.Lnpgpr_STTSPDLVL_18:
	.align	2, 0
.Lnpgpr_STTSPDLVL_17:
	.word	NRam
	.word	0xb25
.Lnpgpr_STTSPDLVL_7:
	ldrb	r0, [r4, #0xd]
	cmp	r0, #0
	beq	.Lnpgpr_STTSPDLVL_19	@cond_branch
	mov	r1, #0x28
	b	.Lnpgpr_STTSPDLVL_26
.Lnpgpr_STTSPDLVL_19:
	bl	npgpr_stgclr_rnd
	add	r1, r0, #0
	ldrb	r2, [r4, #0xc]
	cmp	r2, #0
	ble	.Lnpgpr_STTSPDLVL_21	@cond_branch
	sub	r2, r2, #0x1
	b	.Lnpgpr_STTSPDLVL_22
.Lnpgpr_STTSPDLVL_21:
	mov	r2, #0x0
.Lnpgpr_STTSPDLVL_22:
	ldr	r0, .Lnpgpr_STTSPDLVL_24 @ GLV_ST_StartSpeed
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x16
	add	r1, r1, r0
	ldr	r0, [r1]
	add	r0, r0, r2
	b	.Lnpgpr_STTSPDLVL_23
.Lnpgpr_STTSPDLVL_25:
	.align	2, 0
.Lnpgpr_STTSPDLVL_24:
	.word	GLV_ST_StartSpeed
.Lnpgpr_STTSPDLVL_14:
	mov	r1, #0x0
	b	.Lnpgpr_STTSPDLVL_26
.Lnpgpr_STTSPDLVL_13:
	ldr	r4, .Lnpgpr_STTSPDLVL_27 @ GLV_VS_StartSpeed
	bl	npgpr_P1lev
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
.Lnpgpr_STTSPDLVL_23:
	ldrb	r1, [r0]
.Lnpgpr_STTSPDLVL_26:
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_STTSPDLVL_28:
	.align	2, 0
.Lnpgpr_STTSPDLVL_27:
	.word	GLV_VS_StartSpeed
	thumb_func_end npgpr_STTSPDLVL
