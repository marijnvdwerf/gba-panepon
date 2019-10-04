	thumb_func_start npgoWLD_TryAgainYesNo_Af_main
npgoWLD_TryAgainYesNo_Af_main:
	push	{r4, lr}
	bl	npgmov_tagnyes
	bl	npgmov_tagnnoo
	bl	npgmov_tagncsr
	bl	npgmov_tagnagn
	bl	np_BigMojiYure_main
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_main_6 @ b_BG2VOFS
	ldr	r4, .LnpgoWLD_TryAgainYesNo_Af_main_6 + 4 @ NRam
	mov	r2, #0xbd
	lsl	r2, r2, #0x4
	add	r0, r4, r2
	ldrb	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_main_6 + 8 @ b_BG2HOFS
	ldr	r2, .LnpgoWLD_TryAgainYesNo_Af_main_6 + 12 @ 0xfffe
	add	r0, r2, #0
	strh	r0, [r1]
	bl	np_chk_start_key_s
	add	r1, r0, #0
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_6 + 16 @ 0xbce
	add	r4, r4, r0
	ldrh	r0, [r4]
	add	r0, r0, #0x1
	strh	r0, [r4]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x3c
	bhi	.LnpgoWLD_TryAgainYesNo_Af_main_1	@cond_branch
	cmp	r1, #0
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_2	@cond_branch
.LnpgoWLD_TryAgainYesNo_Af_main_1:
	mov	r0, #0x0
	strh	r0, [r4]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_6 + 20 @ ARam
	ldrb	r1, [r0, #0x2]
	add	r3, r0, #0
	cmp	r1, #0
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_4	@cond_branch
	cmp	r1, #0x4
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_4	@cond_branch
.LnpgoWLD_TryAgainYesNo_Af_main_5:
	b	.LnpgoWLD_TryAgainYesNo_Af_main_5
.LnpgoWLD_TryAgainYesNo_Af_main_7:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_6:
	.word	b_BG2VOFS
	.word	NRam
	.word	b_BG2HOFS
	.word	0xfffe
	.word	0xbce
	.word	ARam
.LnpgoWLD_TryAgainYesNo_Af_main_4:
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_main_10 @ NRam
	mov	r2, #0xa6
	lsl	r2, r2, #0x4
	add	r0, r1, r2
	mov	r2, #0x0
	strb	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 4 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	add	r0, r3, #0
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.LnpgoWLD_TryAgainYesNo_Af_main_8	@cond_branch
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 8 @ b_BG0VOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 12 @ b_BG0HOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 16 @ b_BG1VOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 20 @ b_BG1HOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 24 @ b_BG2VOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 28 @ b_BG2HOFS
	strh	r2, [r0]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_10 + 32 @ NisTitleInit + 1
	b	.LnpgoWLD_TryAgainYesNo_Af_main_9
.LnpgoWLD_TryAgainYesNo_Af_main_11:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_10:
	.word	NRam
	.word	0xbcc
	.word	b_BG0VOFS
	.word	b_BG0HOFS
	.word	b_BG1VOFS
	.word	b_BG1HOFS
	.word	b_BG2VOFS
	.word	b_BG2HOFS
	.word	NisTitleInit + 1
.LnpgoWLD_TryAgainYesNo_Af_main_8:
	bl	nds_gmlvl_set
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_main_12 @ nis_game_init + 1
.LnpgoWLD_TryAgainYesNo_Af_main_9:
	bl	MainSeqSearchNear
.LnpgoWLD_TryAgainYesNo_Af_main_2:
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_TryAgainYesNo_Af_main_13:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_main_12:
	.word	nis_game_init + 1
	thumb_func_end npgoWLD_TryAgainYesNo_Af_main
