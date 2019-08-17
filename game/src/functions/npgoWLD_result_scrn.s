	thumb_func_start npgoWLD_result_scrn
npgoWLD_result_scrn:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xffffffd4
	bl	np_game_code_kosu
	mov	sl, r0
	ldr	r0, .LnpgoWLD_result_scrn_7 @ NmiInc
	ldr	r0, [r0]
	lsr	r2, r0, #0x4
	mov	r0, #0x1
	and	r2, r2, r0
	ldr	r4, .LnpgoWLD_result_scrn_7 + 4 @ NRam
	mov	r0, #0xc5
	lsl	r0, r0, #0x4
	add	r6, r4, r0
	ldr	r1, [r6]
	mov	r0, #0x4
	sub	r5, r0, r1
	add	r0, r5, #0
	add	r0, r0, #0x10
	cmp	r0, #0xaf
	bhi	.LnpgoWLD_result_scrn_1	@cond_branch
	add	r1, r5, r2
	ldr	r2, .LnpgoWLD_result_scrn_7 + 8 @ Aob_Panel_TryAgain_06
	mov	r0, #0x0
	str	r0, [sp]
	mov	r0, #0x2
	str	r0, [sp, #0x4]
	mov	r0, #0x6e
	mov	r3, #0x0
	bl	NisCtc_EffPut
.LnpgoWLD_result_scrn_1:
	ldr	r1, [r6]
	mov	r0, #0x10
	sub	r5, r0, r1
	mov	r6, #0x0
	cmp	r6, sl
	bge	.LnpgoWLD_result_scrn_2	@cond_branch
	ldr	r1, .LnpgoWLD_result_scrn_7 + 12 @ 0xc3d
	add	r1, r1, r4
	mov	r9, r1
	mov	r7, #0x0
	ldr	r2, .LnpgoWLD_result_scrn_7 + 16 @ 0xc3c
	add	r2, r2, r4
	mov	r8, r2
.LnpgoWLD_result_scrn_9:
	mov	r0, #0x10
	neg	r0, r0
	cmp	r5, r0
	blt	.LnpgoWLD_result_scrn_4	@cond_branch
	cmp	r5, #0xa0
	bgt	.LnpgoWLD_result_scrn_4	@cond_branch
	mov	r0, r9
	strb	r5, [r0]
	mov	r0, #0x6c
	mov	r1, r8
	strb	r0, [r1]
	str	r7, [sp, #0xc]
	str	r7, [sp, #0x10]
	str	r7, [sp, #0x14]
	add	r0, r6, #0
	bl	np_game_code_read
	add	r4, r0, #0
	ldrh	r0, [r4, #0x2]
	cmp	r0, #0x64
	bhi	.LnpgoWLD_result_scrn_5	@cond_branch
	str	r0, [sp, #0x10]
	b	.LnpgoWLD_result_scrn_6
.LnpgoWLD_result_scrn_8:
	.align	2, 0
.LnpgoWLD_result_scrn_7:
	.word	NmiInc
	.word	NRam
	.word	Aob_Panel_TryAgain_06
	.word	0xc3d
	.word	0xc3c
.LnpgoWLD_result_scrn_5:
	ldrh	r0, [r4, #0x2]
	sub	r0, r0, #0x65
	str	r0, [sp, #0xc]
.LnpgoWLD_result_scrn_6:
	add	r0, sp, #0x8
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	bl	np_mk_put_agb
	mov	r2, r8
	ldrb	r0, [r2]
	add	r0, r0, #0x1
	mov	r2, r9
	ldrb	r1, [r2]
	ldrh	r2, [r4]
	bl	np_PutResultNumber
.LnpgoWLD_result_scrn_4:
	add	r6, r6, #0x1
	add	r5, r5, #0x14
	cmp	r6, sl
	blt	.LnpgoWLD_result_scrn_9	@cond_branch
.LnpgoWLD_result_scrn_2:
	add	sp, sp, #0x2c
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end npgoWLD_result_scrn
