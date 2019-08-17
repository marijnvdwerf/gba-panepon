	thumb_func_start npgpr_SPNLCHK
npgpr_SPNLCHK:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_SPNLCHK_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_SPNLCHK_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_SPNLCHK_2 + 4 @ .Lnpgpr_SPNLCHK_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_SPNLCHK_3:
	.align	2, 0
.Lnpgpr_SPNLCHK_2:
	.word	ARam
	.word	.Lnpgpr_SPNLCHK_4
.Lnpgpr_SPNLCHK_4:
	.word	.Lnpgpr_SPNLCHK_14
	.word	.Lnpgpr_SPNLCHK_14
	.word	.Lnpgpr_SPNLCHK_7
	.word	.Lnpgpr_SPNLCHK_14
	.word	.Lnpgpr_SPNLCHK_13
	.word	.Lnpgpr_SPNLCHK_13
	.word	.Lnpgpr_SPNLCHK_13
	.word	.Lnpgpr_SPNLCHK_13
	.word	.Lnpgpr_SPNLCHK_13
	.word	.Lnpgpr_SPNLCHK_14
.Lnpgpr_SPNLCHK_14:
	ldr	r4, .Lnpgpr_SPNLCHK_16 @ GLV_ED_SeriKind
	bl	npgpr_lvlconv
	b	.Lnpgpr_SPNLCHK_18
.Lnpgpr_SPNLCHK_17:
	.align	2, 0
.Lnpgpr_SPNLCHK_16:
	.word	GLV_ED_SeriKind
.Lnpgpr_SPNLCHK_7:
	ldr	r4, .Lnpgpr_SPNLCHK_19 @ GLV_ST_SeriKind
	bl	npgpr_stgclr_rnd
	b	.Lnpgpr_SPNLCHK_18
.Lnpgpr_SPNLCHK_20:
	.align	2, 0
.Lnpgpr_SPNLCHK_19:
	.word	GLV_ST_SeriKind
.Lnpgpr_SPNLCHK_13:
	ldr	r4, .Lnpgpr_SPNLCHK_21 @ GLV_VS_SeriKind
	bl	npgpr_P1lev
.Lnpgpr_SPNLCHK_18:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_SPNLCHK_1:
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_SPNLCHK_22:
	.align	2, 0
.Lnpgpr_SPNLCHK_21:
	.word	GLV_VS_SeriKind
	thumb_func_end npgpr_SPNLCHK
