	thumb_func_start NisATitleMain1
NisATitleMain1:
	push	{lr}
	mov	r0, #0x0
	mov	r1, #0x0
	bl	np_fuwafuwa_10
	add	r1, r0, #0
	add	r1, r1, #0x56
	ldr	r2, .LNisATitleMain1_2 @ Aob_Title_Obj_00
	mov	r0, #0x48
	bl	NisCtc_PutCtc
	ldr	r1, .LNisATitleMain1_2 + 4 @ SelRam
	ldrb	r0, [r1, #0x10]
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x10]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.LNisATitleMain1_1	@cond_branch
	ldr	r0, .LNisATitleMain1_2 + 8 @ NisATitleLast + 1
	bl	MainSeqSearchNear
.LNisATitleMain1_1:
	pop	{r0}
	bx	r0
.LNisATitleMain1_3:
	.align	2, 0
.LNisATitleMain1_2:
	.word	Aob_Title_Obj_00
	.word	SelRam
	.word	NisATitleLast + 1
	thumb_func_end NisATitleMain1
