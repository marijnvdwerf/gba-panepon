	thumb_func_start VBlankIntr
VBlankIntr:
	push	{lr}
	bl	SoundVSync_rev01
	bl	Obj1SetBuff
	ldr	r1, .LVBlankIntr_1 @ NmiInc
	ldr	r0, [r1]
	add	r0, r0, #0x1
	str	r0, [r1]
	ldr	r1, .LVBlankIntr_1 + 4 @ 0x3007FF8
	mov	r0, #0x1
	strh	r0, [r1]
	bl	GBAJoyIntr
	pop	{r0}
	bx	r0
.LVBlankIntr_2:
	.align	2, 0
.LVBlankIntr_1:
	.word	NmiInc
	.word	0x3007FF8
	thumb_func_end VBlankIntr
