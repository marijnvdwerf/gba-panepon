	thumb_func_start npgpr_OFLOAT
npgpr_OFLOAT:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_OFLOAT_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_OFLOAT_15	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_OFLOAT_2 + 4 @ .Lnpgpr_OFLOAT_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_OFLOAT_3:
	.align	2, 0
.Lnpgpr_OFLOAT_2:
	.word	ARam
	.word	.Lnpgpr_OFLOAT_4
.Lnpgpr_OFLOAT_4:
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_8
	.word	.Lnpgpr_OFLOAT_8
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
	.word	.Lnpgpr_OFLOAT_14
.Lnpgpr_OFLOAT_8:
	mov	r1, #0x1
	b	.Lnpgpr_OFLOAT_15
.Lnpgpr_OFLOAT_14:
	ldr	r4, .Lnpgpr_OFLOAT_16 @ GLV_VS_MeltRakkaWait
	bl	npgpr_P1lev
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_OFLOAT_15:
	add	r0, r1, #0
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_OFLOAT_17:
	.align	2, 0
.Lnpgpr_OFLOAT_16:
	.word	GLV_VS_MeltRakkaWait
	thumb_func_end npgpr_OFLOAT
