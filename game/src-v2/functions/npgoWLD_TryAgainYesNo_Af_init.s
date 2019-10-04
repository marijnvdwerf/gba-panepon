	thumb_func_start npgoWLD_TryAgainYesNo_Af_init
npgoWLD_TryAgainYesNo_Af_init:
	ldr	r0, .LnpgoWLD_TryAgainYesNo_Af_init_1 @ NRam
	mov	r1, #0x1
	strb	r1, [r0, #0xc]
	ldr	r1, .LnpgoWLD_TryAgainYesNo_Af_init_1 + 4 @ 0xbcc
	add	r0, r0, r1
	ldrb	r1, [r0]
	add	r1, r1, #0x1
	strb	r1, [r0]
	mov	r0, #0x1
	bx	lr
.LnpgoWLD_TryAgainYesNo_Af_init_2:
	.align	2, 0
.LnpgoWLD_TryAgainYesNo_Af_init_1:
	.word	NRam
	.word	0xbcc
	thumb_func_end npgoWLD_TryAgainYesNo_Af_init
