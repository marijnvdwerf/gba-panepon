	thumb_func_start npgpr_KAOFRM
npgpr_KAOFRM:
	push	{r4, lr}
	ldr	r0, .Lnpgpr_KAOFRM_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnpgpr_KAOFRM_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnpgpr_KAOFRM_2 + 4 @ .Lnpgpr_KAOFRM_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_KAOFRM_3:
	.align	2, 0
.Lnpgpr_KAOFRM_2:
	.word	ARam
	.word	.Lnpgpr_KAOFRM_4
.Lnpgpr_KAOFRM_4:
	.word	.Lnpgpr_KAOFRM_14
	.word	.Lnpgpr_KAOFRM_14
	.word	.Lnpgpr_KAOFRM_7
	.word	.Lnpgpr_KAOFRM_14
	.word	.Lnpgpr_KAOFRM_13
	.word	.Lnpgpr_KAOFRM_13
	.word	.Lnpgpr_KAOFRM_13
	.word	.Lnpgpr_KAOFRM_13
	.word	.Lnpgpr_KAOFRM_13
	.word	.Lnpgpr_KAOFRM_14
.Lnpgpr_KAOFRM_14:
	ldr	r4, .Lnpgpr_KAOFRM_16 @ GLV_ED_BikuFace
	bl	npgpr_lvlconv
	b	.Lnpgpr_KAOFRM_18
.Lnpgpr_KAOFRM_17:
	.align	2, 0
.Lnpgpr_KAOFRM_16:
	.word	GLV_ED_BikuFace
.Lnpgpr_KAOFRM_7:
	ldr	r4, .Lnpgpr_KAOFRM_19 @ GLV_ST_BikuFace
	bl	npgpr_stgclr_rnd
	b	.Lnpgpr_KAOFRM_18
.Lnpgpr_KAOFRM_20:
	.align	2, 0
.Lnpgpr_KAOFRM_19:
	.word	GLV_ST_BikuFace
.Lnpgpr_KAOFRM_13:
	ldr	r4, .Lnpgpr_KAOFRM_21 @ GLV_VS_BikuFace
	bl	npgpr_P1lev
.Lnpgpr_KAOFRM_18:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r1, [r0]
.Lnpgpr_KAOFRM_1:
	add	r0, r1, #2
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r0, r1, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnpgpr_KAOFRM_22:
	.align	2, 0
.Lnpgpr_KAOFRM_21:
	.word	GLV_VS_BikuFace
	thumb_func_end npgpr_KAOFRM
