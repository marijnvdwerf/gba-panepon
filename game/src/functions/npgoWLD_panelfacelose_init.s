	thumb_func_start npgoWLD_panelfacelose_init
npgoWLD_panelfacelose_init:
	push	{lr}
	mov	r0, #0x39
	bl	m4aSongNumStart
	ldr	r1, .LnpgoWLD_panelfacelose_init_1 @ NRam
	ldr	r0, .LnpgoWLD_panelfacelose_init_1 + 4 @ 0xc2c
	add	r2, r1, r0
	ldr	r0, .LnpgoWLD_panelfacelose_init_1 + 8 @ np_BigMojiYure_d3
	str	r0, [r2]
	ldr	r0, .LnpgoWLD_panelfacelose_init_1 + 12 @ 0xc48
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.LnpgoWLD_panelfacelose_init_2:
	.align	2, 0
.LnpgoWLD_panelfacelose_init_1:
	.word	NRam
	.word	0xc2c
	.word	np_BigMojiYure_d3
	.word	0xc48
	thumb_func_end npgoWLD_panelfacelose_init
