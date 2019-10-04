	thumb_func_start npgoWLD_result_init
npgoWLD_result_init:
	push	{r4, lr}
	bl	np_game_code_kosu
	cmp	r0, #0
	beq	.LnpgoWLD_result_init_1	@cond_branch
	mov	r0, #0x69
	bl	m4aSongNumStart
.LnpgoWLD_result_init_1:
	ldr	r4, .LnpgoWLD_result_init_2 @ NRam
	ldr	r0, .LnpgoWLD_result_init_2 + 4 @ 0xbd4
	add	r1, r4, r0
	mov	r0, #0xa0
	neg	r0, r0
	str	r0, [r1]
	mov	r0, #0xa
	mov	r1, #0x1
	bl	KeyRead_SetPara
	ldr	r0, .LnpgoWLD_result_init_2 + 8 @ 0xbcc
	add	r4, r4, r0
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
	mov	r0, #0x1
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_result_init_3:
	.align	2, 0
.LnpgoWLD_result_init_2:
	.word	NRam
	.word	0xbd4
	.word	0xbcc
	thumb_func_end npgoWLD_result_init
