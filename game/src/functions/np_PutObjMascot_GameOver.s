	thumb_func_start np_PutObjMascot_GameOver
np_PutObjMascot_GameOver:
	push	{lr}
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_GameOver_1 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_GameOver_1 + 4 @ Aob_Pupuri_Parts_Ani07
	bl	AnisDrvStart1
	pop	{r0}
	bx	r0
.Lnp_PutObjMascot_GameOver_2:
	.align	2, 0
.Lnp_PutObjMascot_GameOver_1:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani07
	thumb_func_end np_PutObjMascot_GameOver
