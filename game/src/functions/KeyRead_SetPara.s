	thumb_func_start KeyRead_SetPara
KeyRead_SetPara:
	ldr	r2, .LKeyRead_SetPara_1 @ KeyRead_Para_ST
	strh	r0, [r2]
	ldr	r0, .LKeyRead_SetPara_1 + 4 @ KeyRead_Para_RT
	strh	r1, [r0]
	bx	lr
.LKeyRead_SetPara_2:
	.align	2, 0
.LKeyRead_SetPara_1:
	.word	KeyRead_Para_ST
	.word	KeyRead_Para_RT
	thumb_func_end KeyRead_SetPara
