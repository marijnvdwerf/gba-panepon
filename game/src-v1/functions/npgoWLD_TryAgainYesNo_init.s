	thumb_func_start npgoWLD_TryAgainYesNo_init
npgoWLD_TryAgainYesNo_init:
	push	{r4, lr}
	mov	r0, #0x67
	bl	m4aSongNumStart
	ldr	r0, .LnpgoWLD_TryAgainYesNo_init_1 @ ARam
	add	r0, r0, #0x2b
	mov	r1, #0x0
	strb	r1, [r0]
	ldr	r4, .LnpgoWLD_TryAgainYesNo_init_1 + 4 @ NRam
	strb	r1, [r4, #0xc]
	strb	r1, [r4, #0xd]
	mov	r0, #0xf
	mov	r1, #0x3
	bl	KeyRead_SetPara
	ldr	r0, .LnpgoWLD_TryAgainYesNo_init_1 + 8 @ 0xbc8
	add	r4, r4, r0
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
	mov	r0, #0x1
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_TryAgainYesNo_init_2:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_init_1:
	.word	ARam
	.word	NRam
	.word	0xbc8
	thumb_func_end npgoWLD_TryAgainYesNo_init
