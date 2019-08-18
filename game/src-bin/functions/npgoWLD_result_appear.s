	thumb_func_start npgoWLD_result_appear
npgoWLD_result_appear:
	push	{r4, r5, lr}
	bl	np_game_code_kosu
	cmp	r0, #0
	bne	.LnpgoWLD_result_appear_1	@cond_branch
	ldr	r1, .LnpgoWLD_result_appear_3 @ NRam
	ldr	r0, .LnpgoWLD_result_appear_3 + 4 @ 0xbc8
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	b	.LnpgoWLD_result_appear_2
.LnpgoWLD_result_appear_4:
	.align	2, 0
.LnpgoWLD_result_appear_3:
	.word	NRam
	.word	0xbc8
.LnpgoWLD_result_appear_1:
	ldr	r5, .LnpgoWLD_result_appear_7 @ NRam
	mov	r1, #0xbd
	lsl	r1, r1, #0x4
	add	r4, r5, r1
	ldr	r0, [r4]
	add	r0, r0, #0x3
	str	r0, [r4]
	cmp	r0, #0
	bge	.LnpgoWLD_result_appear_5	@cond_branch
	bl	np_chk_start_key_s
	cmp	r0, #0
	beq	.LnpgoWLD_result_appear_6	@cond_branch
.LnpgoWLD_result_appear_5:
	mov	r0, #0x0
	str	r0, [r4]
	ldr	r0, .LnpgoWLD_result_appear_7 + 4 @ 0xbc8
	add	r1, r5, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_result_appear_6:
	ldr	r0, .LnpgoWLD_result_appear_7 @ NRam
	mov	r1, #0xbd
	lsl	r1, r1, #0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	bl	npgoWLD_result_scrn
	mov	r0, #0x0
.LnpgoWLD_result_appear_2:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.LnpgoWLD_result_appear_8:
	.align	2, 0
.LnpgoWLD_result_appear_7:
	.word	NRam
	.word	0xbc8
	thumb_func_end npgoWLD_result_appear
