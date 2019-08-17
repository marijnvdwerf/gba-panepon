	thumb_func_start AS_Mascot_head_stp
AS_Mascot_head_stp:
	push	{lr}
	ldr	r0, .LAS_Mascot_head_stp_1 @ ARam+0x6c
	bl	AnisDrvInit
	pop	{r0}
	bx	r0
.LAS_Mascot_head_stp_2:
	.align	2, 0
.LAS_Mascot_head_stp_1:
	.word	ARam+0x6c
	thumb_func_end AS_Mascot_head_stp
