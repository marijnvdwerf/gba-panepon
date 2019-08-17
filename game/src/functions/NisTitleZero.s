	thumb_func_start NisTitleZero
NisTitleZero:
	push	{r4, lr}
	mov	r0, #0x80
	lsl	r0, r0, #0x13
	ldrh	r1, [r0]
	mov	r2, #0x80
	orr	r1, r1, r2
	strh	r1, [r0]
	ldr	r0, .LNisTitleZero_2 @ SelRam
	mov	r2, #0x14
	add	r4, r0, #0
	ldr	r1, .LNisTitleZero_2 + 4 @ ARam
	mov	r3, #0x0
.LNisTitleZero_1:
	strb	r3, [r0]
	add	r0, r0, #0x1
	sub	r2, r2, #0x1
	cmp	r2, #0
	bne	.LNisTitleZero_1	@cond_branch
	mov	r0, #0x3
	strb	r0, [r4, #0xc]
	strb	r0, [r4, #0xd]
	strb	r2, [r1]
	strb	r2, [r1, #0x1]
	strb	r2, [r1, #0x2]
	strb	r2, [r1, #0x3]
	strb	r2, [r1, #0x4]
	strb	r2, [r1, #0x5]
	strb	r2, [r1, #0x6]
	mov	r0, #0x1
	strb	r0, [r1, #0x7]
	strb	r2, [r1, #0x8]
	strb	r2, [r1, #0x9]
	strb	r0, [r1, #0xa]
	strb	r2, [r1, #0xb]
	strb	r2, [r1, #0xc]
	strb	r2, [r1, #0xd]
	strb	r2, [r1, #0xe]
	add	r0, r1, #0
	add	r0, r0, #0x22
	strb	r2, [r0]
	add	r3, r1, #0
	add	r3, r3, #0x23
	mov	r0, #0xa
	strb	r0, [r3]
	strb	r2, [r1, #0xf]
	bl	NisOptSet_Def
	bl	NisOptSave_Write
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisTitleZero_3:
	.align	2, 0
.LNisTitleZero_2:
	.word	SelRam
	.word	ARam
	thumb_func_end NisTitleZero
