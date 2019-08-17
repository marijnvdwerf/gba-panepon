	thumb_func_start npgpr_KAOKAN
npgpr_KAOKAN:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_KAOKAN_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_KAOKAN_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_KAOKAN_2 + 4 @ .Lnpgpr_KAOKAN_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_KAOKAN_3:
	.align	2, 0
.Lnpgpr_KAOKAN_2:
	.word	ARam
	.word	.Lnpgpr_KAOKAN_4
.Lnpgpr_KAOKAN_4:
	.word	.Lnpgpr_KAOKAN_14
	.word	.Lnpgpr_KAOKAN_14
	.word	.Lnpgpr_KAOKAN_7
	.word	.Lnpgpr_KAOKAN_14
	.word	.Lnpgpr_KAOKAN_13
	.word	.Lnpgpr_KAOKAN_13
	.word	.Lnpgpr_KAOKAN_13
	.word	.Lnpgpr_KAOKAN_13
	.word	.Lnpgpr_KAOKAN_13
	.word	.Lnpgpr_KAOKAN_14
.Lnpgpr_KAOKAN_14:
	ldr	r4, .Lnpgpr_KAOKAN_16 @ GLV_ED_BakuKan
	bl	npgpr_lvlconv
	b	.Lnpgpr_KAOKAN_18
.Lnpgpr_KAOKAN_17:
	.align	2, 0
.Lnpgpr_KAOKAN_16:
	.word	GLV_ED_BakuKan
.Lnpgpr_KAOKAN_7:
	ldr	r4, .Lnpgpr_KAOKAN_19 @ GLV_ST_BakuKan
	bl	npgpr_stgclr_rnd
	b	.Lnpgpr_KAOKAN_18
.Lnpgpr_KAOKAN_20:
	.align	2, 0
.Lnpgpr_KAOKAN_19:
	.word	GLV_ST_BakuKan
.Lnpgpr_KAOKAN_13:
	ldr	r4, .Lnpgpr_KAOKAN_21 @ GLV_VS_BakuKan
	bl	npgpr_P1lev
.Lnpgpr_KAOKAN_18:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_KAOKAN_1:
	add	r0, r1, #0
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_KAOKAN_22:
	.align	2, 0
.Lnpgpr_KAOKAN_21:
	.word	GLV_VS_BakuKan
	thumb_func_end npgpr_KAOKAN
