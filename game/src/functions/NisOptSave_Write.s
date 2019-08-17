	thumb_func_start NisOptSave_Write
NisOptSave_Write:
	ldr	r1, .LNisOptSave_Write_1 @ Svrm
	ldr	r2, .LNisOptSave_Write_1 + 4 @ ARam
	ldrb	r0, [r2, #0x13]
	strb	r0, [r1]
	ldrb	r0, [r2, #0x17]
	strb	r0, [r1, #0x1]
	ldrb	r0, [r2, #0x18]
	strb	r0, [r1, #0x2]
	ldrb	r0, [r2, #0x1f]
	strb	r0, [r1, #0x3]
	add	r0, r2, #0
	add	r0, r0, #0x21
	ldrb	r0, [r0]
	strb	r0, [r1, #0x4]
	add	r0, r2, #0
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	strb	r0, [r1, #0x5]
	ldrb	r0, [r2, #0x1e]
	strb	r0, [r1, #0x6]
	ldrb	r0, [r2, #0x1c]
	strb	r0, [r1, #0x7]
	ldrb	r0, [r2, #0x1d]
	strb	r0, [r1, #0x8]
	ldrb	r0, [r2, #0x19]
	strb	r0, [r1, #0x9]
	add	r0, r2, #0
	add	r0, r0, #0x22
	ldrb	r0, [r0]
	strb	r0, [r1, #0xa]
	add	r0, r2, #0
	add	r0, r0, #0x23
	ldrb	r0, [r0]
	strb	r0, [r1, #0xb]
	add	r0, r2, #0
	add	r0, r0, #0x24
	ldrb	r0, [r0]
	strb	r0, [r1, #0xc]
	bx	lr
.LNisOptSave_Write_2:
	.align	2, 0
.LNisOptSave_Write_1:
	.word	Svrm
	.word	ARam
	thumb_func_end NisOptSave_Write
