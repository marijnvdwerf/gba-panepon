	thumb_func_start sub_200BAA4
sub_200BAA4:
	push	{lr}
	ldr	r0, .Lsub_200BAA4_1 @ ARam+0x6c
	ldr	r1, .Lsub_200BAA4_1 + 4 @ Aob_Pupuri_Parts_Ani07_1
	bl	AnisDrvStart1
	pop	{r0}
	bx	r0
.Lsub_200BAA4_2:
	.align	2, 0
.Lsub_200BAA4_1:
	.word	ARam+0x6c
	.word	Aob_Pupuri_Parts_Ani07_1
	thumb_func_end sub_200BAA4
