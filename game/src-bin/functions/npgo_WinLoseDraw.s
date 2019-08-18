	thumb_func_start npgo_WinLoseDraw
npgo_WinLoseDraw:
	push	{lr}
	mov	r0, #0x64
	bl	m4aSongNumStart
	ldr	r1, .Lnpgo_WinLoseDraw_1 @ NRam
	mov	r0, #0xbb
	lsl	r0, r0, #0x4
	add	r2, r1, r0
	mov	r0, #0x0
	strb	r0, [r2]
	ldr	r0, .Lnpgo_WinLoseDraw_1 + 4 @ 0xbb1
	add	r2, r1, r0
	mov	r0, #0x1
	strb	r0, [r2]
	ldr	r0, .Lnpgo_WinLoseDraw_1 + 8 @ 0xbc8
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.Lnpgo_WinLoseDraw_2:
	.align	2, 0
.Lnpgo_WinLoseDraw_1:
	.word	NRam
	.word	0xbb1
	.word	0xbc8
	thumb_func_end npgo_WinLoseDraw
