	thumb_func_start np_read_stpct
np_read_stpct:
	push	{r4, r5, r6, lr}
	ldr	r0, .Lnp_read_stpct_9 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x21
	ldrb	r1, [r1]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.Lnp_read_stpct_1	@cond_branch
	b	.Lnp_read_stpct_69
.Lnp_read_stpct_1:
	ldr	r0, .Lnp_read_stpct_9 + 4 @ NRam
	ldr	r2, .Lnp_read_stpct_9 + 8 @ 0xb98
	add	r1, r0, r2
	ldr	r2, [r1]
	ldr	r5, .Lnp_read_stpct_9 + 12 @ 0xb9c
	add	r1, r0, r5
	ldr	r5, [r1]
	add	r6, r0, #0
	cmp	r2, #0
	bne	.Lnp_read_stpct_4	@cond_branch
	cmp	r5, #0
	bne	.Lnp_read_stpct_4	@cond_branch
	b	.Lnp_read_stpct_69
.Lnp_read_stpct_4:
	cmp	r2, #0x48
	ble	.Lnp_read_stpct_6	@cond_branch
	mov	r2, #0x48
.Lnp_read_stpct_6:
	cmp	r5, #0xd
	ble	.Lnp_read_stpct_7	@cond_branch
	mov	r5, #0xd
