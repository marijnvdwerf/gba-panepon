	thumb_func_start Obj1SetBuff
Obj1SetBuff:
	ldr	r1, .LObj1SetBuff_1 @ 0x40000d4
	ldr	r0, .LObj1SetBuff_1 + 4 @ OamBak
	str	r0, [r1]
	mov	r0, #0xe0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .LObj1SetBuff_1 + 8 @ 0x84000100
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	bx	lr
.LObj1SetBuff_2:
	.align	2, 0
.LObj1SetBuff_1:
	.word	0x40000d4
	.word	OamBak
	.word	0x84000100
	thumb_func_end Obj1SetBuff
