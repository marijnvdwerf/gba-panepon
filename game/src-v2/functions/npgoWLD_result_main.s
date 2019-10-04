	thumb_func_start npgoWLD_result_main
npgoWLD_result_main:
	push	{r4, r5, r6, lr}
	bl	np_game_code_kosu
	cmp	r0, #0
	bne	.LnpgoWLD_result_main_1	@cond_branch
	ldr	r1, .LnpgoWLD_result_main_3 @ NRam
	ldr	r0, .LnpgoWLD_result_main_3 + 4 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	b	.LnpgoWLD_result_main_2
.LnpgoWLD_result_main_4:
	.align	2, 0
.LnpgoWLD_result_main_3:
	.word	NRam
	.word	0xbcc
.LnpgoWLD_result_main_1:
	ldr	r3, .LnpgoWLD_result_main_10 @ NRam
	ldr	r1, .LnpgoWLD_result_main_10 + 4 @ 0xbd8
	add	r2, r3, r1
	sub	r0, r0, #0x7
	str	r0, [r2]
	cmp	r0, #0
	bge	.LnpgoWLD_result_main_5	@cond_branch
	mov	r0, #0x0
	str	r0, [r2]
.LnpgoWLD_result_main_5:
	ldr	r1, [r2]
	lsl	r0, r1, #0x2
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	str	r0, [r2]
	cmp	r0, #0
	ble	.LnpgoWLD_result_main_6	@cond_branch
	add	r0, r0, #0xa
	str	r0, [r2]
.LnpgoWLD_result_main_6:
	ldr	r0, .LnpgoWLD_result_main_10 + 8 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LnpgoWLD_result_main_9	@cond_branch
	ldr	r0, .LnpgoWLD_result_main_10 + 12 @ 0xbd4
	add	r1, r3, r0
	ldr	r0, [r1]
	sub	r0, r0, #0x5
	str	r0, [r1]
	cmp	r0, #0
	bge	.LnpgoWLD_result_main_8	@cond_branch
	mov	r0, #0x0
	str	r0, [r1]
	b	.LnpgoWLD_result_main_9
.LnpgoWLD_result_main_11:
	.align	2, 0
.LnpgoWLD_result_main_10:
	.word	NRam
	.word	0xbd8
	.word	KeyRead_Rpt
	.word	0xbd4
.LnpgoWLD_result_main_8:
	mov	r0, #0x1
	bl	m4aSongNumStart
.LnpgoWLD_result_main_9:
	ldr	r0, .LnpgoWLD_result_main_15 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LnpgoWLD_result_main_14	@cond_branch
	ldr	r1, .LnpgoWLD_result_main_15 + 4 @ NRam
	ldr	r3, .LnpgoWLD_result_main_15 + 8 @ 0xbd4
	add	r2, r1, r3
	ldr	r0, [r2]
	add	r0, r0, #0x5
	str	r0, [r2]
	add	r3, r3, #0x4
	add	r1, r1, r3
	ldr	r1, [r1]
	cmp	r0, r1
	ble	.LnpgoWLD_result_main_13	@cond_branch
	str	r1, [r2]
	b	.LnpgoWLD_result_main_14
.LnpgoWLD_result_main_16:
	.align	2, 0
.LnpgoWLD_result_main_15:
	.word	KeyRead_Rpt
	.word	NRam
	.word	0xbd4
.LnpgoWLD_result_main_13:
	mov	r0, #0x1
	bl	m4aSongNumStart
.LnpgoWLD_result_main_14:
	ldr	r0, .LnpgoWLD_result_main_20 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x9
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LnpgoWLD_result_main_17	@cond_branch
	mov	r0, #0x64
	bl	m4aSongNumStart
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r1, .LnpgoWLD_result_main_20 + 4 @ NRam
	ldr	r0, .LnpgoWLD_result_main_20 + 8 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_result_main_17:
	ldr	r0, .LnpgoWLD_result_main_20 + 12 @ NmiInc
	ldr	r0, [r0]
	lsr	r0, r0, #0x2
	mov	r1, #0x3
	bl	__umodsi3
	neg	r5, r0
	ldr	r6, .LnpgoWLD_result_main_20 + 4 @ NRam
	ldr	r1, .LnpgoWLD_result_main_20 + 16 @ 0xbd4
	add	r4, r6, r1
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.LnpgoWLD_result_main_18	@cond_branch
	add	r1, r5, #2
	ldr	r2, .LnpgoWLD_result_main_20 + 20 @ Aob_Panel_TryAgain_04
	mov	r0, #0x7e
	bl	NisCtc_PutCtc
.LnpgoWLD_result_main_18:
	ldr	r3, .LnpgoWLD_result_main_20 + 24 @ 0xbd8
	add	r0, r6, r3
	ldr	r1, [r4]
	ldr	r0, [r0]
	cmp	r1, r0
	beq	.LnpgoWLD_result_main_19	@cond_branch
	mov	r1, #0x96
	sub	r1, r1, r5
	ldr	r2, .LnpgoWLD_result_main_20 + 28 @ Aob_Panel_TryAgain_05
	mov	r0, #0x7e
	bl	NisCtc_PutCtc
.LnpgoWLD_result_main_19:
	ldr	r0, [r4]
	bl	npgoWLD_result_scrn
	mov	r0, #0x0
.LnpgoWLD_result_main_2:
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.LnpgoWLD_result_main_21:
	.align	2, 0
.LnpgoWLD_result_main_20:
	.word	KeyRead_Trg
	.word	NRam
	.word	0xbcc
	.word	NmiInc
	.word	0xbd4
	.word	Aob_Panel_TryAgain_04
	.word	0xbd8
	.word	Aob_Panel_TryAgain_05
	thumb_func_end npgoWLD_result_main
