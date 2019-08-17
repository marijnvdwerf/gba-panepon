	thumb_func_start KeyRead_Main
KeyRead_Main:
	push	{r4, r5, r6, lr}
	ldr	r4, .LKeyRead_Main_4 @ KeyRead_Now
	ldr	r0, .LKeyRead_Main_4 + 4 @ 0x4000130
	ldrh	r1, [r0]
	ldr	r2, .LKeyRead_Main_4 + 8 @ 0x3ff
	add	r0, r2, #0
	add	r5, r1, #0
	eor	r5, r5, r0
	strh	r5, [r4]
	ldr	r6, .LKeyRead_Main_4 + 12 @ KeyRead_Rpt
	ldr	r2, .LKeyRead_Main_4 + 16 @ KeyRead_Trg
	ldr	r3, .LKeyRead_Main_4 + 20 @ KeyRead_NowBf
	ldrh	r1, [r3]
	add	r0, r5, #0
	BIC	r0, r1
	strh	r0, [r2]
	strh	r0, [r6]
	add	r0, r5, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	cmp	r0, r1
	bne	.LKeyRead_Main_1	@cond_branch
	cmp	r0, #0
	bne	.LKeyRead_Main_2	@cond_branch
.LKeyRead_Main_1:
	ldr	r0, .LKeyRead_Main_4 + 24 @ KeyRead_RptCt
	ldr	r1, .LKeyRead_Main_4 + 28 @ KeyRead_Para_ST
	ldrh	r1, [r1]
	strh	r1, [r0]
	b	.LKeyRead_Main_6
.LKeyRead_Main_5:
	.align	2, 0
.LKeyRead_Main_4:
	.word	KeyRead_Now
	.word	0x4000130
	.word	0x3ff
	.word	KeyRead_Rpt
	.word	KeyRead_Trg
	.word	KeyRead_NowBf
	.word	KeyRead_RptCt
	.word	KeyRead_Para_ST
.LKeyRead_Main_2:
	ldr	r1, .LKeyRead_Main_7 @ KeyRead_RptCt
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.LKeyRead_Main_6	@cond_branch
	ldr	r0, .LKeyRead_Main_7 + 4 @ KeyRead_Para_RT
	ldrh	r0, [r0]
	strh	r0, [r1]
	strh	r5, [r6]
.LKeyRead_Main_6:
	ldrh	r0, [r4]
	strh	r0, [r3]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LKeyRead_Main_8:
	.align	2, 0
.LKeyRead_Main_7:
	.word	KeyRead_RptCt
	.word	KeyRead_Para_RT
	thumb_func_end KeyRead_Main
