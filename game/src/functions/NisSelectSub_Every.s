	thumb_func_start NisSelectSub_Every
NisSelectSub_Every:
	push	{r4, lr}
	bl	RndRnd
	ldr	r4, .LNisSelectSub_Every_1 @ b_BG1VOFS
	mov	r0, #0x7
	mov	r1, #0x16
	bl	np_fuwafuwa_05
	strh	r0, [r4]
	ldr	r4, .LNisSelectSub_Every_1 + 4 @ b_BG0VOFS
	mov	r0, #0x2
	mov	r1, #0x21
	bl	np_fuwafuwa_20
	strh	r0, [r4]
	bl	np_sel_fukidashi_objput
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisSelectSub_Every_2:
	.align	2, 0
.LNisSelectSub_Every_1:
	.word	b_BG1VOFS
	.word	b_BG0VOFS
	thumb_func_end NisSelectSub_Every
