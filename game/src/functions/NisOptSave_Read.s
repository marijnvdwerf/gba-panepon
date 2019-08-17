	thumb_func_start NisOptSave_Read
NisOptSave_Read:
	ldr	r3, .LNisOptSave_Read_1 @ ARam
	ldr	r1, .LNisOptSave_Read_1 + 4 @ Svrm
	ldrb	r0, [r1]
	strb	r0, [r3, #0x13]
	ldrb	r0, [r1, #0x1]
	strb	r0, [r3, #0x17]
	ldrb	r0, [r1, #0x2]
	strb	r0, [r3, #0x18]
	ldrb	r0, [r1, #0x3]
	strb	r0, [r3, #0x1f]
	ldrb	r0, [r1, #0x4]
	add	r2, r3, #0
	add	r2, r2, #0x21
	strb	r0, [r2]
	ldrb	r2, [r1, #0x5]
	add	r0, r3, #0
	add	r0, r0, #0x20
	strb	r2, [r0]
	ldrb	r0, [r1, #0x6]
	strb	r0, [r3, #0x1e]
	ldrb	r0, [r1, #0x7]
	strb	r0, [r3, #0x1c]
	ldrb	r0, [r1, #0x8]
	strb	r0, [r3, #0x1d]
	ldrb	r0, [r1, #0x9]
	strb	r0, [r3, #0x19]
	ldrb	r0, [r1, #0xa]
	add	r2, r3, #0
	add	r2, r2, #0x22
	strb	r0, [r2]
	ldrb	r0, [r1, #0xb]
	add	r2, r2, #0x1
	strb	r0, [r2]
	ldrb	r1, [r1, #0xc]
	add	r0, r3, #0
	add	r0, r0, #0x24
	strb	r1, [r0]
	bx	lr
.LNisOptSave_Read_2:
	.align	2, 0
.LNisOptSave_Read_1:
	.word	ARam
	.word	Svrm
	thumb_func_end NisOptSave_Read