.Lnp_read_stpct_7:
	ldrb	r0, [r3, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_read_stpct_22	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_read_stpct_9 + 16 @ .Lnp_read_stpct_11
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_read_stpct_10:
	.align	2, 0
.Lnp_read_stpct_9:
	.word	ARam
	.word	NRam
	.word	0xb98
	.word	0xb9c
	.word	.Lnp_read_stpct_11
.Lnp_read_stpct_11:
	.word	.Lnp_read_stpct_13
	.word	.Lnp_read_stpct_13
	.word	.Lnp_read_stpct_14
	.word	.Lnp_read_stpct_69
	.word	.Lnp_read_stpct_17
	.word	.Lnp_read_stpct_17
	.word	.Lnp_read_stpct_20
	.word	.Lnp_read_stpct_20
	.word	.Lnp_read_stpct_20
	.word	.Lnp_read_stpct_69
.Lnp_read_stpct_22:
	b	.Lnp_read_stpct_22
.Lnp_read_stpct_14:
	ldrb	r0, [r3, #0xd]
	cmp	r0, #0
	beq	.Lnp_read_stpct_23	@cond_branch
	mov	r4, #0x6
	b	.Lnp_read_stpct_24
.Lnp_read_stpct_23:
	ldrb	r0, [r3, #0xb]
	cmp	r0, #0
	ble	.Lnp_read_stpct_25	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnp_read_stpct_26
.Lnp_read_stpct_25:
	mov	r0, #0x0
.Lnp_read_stpct_26:
	add	r4, r0, #0
.Lnp_read_stpct_24:
	ldr	r1, .Lnp_read_stpct_29 @ 0xa89
	add	r0, r6, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_read_stpct_27	@cond_branch
	ldr	r1, .Lnp_read_stpct_29 + 4 @ GLV_ST_DojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_29 + 8 @ GLV_ST_RensaSTime
	b	.Lnp_read_stpct_53
.Lnp_read_stpct_30:
	.align	2, 0
.Lnp_read_stpct_29:
	.word	0xa89
	.word	GLV_ST_DojiSTime
	.word	GLV_ST_RensaSTime
.Lnp_read_stpct_27:
	ldr	r1, .Lnp_read_stpct_32 @ GLV_ST_DangerDojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_32 + 4 @ GLV_ST_DangerRensaSTime
	b	.Lnp_read_stpct_53
.Lnp_read_stpct_33:
	.align	2, 0
.Lnp_read_stpct_32:
	.word	GLV_ST_DangerDojiSTime
	.word	GLV_ST_DangerRensaSTime
.Lnp_read_stpct_17:
	ldrb	r0, [r3, #0x6]
	cmp	r0, #0x5
	bhi	.Lnp_read_stpct_46	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_read_stpct_36 @ .Lnp_read_stpct_35
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_read_stpct_37:
	.align	2, 0
.Lnp_read_stpct_36:
	.word	.Lnp_read_stpct_35
.Lnp_read_stpct_35:
	.word	.Lnp_read_stpct_43
	.word	.Lnp_read_stpct_39
	.word	.Lnp_read_stpct_42
	.word	.Lnp_read_stpct_42
	.word	.Lnp_read_stpct_42
	.word	.Lnp_read_stpct_43
.Lnp_read_stpct_39:
	mov	r4, #0x3
	b	.Lnp_read_stpct_46
.Lnp_read_stpct_42:
	mov	r4, #0x5
	b	.Lnp_read_stpct_46
.Lnp_read_stpct_43:
	mov	r4, #0x1
	b	.Lnp_read_stpct_46
.Lnp_read_stpct_20:
	ldrb	r0, [r3, #0x8]
	cmp	r0, #0
	ble	.Lnp_read_stpct_47	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnp_read_stpct_48
.Lnp_read_stpct_47:
	mov	r0, #0x0
.Lnp_read_stpct_48:
	add	r4, r0, #0
.Lnp_read_stpct_46:
	ldr	r1, .Lnp_read_stpct_51 @ 0xa89
	add	r0, r6, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_read_stpct_49	@cond_branch
	ldr	r1, .Lnp_read_stpct_51 + 4 @ GLV_VS_DojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_51 + 8 @ GLV_VS_RensaSTime
	b	.Lnp_read_stpct_53
.Lnp_read_stpct_52:
	.align	2, 0
.Lnp_read_stpct_51:
	.word	0xa89
	.word	GLV_VS_DojiSTime
	.word	GLV_VS_RensaSTime
.Lnp_read_stpct_49:
	ldr	r1, .Lnp_read_stpct_54 @ GLV_VS_DangerDojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_54 + 4 @ GLV_VS_DangerRensaSTime
	b	.Lnp_read_stpct_53
.Lnp_read_stpct_55:
	.align	2, 0
.Lnp_read_stpct_54:
	.word	GLV_VS_DangerDojiSTime
	.word	GLV_VS_DangerRensaSTime
.Lnp_read_stpct_13:
	ldrb	r0, [r3, #0x6]
	cmp	r0, #0x5
	bhi	.Lnp_read_stpct_67	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_read_stpct_58 @ .Lnp_read_stpct_57
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_read_stpct_59:
	.align	2, 0
.Lnp_read_stpct_58:
	.word	.Lnp_read_stpct_57
.Lnp_read_stpct_57:
	.word	.Lnp_read_stpct_65
	.word	.Lnp_read_stpct_61
	.word	.Lnp_read_stpct_64
	.word	.Lnp_read_stpct_64
	.word	.Lnp_read_stpct_64
	.word	.Lnp_read_stpct_65
.Lnp_read_stpct_61:
	mov	r4, #0x1
	b	.Lnp_read_stpct_67
.Lnp_read_stpct_64:
	mov	r4, #0x2
	b	.Lnp_read_stpct_67
.Lnp_read_stpct_65:
	mov	r4, #0x0
.Lnp_read_stpct_67:
	ldr	r1, .Lnp_read_stpct_70 @ 0xa89
	add	r0, r6, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_read_stpct_68	@cond_branch
	ldr	r1, .Lnp_read_stpct_70 + 4 @ GLV_ED_DojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_70 + 8 @ GLV_ED_RensaSTime
.Lnp_read_stpct_53:
	lsl	r0, r5, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	add	r4, r4, r0
	ldrh	r0, [r4]
	bl	np_rdstpct_cntset
	b	.Lnp_read_stpct_69
.Lnp_read_stpct_71:
	.align	2, 0
.Lnp_read_stpct_70:
	.word	0xa89
	.word	GLV_ED_DojiSTime
	.word	GLV_ED_RensaSTime
.Lnp_read_stpct_68:
	ldr	r1, .Lnp_read_stpct_72 @ GLV_ED_DangerDojiSTime
	lsl	r0, r2, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	lsl	r4, r4, #0x1
	add	r0, r4, r0
	ldrh	r0, [r0]
	bl	np_rdstpct_cntset
	ldr	r1, .Lnp_read_stpct_72 + 4 @ GLV_ED_DangerRensaSTime
	lsl	r0, r5, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	add	r4, r4, r0
	ldrh	r0, [r4]
	bl	np_rdstpct_cntset
.Lnp_read_stpct_69:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_read_stpct_73:
	.align	2, 0
.Lnp_read_stpct_72:
	.word	GLV_ED_DangerDojiSTime
	.word	GLV_ED_DangerRensaSTime
	thumb_func_end np_read_stpct
