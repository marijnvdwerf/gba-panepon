	thumb_func_start NisSelectSub_Search
NisSelectSub_Search:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .LNisSelectSub_Search_5 @ SelRam
	ldrb	r5, [r0]
	add	r0, r0, #0x1
	add	r0, r5, r0
	ldrb	r7, [r0]
	mov	r3, #0x0
	ldr	r6, .LNisSelectSub_Search_5 + 4 @ NisSelect_DT
	mov	r4, #0x0
	add	r2, r6, #0
.LNisSelectSub_Search_3:
	ldrb	r0, [r2]
	add	r1, r4, #0
	cmp	r0, r5
	bne	.LNisSelectSub_Search_1	@cond_branch
	ldrb	r0, [r2, #0x1]
	cmp	r0, r7
	beq	.LNisSelectSub_Search_2	@cond_branch
.LNisSelectSub_Search_1:
	add	r4, r1, #4
	add	r2, r2, #0x14
	add	r3, r3, #0x1
	cmp	r3, #0x19
	bls	.LNisSelectSub_Search_3	@cond_branch
.LNisSelectSub_Search_4:
	b	.LNisSelectSub_Search_4
.LNisSelectSub_Search_6:
	.align	2, 0
.LNisSelectSub_Search_5:
	.word	SelRam
	.word	NisSelect_DT
.LNisSelectSub_Search_2:
	add	r0, r4, r3
	lsl	r0, r0, #0x2
	add	r0, r0, r6
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	thumb_func_end NisSelectSub_Search
