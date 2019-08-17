	thumb_func_start npgpr_OPNLCHK
npgpr_OPNLCHK:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_OPNLCHK_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_OPNLCHK_15	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_OPNLCHK_2 + 4 @ .Lnpgpr_OPNLCHK_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_OPNLCHK_3:
	.align	2, 0
.Lnpgpr_OPNLCHK_2:
	.word	ARam
	.word	.Lnpgpr_OPNLCHK_4
.Lnpgpr_OPNLCHK_4:
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_11
	.word	.Lnpgpr_OPNLCHK_11
	.word	.Lnpgpr_OPNLCHK_11
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_14
	.word	.Lnpgpr_OPNLCHK_14
.Lnpgpr_OPNLCHK_14:
	mov	r1, #0x0
	b	.Lnpgpr_OPNLCHK_15
.Lnpgpr_OPNLCHK_11:
	ldr	r4, .Lnpgpr_OPNLCHK_16 @ GLV_VS_MeltCount
	bl	npgpr_P1lev
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_OPNLCHK_15:
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_OPNLCHK_17:
	.align	2, 0
.Lnpgpr_OPNLCHK_16:
	.word	GLV_VS_MeltCount
	thumb_func_end npgpr_OPNLCHK
