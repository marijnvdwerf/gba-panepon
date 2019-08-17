	thumb_func_start NisOptionSelectSub_Screen
NisOptionSelectSub_Screen:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #0xfffffffc
	ldr	r1, .LNisOptionSelectSub_Screen_4 @ SelRam
	add	r0, r1, #6
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r5, [r0]
	cmp	r5, #0xe
	bls	.LNisOptionSelectSub_Screen_1	@cond_branch
	mov	r5, #0xe
.LNisOptionSelectSub_Screen_1:
	mov	r3, #0x7
	mov	r0, #0x5
	mov	r8, r0
	ldr	r2, .LNisOptionSelectSub_Screen_4 + 4 @ NisOptSel_Buf
	lsl	r0, r5, #0x3
	add	r1, r0, r2
	ldr	r1, [r1]
	add	r4, r0, #0
	cmp	r1, #0
	bne	.LNisOptionSelectSub_Screen_9	@cond_branch
	add	r0, r2, #4
	add	r0, r4, r0
	b	.LNisOptionSelectSub_Screen_3
.LNisOptionSelectSub_Screen_5:
	.align	2, 0
.LNisOptionSelectSub_Screen_4:
	.word	SelRam
	.word	NisOptSel_Buf
.LNisOptionSelectSub_Screen_10:
	ldr	r0, .LNisOptionSelectSub_Screen_11 @ NisOptSel_Buf
	add	r0, r4, r0
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LNisOptionSelectSub_Screen_6	@cond_branch
.LNisOptionSelectSub_Screen_9:
	lsl	r0, r3, #0x6
	ldr	r1, .LNisOptionSelectSub_Screen_11 + 4 @ 0x600d004
	add	r0, r0, r1
	ldr	r1, .LNisOptionSelectSub_Screen_11 @ NisOptSel_Buf
	add	r1, r4, r1
	ldr	r2, [r1]
	mov	r1, #0x2
	str	r3, [sp]
	bl	MDCPC_print
	ldr	r3, [sp]
.LNisOptionSelectSub_Screen_6:
	ldr	r6, .LNisOptionSelectSub_Screen_11 @ NisOptSel_Buf
	add	r7, r6, #4
	add	r0, r4, r7
	ldr	r1, [r0]
	cmp	r1, #0
	beq	.LNisOptionSelectSub_Screen_7	@cond_branch
	lsl	r0, r3, #0x6
	ldr	r2, .LNisOptionSelectSub_Screen_11 + 8 @ 0x600d018
	add	r0, r0, r2
	str	r3, [sp]
	bl	_call_via_r1
	ldr	r3, [sp]
.LNisOptionSelectSub_Screen_7:
	mov	r0, #0x1
	neg	r0, r0
	add r8, r8, r0
	add	r3, r3, #0x2
	add	r5, r5, #0x1
	mov	r1, r8
	cmp	r1, #0
	beq	.LNisOptionSelectSub_Screen_8	@cond_branch
	lsl	r1, r5, #0x3
	add	r0, r1, r6
	ldr	r0, [r0]
	add	r4, r1, #0
	cmp	r0, #0
	bne	.LNisOptionSelectSub_Screen_9	@cond_branch
	add	r0, r1, r7
.LNisOptionSelectSub_Screen_3:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LNisOptionSelectSub_Screen_10	@cond_branch
.LNisOptionSelectSub_Screen_8:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisOptionSelectSub_Screen_12:
	.align	2, 0
.LNisOptionSelectSub_Screen_11:
	.word	NisOptSel_Buf
	.word	0x600d004
	.word	0x600d018
	thumb_func_end NisOptionSelectSub_Screen
