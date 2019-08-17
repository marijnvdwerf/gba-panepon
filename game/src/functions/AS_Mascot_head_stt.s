	thumb_func_start AS_Mascot_head_stt
AS_Mascot_head_stt:
	push	{lr}
	ldr	r0, .LAS_Mascot_head_stt_1 @ ARam+0x6c
	ldr	r1, .LAS_Mascot_head_stt_1 + 4 @ Aob_Pupuri_Parts_Ani01
	bl	AnisDrvStart1
	pop	{r0}
	bx	r0
.LAS_Mascot_head_stt_2:
	.align	2, 0
.LAS_Mascot_head_stt_1:
	.word	ARam+0x6c
	.word	Aob_Pupuri_Parts_Ani01
	thumb_func_end AS_Mascot_head_stt
