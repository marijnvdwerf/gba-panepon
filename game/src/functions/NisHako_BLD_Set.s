	thumb_func_start NisHako_BLD_Set
NisHako_BLD_Set:
	ldr	r1, .LNisHako_BLD_Set_1 @ 0x4000050
	ldr	r2, .LNisHako_BLD_Set_1 + 4 @ 0x841
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r2, .LNisHako_BLD_Set_1 + 8 @ 0x4000052
	ldr	r0, .LNisHako_BLD_Set_1 + 12 @ ARam
	add	r0, r0, #0x23
	ldrb	r0, [r0]
	lsl	r0, r0, #0x8
	mov	r1, #0x1f
	orr	r0, r0, r1
	strh	r0, [r2]
	ldr	r1, .LNisHako_BLD_Set_1 + 16 @ 0x4000054
	mov	r0, #0x8
	strh	r0, [r1]
	bx	lr
.LNisHako_BLD_Set_2:
	.align	2, 0
.LNisHako_BLD_Set_1:
	.word	0x4000050
	.word	0x841
	.word	0x4000052
	.word	ARam
	.word	0x4000054
	thumb_func_end NisHako_BLD_Set
