	thumb_func_start NisOptSel_WtPara_16sin
NisOptSel_WtPara_16sin:
	add	r1, r1, #0x1
	mov	r3, #0x80
	lsl	r3, r3, #0x6
	add	r2, r3, #0
	orr	r1, r1, r2
	strh	r1, [r0]
	add	r0, r0, #0x2
	ldr	r2, .LNisOptSel_WtPara_16sin_1 @ 0x203f
	add	r1, r2, #0
	strh	r1, [r0]
	strh	r1, [r0, #0x2]
	bx	lr
.LNisOptSel_WtPara_16sin_2:
	.align	2, 0
.LNisOptSel_WtPara_16sin_1:
	.word	0x203f
	thumb_func_end NisOptSel_WtPara_16sin
