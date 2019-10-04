	thumb_func_start npgoWLD_bikkuri
npgoWLD_bikkuri:
	push	{lr}
	bl	npgo_all_bikkuri
	ldr	r1, .LnpgoWLD_bikkuri_1 @ NRam
	ldr	r0, .LnpgoWLD_bikkuri_1 + 4 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.LnpgoWLD_bikkuri_2:
	.align	2, 0
.LnpgoWLD_bikkuri_1:
	.word	NRam
	.word	0xbcc
	thumb_func_end npgoWLD_bikkuri
