	thumb_func_start npgpr_TENMETU
npgpr_TENMETU:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_TENMETU_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_TENMETU_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_TENMETU_2 + 4 @ .Lnpgpr_TENMETU_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_TENMETU_3:
	.align	2, 0
.Lnpgpr_TENMETU_2:
	.word	ARam
	.word	.Lnpgpr_TENMETU_4
.Lnpgpr_TENMETU_4:
	.word	.Lnpgpr_TENMETU_14
	.word	.Lnpgpr_TENMETU_14
	.word	.Lnpgpr_TENMETU_7
	.word	.Lnpgpr_TENMETU_14
	.word	.Lnpgpr_TENMETU_13
	.word	.Lnpgpr_TENMETU_13
	.word	.Lnpgpr_TENMETU_13
	.word	.Lnpgpr_TENMETU_13
	.word	.Lnpgpr_TENMETU_13
	.word	.Lnpgpr_TENMETU_14
.Lnpgpr_TENMETU_14:
	ldr	r4, .Lnpgpr_TENMETU_16 @ GLV_ED_FlashNum
	bl	npgpr_lvlconv
	b	.Lnpgpr_TENMETU_18
.Lnpgpr_TENMETU_17:
	.align	2, 0
.Lnpgpr_TENMETU_16:
	.word	GLV_ED_FlashNum
.Lnpgpr_TENMETU_7:
	ldr	r4, .Lnpgpr_TENMETU_19 @ GLV_ST_FlashNum
	bl	npgpr_stgclr_rnd
	b	.Lnpgpr_TENMETU_18
.Lnpgpr_TENMETU_20:
	.align	2, 0
.Lnpgpr_TENMETU_19:
	.word	GLV_ST_FlashNum
.Lnpgpr_TENMETU_13:
	ldr	r4, .Lnpgpr_TENMETU_21 @ GLV_VS_FlashNum
	bl	npgpr_P1lev
.Lnpgpr_TENMETU_18:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_TENMETU_1:
	lsl	r0, r1, #0x19
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_TENMETU_22:
	.align	2, 0
.Lnpgpr_TENMETU_21:
	.word	GLV_VS_FlashNum
	thumb_func_end npgpr_TENMETU
