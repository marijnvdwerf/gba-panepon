	thumb_func_start npgoWLD_TryAgainYesNo_Af_main
npgoWLD_TryAgainYesNo_Af_main:
	push	{r4, lr}
	bl	npgmov_tagnyes
	bl	npgmov_tagnnoo
	bl	npgmov_tagncsr
	bl	npgmov_tagnagn
	bl	np_BigMojiYure_main
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_main_5 @ b_BG2VOFS
	ldr	r4, .LnpgoWLD_TryAgainYesNo_Af_main_5 + 4 @ NRam
	ldr	r2, .LnpgoWLD_TryAgainYesNo_Af_main_5 + 8 @ 0xc4c
	add	r0, r4, r2
	ldrb	r0, [r0]
	strh	r0, [r1]
	bl	np_chk_start_key_s
	add	r2, r0, #0
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_5 + 12 @ 0xc4a
	add	r1, r4, r0
	ldrh	r0, [r1]
	add	r0, r0, #0x1
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x3c
	bhi	.LnpgoWLD_TryAgainYesNo_Af_main_1	@cond_branch
	cmp	r2, #0
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_2	@cond_branch
.LnpgoWLD_TryAgainYesNo_Af_main_1:
	mov	r0, #0x0
	strh	r0, [r1]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_5 + 16 @ ARam
	ldrb	r1, [r0, #0x2]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.LnpgoWLD_TryAgainYesNo_Af_main_3	@cond_branch
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_main_5 + 20 @ 0xb25
	add	r0, r4, r1
	ldrb	r0, [r0]
	strb	r0, [r3, #0x7]
	add	r2, r4, #0
	b	.LnpgoWLD_TryAgainYesNo_Af_main_8
.LnpgoWLD_TryAgainYesNo_Af_main_6:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_5:
	.word	b_BG2VOFS
	.word	NRam
	.word	0xc4c
	.word	0xc4a
	.word	ARam
	.word	0xb25
.LnpgoWLD_TryAgainYesNo_Af_main_3:
	cmp	r1, #0x4
	bne	.LnpgoWLD_TryAgainYesNo_Af_main_9	@cond_branch
	add	r0, r4, #0
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	strb	r0, [r3, #0xa]
	add	r2, r4, #0
	b	.LnpgoWLD_TryAgainYesNo_Af_main_8
.LnpgoWLD_TryAgainYesNo_Af_main_9:
	b	.LnpgoWLD_TryAgainYesNo_Af_main_9
.LnpgoWLD_TryAgainYesNo_Af_main_8:
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_12 @ 0xadc
	add	r1, r2, r0
	mov	r0, #0x0
	strb	r0, [r1]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_12 + 4 @ 0xc48
	add	r1, r2, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	add	r0, r3, #0
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_10	@cond_branch
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_12 + 8 @ NisTitleInit + 1
	b	.LnpgoWLD_TryAgainYesNo_Af_main_11
.LnpgoWLD_TryAgainYesNo_Af_main_13:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_12:
	.word	0xadc
	.word	0xc48
	.word	NisTitleInit + 1
.LnpgoWLD_TryAgainYesNo_Af_main_10:
	bl	nds_gmlvl_set
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_14 @ nis_game_init + 1
.LnpgoWLD_TryAgainYesNo_Af_main_11:
	bl	MainSeqSearchNear
.LnpgoWLD_TryAgainYesNo_Af_main_2:
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_TryAgainYesNo_Af_main_15:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_14:
	.word	nis_game_init + 1
	thumb_func_end npgoWLD_TryAgainYesNo_Af_main
