	thumb_func_start npgoWLD_bigchr_main
npgoWLD_bigchr_main:
	push	{r4, lr}
	ldr	r1, .LnpgoWLD_bigchr_main_3 @ 0x400000c
	ldr	r2, .LnpgoWLD_bigchr_main_3 + 4 @ 0x1d02
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r3, #0x80
	lsl	r3, r3, #0x3
	add	r1, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2]
	bl	np_BigMojiYure_main
	ldr	r1, .LnpgoWLD_bigchr_main_3 + 8 @ b_BG2VOFS
	ldr	r4, .LnpgoWLD_bigchr_main_3 + 12 @ NRam
	mov	r2, #0xbd
	lsl	r2, r2, #0x4
	add	r0, r4, r2
	ldrb	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .LnpgoWLD_bigchr_main_3 + 16 @ b_BG2HOFS
	ldr	r3, .LnpgoWLD_bigchr_main_3 + 20 @ 0xfffe
	add	r0, r3, #0
	strh	r0, [r1]
	bl	np_chk_start_key_s
	cmp	r0, #0
	bne	.LnpgoWLD_bigchr_main_1	@cond_branch
	mov	r1, #0xbb
	lsl	r1, r1, #0x4
	add	r0, r4, r1
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LnpgoWLD_bigchr_main_2	@cond_branch
.LnpgoWLD_bigchr_main_1:
	ldr	r1, .LnpgoWLD_bigchr_main_3 + 12 @ NRam
	ldr	r2, .LnpgoWLD_bigchr_main_3 + 24 @ 0xbcc
	add	r1, r1, r2
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_bigchr_main_2:
	mov	r0, #0x0
	pop	{r4}
	pop	{r1}
	bx	r1
.LnpgoWLD_bigchr_main_4:
	.align	2, 0
.LnpgoWLD_bigchr_main_3:
	.word	0x400000c
	.word	0x1d02
	.word	b_BG2VOFS
	.word	NRam
	.word	b_BG2HOFS
	.word	0xfffe
	.word	0xbcc
	thumb_func_end npgoWLD_bigchr_main
