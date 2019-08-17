	thumb_func_start MainSeqInit
MainSeqInit:
	ldr	r1, .LMainSeqInit_1 @ MainSeqIdx
	mov	r0, #0x0
	str	r0, [r1]
	bx	lr
.LMainSeqInit_2:
	.align	2, 0
.LMainSeqInit_1:
	.word	MainSeqIdx
	thumb_func_end MainSeqInit
