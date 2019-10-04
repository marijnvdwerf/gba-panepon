	thumb_func_start npgoWLD_TryAgainYesNo_main
npgoWLD_TryAgainYesNo_main:
	push	{lr}
	bl	npgmov_tagnyes
	bl	npgmov_tagnnoo
	bl	npgmov_tagncsr
	bl	npgmov_tagnagn
	bl	np_BigMojiYure_main
	ldr	r1, .LnpgoWLD_TryAgainYesNo_main_5 @ b_BG2VOFS
	ldr	r0, .LnpgoWLD_TryAgainYesNo_main_5 + 4 @ NRam
	mov	r2, #0xbd
	lsl	r2, r2, #0x4
	add	r0, r0, r2
	ldrb	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .LnpgoWLD_TryAgainYesNo_main_5 + 8 @ b_BG2HOFS
	ldr	r2, .LnpgoWLD_TryAgainYesNo_main_5 + 12 @ 0xfffe
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .LnpgoWLD_TryAgainYesNo_main_5 + 16 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x34
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LnpgoWLD_TryAgainYesNo_main_1	@cond_branch
	ldr	r0, .LnpgoWLD_TryAgainYesNo_main_5 + 20 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x2b
	ldrb	r1, [r1]
	add	r1, r1, #0x1
	add	r2, r0, #0
	cmp	r1, #0
	blt	.LnpgoWLD_TryAgainYesNo_main_2	@cond_branch
	mov	r0, #0x1
	cmp	r0, r1
	bge	.LnpgoWLD_TryAgainYesNo_main_3	@cond_branch
.LnpgoWLD_TryAgainYesNo_main_2:
	mov	r1, #0x0
.LnpgoWLD_TryAgainYesNo_main_3:
	add	r0, r2, #0
	add	r0, r0, #0x2b
	strb	r1, [r0]
	mov	r0, #0x1
	bl	m4aSongNumStart
.LnpgoWLD_TryAgainYesNo_main_1:
	ldr	r0, .LnpgoWLD_TryAgainYesNo_main_5 + 16 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x9
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LnpgoWLD_TryAgainYesNo_main_4	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r1, .LnpgoWLD_TryAgainYesNo_main_5 + 4 @ NRam
	ldr	r0, .LnpgoWLD_TryAgainYesNo_main_5 + 24 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_TryAgainYesNo_main_4:
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.LnpgoWLD_TryAgainYesNo_main_6:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_main_5:
	.word	b_BG2VOFS
	.word	NRam
	.word	b_BG2HOFS
	.word	0xfffe
	.word	KeyRead_Trg
	.word	ARam
	.word	0xbcc
	thumb_func_end npgoWLD_TryAgainYesNo_main
