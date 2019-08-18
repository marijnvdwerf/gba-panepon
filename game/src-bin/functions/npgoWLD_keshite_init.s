	thumb_func_start npgoWLD_keshite_init
npgoWLD_keshite_init:
	ldr	r1, .LnpgoWLD_keshite_init_1 @ NRam
	ldr	r0, .LnpgoWLD_keshite_init_1 + 4 @ 0xbc8
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	bx	lr
.LnpgoWLD_keshite_init_2:
	.align	2, 0
.LnpgoWLD_keshite_init_1:
	.word	NRam
	.word	0xbc8
	thumb_func_end npgoWLD_keshite_init
