	thumb_func_start npgoWLD_YreLopSet
npgoWLD_YreLopSet:
	ldr	r1, .LnpgoWLD_YreLopSet_1 @ NRam
	mov	r0, #0xbb
	lsl	r0, r0, #0x4
	add	r2, r1, r0
	ldr	r0, .LnpgoWLD_YreLopSet_1 + 4 @ np_BigMojiYure_Lose
	str	r0, [r2]
	ldr	r0, .LnpgoWLD_YreLopSet_1 + 8 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	bx	lr
.LnpgoWLD_YreLopSet_2:
	.align	2, 0
.LnpgoWLD_YreLopSet_1:
	.word	NRam
	.word	np_BigMojiYure_Lose
	.word	0xbcc
	thumb_func_end npgoWLD_YreLopSet
