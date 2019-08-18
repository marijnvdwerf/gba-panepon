	thumb_func_start npgo_init
npgo_init:
	push	{r4, r5, lr}
	ldr	r5, .Lnpgo_init_1 @ NRam
	ldr	r1, .Lnpgo_init_1 + 4 @ 0xa9c
	add	r0, r5, r1
	mov	r4, #0x0
	strb	r4, [r0]
	bl	np_srwreq_spdlv
	bl	srw_main
	strb	r4, [r5, #0xf]
	strb	r4, [r5, #0x10]
	strb	r4, [r5, #0x11]
	strb	r4, [r5, #0x12]
	strb	r4, [r5, #0xa]
	strb	r4, [r5, #0xb]
	strb	r4, [r5, #0xc]
	strb	r4, [r5, #0xd]
	mov	r0, #0xf
	mov	r1, #0x3
	bl	KeyRead_SetPara
	ldr	r1, .Lnpgo_init_1 + 8 @ 0xbca
	add	r0, r5, r1
	strh	r4, [r0]
	bl	np_PutObjMascot_GameOver
	ldr	r0, .Lnpgo_init_1 + 12 @ 0xbc8
	add	r5, r5, r0
	ldrb	r0, [r5]
	add	r0, r0, #0x1
	strb	r0, [r5]
	mov	r0, #0x1
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lnpgo_init_2:
	.align	2, 0
.Lnpgo_init_1:
	.word	NRam
	.word	0xa9c
	.word	0xbca
	.word	0xbc8
	thumb_func_end npgo_init
