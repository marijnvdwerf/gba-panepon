	thumb_func_start NisMoveKabeColorI_Main
NisMoveKabeColorI_Main:
	push	{lr}
	ldr	r0, .LNisMoveKabeColorI_Main_2 @ NisMoveKabeColor_Tbl
	ldr	r1, .LNisMoveKabeColorI_Main_2 + 4 @ ARam
	add	r1, r1, #0x22
	ldrb	r1, [r1]
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r1, [r1]
	ldr	r3, .LNisMoveKabeColorI_Main_2 + 8 @ 0x5000002
	mov	r2, #0xe
.LNisMoveKabeColorI_Main_1:
	ldrh	r0, [r1]
	strh	r0, [r3]
	sub	r2, r2, #0x1
	add	r3, r3, #0x2
	add	r1, r1, #0x2
	cmp	r2, #0
	bge	.LNisMoveKabeColorI_Main_1	@cond_branch
	pop	{r0}
	bx	r0
.LNisMoveKabeColorI_Main_3:
	.align	2, 0
.LNisMoveKabeColorI_Main_2:
	.word	NisMoveKabeColor_Tbl
	.word	ARam
	.word	0x5000002
	thumb_func_end NisMoveKabeColorI_Main
