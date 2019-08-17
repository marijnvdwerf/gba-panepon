	thumb_func_start NisOptSet_Def
NisOptSet_Def:
	ldr	r2, .LNisOptSet_Def_1 @ ARam
	mov	r0, #0x0
	strb	r0, [r2, #0x13]
	strb	r0, [r2, #0x17]
	strb	r0, [r2, #0x18]
	strb	r0, [r2, #0x1f]
	add	r1, r2, #0
	add	r1, r1, #0x21
	strb	r0, [r1]
	sub	r1, r1, #0x1
	strb	r0, [r1]
	strb	r0, [r2, #0x1e]
	strb	r0, [r2, #0x1c]
	strb	r0, [r2, #0x1d]
	strb	r0, [r2, #0x19]
	add	r1, r1, #0x2
	strb	r0, [r1]
	add	r3, r2, #0
	add	r3, r3, #0x23
	mov	r1, #0xa
	strb	r1, [r3]
	add	r1, r2, #0
	add	r1, r1, #0x24
	strb	r0, [r1]
	bx	lr
.LNisOptSet_Def_2:
	.align	2, 0
.LNisOptSet_Def_1:
	.word	ARam
	thumb_func_end NisOptSet_Def
