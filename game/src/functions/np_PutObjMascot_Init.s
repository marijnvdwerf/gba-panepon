	thumb_func_start np_PutObjMascot_Init
np_PutObjMascot_Init:
	push	{lr}
	ldr	r2, .Lnp_PutObjMascot_Init_1 @ ARam
	add	r1, r2, #0
	add	r1, r1, #0x3a
	strb	r0, [r1]
	add	r2, r2, #0x3c
	ldr	r1, .Lnp_PutObjMascot_Init_1 + 4 @ Aob_Pupuri_Parts_Ani00
	add	r0, r2, #0
	bl	AnisDrvStart1
	mov	r0, #0x0
	bl	AS_Mascot_head_stt
	pop	{r0}
	bx	r0
.Lnp_PutObjMascot_Init_2:
	.align	2, 0
.Lnp_PutObjMascot_Init_1:
	.word	ARam
	.word	Aob_Pupuri_Parts_Ani00
	thumb_func_end np_PutObjMascot_Init
