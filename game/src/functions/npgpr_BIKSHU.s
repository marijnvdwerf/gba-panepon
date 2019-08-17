	thumb_func_start npgpr_BIKSHU
npgpr_BIKSHU:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_BIKSHU_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_BIKSHU_15	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_BIKSHU_2 + 4 @ .Lnpgpr_BIKSHU_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_BIKSHU_3:
	.align	2, 0
.Lnpgpr_BIKSHU_2:
	.word	ARam
	.word	.Lnpgpr_BIKSHU_4
.Lnpgpr_BIKSHU_4:
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_11
	.word	.Lnpgpr_BIKSHU_11
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
	.word	.Lnpgpr_BIKSHU_14
.Lnpgpr_BIKSHU_14:
	mov	r1, #0x0
	b	.Lnpgpr_BIKSHU_15
.Lnpgpr_BIKSHU_11:
	ldr	r4, .Lnpgpr_BIKSHU_16 @ GLV_VS_BikuPanel
	bl	npgpr_P1lev
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_BIKSHU_15:
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_BIKSHU_17:
	.align	2, 0
.Lnpgpr_BIKSHU_16:
	.word	GLV_VS_BikuPanel
	thumb_func_end npgpr_BIKSHU
