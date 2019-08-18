	thumb_func_start npgoWLD_keshite_main
npgoWLD_keshite_main:
	ldr	r0, .LnpgoWLD_keshite_main_2 @ NRam+0x154
	mov	r2, #0x4e
	ldr	r3, .LnpgoWLD_keshite_main_2 + 4 @ 0xfffffeac
	add	r1, r0, r3
	mov	r3, #0x0
.LnpgoWLD_keshite_main_1:
	strb	r3, [r0, #0x1]
	sub	r2, r2, #0x1
	add	r0, r0, #0x8
	cmp	r2, #0
	bne	.LnpgoWLD_keshite_main_1	@cond_branch
	ldr	r0, .LnpgoWLD_keshite_main_2 + 8 @ 0xbc8
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x0
	bx	lr
.LnpgoWLD_keshite_main_3:
	.align	2, 0
.LnpgoWLD_keshite_main_2:
	.word	NRam+0x154
	.word	0xfffffeac
	.word	0xbc8
	thumb_func_end npgoWLD_keshite_main
