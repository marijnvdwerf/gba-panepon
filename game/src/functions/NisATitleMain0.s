	thumb_func_start NisATitleMain0
NisATitleMain0:
	push	{lr}
	mov	r0, #0x3
	mov	r1, #0x0
	bl	np_fuwafuwa_10
	add	r1, r0, #0
	add	r1, r1, #0x56
	ldr	r2, .LNisATitleMain0_3 @ Aob_Title_Obj_00
	mov	r0, #0x2d
	bl	NisCtc_PutCtc
	ldr	r0, .LNisATitleMain0_3 + 4 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LNisATitleMain0_1	@cond_branch
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisATitleMain0_2	@cond_branch
.LNisATitleMain0_1:
	mov	r0, #0x2
	bl	m4aSongNumStart
	ldr	r1, .LNisATitleMain0_3 + 8 @ SelRam
	mov	r0, #0x4b
	strb	r0, [r1, #0x10]
	ldr	r2, .LNisATitleMain0_3 + 12 @ mplay_table
	ldr	r0, .LNisATitleMain0_3 + 16 @ song_table
	mov	r1, #0xd5
	lsl	r1, r1, #0x2
	add	r0, r0, r1
	ldrh	r1, [r0]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldr	r0, [r0]
	mov	r1, #0x4
	bl	m4aMPlayFadeOut
	ldr	r0, .LNisATitleMain0_3 + 20 @ NisATitleMain1 + 1
	bl	MainSeqSearchNear
.LNisATitleMain0_2:
	pop	{r0}
	bx	r0
.LNisATitleMain0_4:
	.align	2, 0
.LNisATitleMain0_3:
	.word	Aob_Title_Obj_00
	.word	KeyRead_Trg
	.word	SelRam
	.word	mplay_table
	.word	song_table
	.word	NisATitleMain1 + 1
	thumb_func_end NisATitleMain0
