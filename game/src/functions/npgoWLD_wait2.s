	thumb_func_start npgoWLD_wait2
npgoWLD_wait2:
	ldr	r3, .LnpgoWLD_wait2_2 @ NRam
	ldr	r1, .LnpgoWLD_wait2_2 + 4 @ 0xc4a
	add	r2, r3, r1
	ldrh	r1, [r2]
	add	r1, r1, #0x1
	strh	r1, [r2]
	ldrh	r1, [r2]
	cmp	r1, r0
	ble	.LnpgoWLD_wait2_1	@cond_branch
	mov	r0, #0x0
	strh	r0, [r2]
	ldr	r0, .LnpgoWLD_wait2_2 + 8 @ 0xc48
	add	r1, r3, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_wait2_1:
	mov	r0, #0x0
	bx	lr
.LnpgoWLD_wait2_3:
	.align	2, 0
.LnpgoWLD_wait2_2:
	.word	NRam
	.word	0xc4a
	.word	0xc48
	thumb_func_end npgoWLD_wait2
