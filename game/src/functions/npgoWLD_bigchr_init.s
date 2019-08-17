	thumb_func_start npgoWLD_bigchr_init
npgoWLD_bigchr_init:
	push	{r4, lr}
	ldr	r4, .LnpgoWLD_bigchr_init_1 @ NRam
	mov	r0, #0xc3
	lsl	r0, r0, #0x4
	add	r1, r4, r0
	mov	r0, #0x0
	strb	r0, [r1]
	ldr	r1, .LnpgoWLD_bigchr_init_1 + 4 @ 0xc4c
	add	r0, r4, r1
	mov	r1, #0x50
	strb	r1, [r0]
	ldr	r0, .LnpgoWLD_bigchr_init_1 + 8 @ b_BG2VOFS
	strh	r1, [r0]
	ldr	r0, .LnpgoWLD_bigchr_init_1 + 12 @ 0xc2c
	add	r1, r4, r0
	ldr	r0, .LnpgoWLD_bigchr_init_1 + 16 @ np_BigMojiYure_down
	str	r0, [r1]
	mov	r0, #0x3a
	bl	m4aSongNumStart
	ldr	r1, .LnpgoWLD_bigchr_init_1 + 20 @ 0xc48
	add	r4, r4, r1
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_bigchr_init_2:
	.align	2, 0
.LnpgoWLD_bigchr_init_1:
	.word	NRam
	.word	0xc4c
	.word	b_BG2VOFS
	.word	0xc2c
	.word	np_BigMojiYure_down
	.word	0xc48
	thumb_func_end npgoWLD_bigchr_init
