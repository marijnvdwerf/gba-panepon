	thumb_func_start npgpr_FLOAT
npgpr_FLOAT:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_FLOAT_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_FLOAT_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_FLOAT_2 + 4 @ .Lnpgpr_FLOAT_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_FLOAT_3:
	.align	2, 0
.Lnpgpr_FLOAT_2:
	.word	ARam
	.word	.Lnpgpr_FLOAT_4
.Lnpgpr_FLOAT_4:
	.word	.Lnpgpr_FLOAT_14
	.word	.Lnpgpr_FLOAT_14
	.word	.Lnpgpr_FLOAT_7
	.word	.Lnpgpr_FLOAT_14
	.word	.Lnpgpr_FLOAT_13
	.word	.Lnpgpr_FLOAT_13
	.word	.Lnpgpr_FLOAT_13
	.word	.Lnpgpr_FLOAT_13
	.word	.Lnpgpr_FLOAT_13
	.word	.Lnpgpr_FLOAT_14
.Lnpgpr_FLOAT_14:
	ldr	r4, .Lnpgpr_FLOAT_16 @ GLV_ED_RakkaWait
	bl	npgpr_lvlconv
	b	.Lnpgpr_FLOAT_18
.Lnpgpr_FLOAT_17:
	.align	2, 0
.Lnpgpr_FLOAT_16:
	.word	GLV_ED_RakkaWait
.Lnpgpr_FLOAT_7:
	ldr	r4, .Lnpgpr_FLOAT_19 @ GLV_ST_RakkaWait
	bl	npgpr_stgclr_rnd
	b	.Lnpgpr_FLOAT_18
.Lnpgpr_FLOAT_20:
	.align	2, 0
.Lnpgpr_FLOAT_19:
	.word	GLV_ST_RakkaWait
.Lnpgpr_FLOAT_13:
	ldr	r4, .Lnpgpr_FLOAT_21 @ GLV_VS_RakkaWait
	bl	npgpr_P1lev
.Lnpgpr_FLOAT_18:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_FLOAT_1:
	add	r0, r1, #0
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_FLOAT_22:
	.align	2, 0
.Lnpgpr_FLOAT_21:
	.word	GLV_VS_RakkaWait
	thumb_func_end npgpr_FLOAT
