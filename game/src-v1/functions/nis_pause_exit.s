	thumb_func_start nis_pause_exit
nis_pause_exit:
	push	{r4, lr}
	ldr	r4, .Lnis_pause_exit_1 @ NRam
	ldr	r1, .Lnis_pause_exit_1 + 4 @ 0xa6a
	add	r0, r4, r1
	ldrb	r1, [r0]
	ldr	r2, .Lnis_pause_exit_1 + 8 @ 0xa9c
	add	r0, r4, r2
	mov	r2, #0x0
	strb	r1, [r0]
	ldr	r1, .Lnis_pause_exit_1 + 12 @ KeyRead_Para_ST
	ldr	r3, .Lnis_pause_exit_1 + 16 @ 0xa6c
	add	r0, r4, r3
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .Lnis_pause_exit_1 + 20 @ KeyRead_Para_RT
	add	r3, r3, #0x2
	add	r0, r4, r3
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .Lnis_pause_exit_1 + 24 @ 0xa61
	add	r0, r4, r1
	strb	r2, [r0]
	ldr	r2, .Lnis_pause_exit_1 + 28 @ ponagb2m_title_Asc_LZ+0x1248
	ldr	r0, .Lnis_pause_exit_1 + 32 @ ponagb2m_title_Asc_LZ+0x12a8
	mov	r3, #0xcb
	lsl	r3, r3, #0x2
	add	r0, r0, r3
	ldrh	r1, [r0]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldr	r0, [r0]
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	mov	r1, #0xff
	bl	MPlayVolumeControl
	ldr	r0, .Lnis_pause_exit_1 + 36 @ 0xa66
	add	r4, r4, r0
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
	mov	r0, #0x1
	pop	{r4}
	pop	{r1}
	bx	r1
.Lnis_pause_exit_2:
	.align	2, 0
.Lnis_pause_exit_1:
	.word	NRam
	.word	0xa6a
	.word	0xa9c
	.word	KeyRead_Para_ST
	.word	0xa6c
	.word	KeyRead_Para_RT
	.word	0xa61
	.word	ponagb2m_title_Asc_LZ+0x1248
	.word	ponagb2m_title_Asc_LZ+0x12a8
	.word	0xa66
	thumb_func_end nis_pause_exit
