	thumb_func_start npgpr_PNLKIND
npgpr_PNLKIND:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_PNLKIND_2 @ ARam
	ldrb	r2, [r0, #0x2]
	add	r4, r0, #0
	cmp	r2, #0x9
	bhi	.Lnpgpr_PNLKIND_19	@cond_branch
	lsl	r0, r2, #0x2
	ldr	r1, .Lnpgpr_PNLKIND_2 + 4 @ .Lnpgpr_PNLKIND_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_PNLKIND_3:
	.align	2, 0
.Lnpgpr_PNLKIND_2:
	.word	ARam
	.word	.Lnpgpr_PNLKIND_4
.Lnpgpr_PNLKIND_4:
	.word	.Lnpgpr_PNLKIND_14
	.word	.Lnpgpr_PNLKIND_6
	.word	.Lnpgpr_PNLKIND_7
	.word	.Lnpgpr_PNLKIND_14
	.word	.Lnpgpr_PNLKIND_13
	.word	.Lnpgpr_PNLKIND_13
	.word	.Lnpgpr_PNLKIND_13
	.word	.Lnpgpr_PNLKIND_12
	.word	.Lnpgpr_PNLKIND_13
	.word	.Lnpgpr_PNLKIND_14
.Lnpgpr_PNLKIND_14:
	ldr	r4, .Lnpgpr_PNLKIND_16 @ GLV_ED_Kind
	bl	npgpr_lvlconv
	b	.Lnpgpr_PNLKIND_15
.Lnpgpr_PNLKIND_17:
	.align	2, 0
.Lnpgpr_PNLKIND_16:
	.word	GLV_ED_Kind
.Lnpgpr_PNLKIND_7:
	ldrb	r0, [r4, #0xd]
	cmp	r0, #0
	beq	.Lnpgpr_PNLKIND_18	@cond_branch
.Lnpgpr_PNLKIND_6:
	mov	r1, #0x6
	b	.Lnpgpr_PNLKIND_19
.Lnpgpr_PNLKIND_18:
	bl	npgpr_stgclr_rnd
	add	r1, r0, #0
	ldrb	r2, [r4, #0xc]
	cmp	r2, #0
	ble	.Lnpgpr_PNLKIND_20	@cond_branch
	sub	r2, r2, #0x1
	b	.Lnpgpr_PNLKIND_21
.Lnpgpr_PNLKIND_20:
	mov	r2, #0x0
.Lnpgpr_PNLKIND_21:
	ldr	r0, .Lnpgpr_PNLKIND_23 @ GLV_ST_Kind
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x16
	add	r1, r1, r0
	ldr	r0, [r1]
	add	r0, r0, r2
	b	.Lnpgpr_PNLKIND_22
.Lnpgpr_PNLKIND_24:
	.align	2, 0
.Lnpgpr_PNLKIND_23:
	.word	GLV_ST_Kind
.Lnpgpr_PNLKIND_13:
	ldr	r4, .Lnpgpr_PNLKIND_26 @ GLV_VS_Kind
	b	.Lnpgpr_PNLKIND_25
.Lnpgpr_PNLKIND_27:
	.align	2, 0
.Lnpgpr_PNLKIND_26:
	.word	GLV_VS_Kind
.Lnpgpr_PNLKIND_12:
	ldr	r4, .Lnpgpr_PNLKIND_28 @ GLV_VST_Kind
.Lnpgpr_PNLKIND_25:
	bl	npgpr_P1lev
.Lnpgpr_PNLKIND_15:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
.Lnpgpr_PNLKIND_22:
	ldrb	r1, [r0]
.Lnpgpr_PNLKIND_19:
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_PNLKIND_29:
	.align	2, 0
.Lnpgpr_PNLKIND_28:
	.word	GLV_VST_Kind
	thumb_func_end npgpr_PNLKIND
