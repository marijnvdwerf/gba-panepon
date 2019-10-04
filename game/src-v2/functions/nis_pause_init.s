	thumb_func_start nis_pause_init
nis_pause_init:
	push	{r4, r5, r6, lr}
	ldr	r4, .Lnis_pause_init_1 @ NRam
	mov	r0, #0xaa
	lsl	r0, r0, #0x4
	add	r2, r4, r0
	ldrb	r1, [r2]
	ldr	r3, .Lnis_pause_init_1 + 4 @ 0xa6e
	add	r0, r4, r3
	mov	r6, #0x0
	strb	r1, [r0]
	ldr	r0, .Lnis_pause_init_1 + 8 @ KeyRead_Para_ST
	ldrh	r1, [r0]
	add	r3, r3, #0x2
	add	r0, r4, r3
	mov	r5, #0x0
	strh	r1, [r0]
	ldr	r0, .Lnis_pause_init_1 + 12 @ KeyRead_Para_RT
	ldrh	r1, [r0]
	add	r3, r3, #0x2
	add	r0, r4, r3
	strh	r1, [r0]
	strb	r5, [r2]
	mov	r0, #0xf
	mov	r1, #0x3
	bl	KeyRead_SetPara
	ldr	r1, .Lnis_pause_init_1 + 16 @ 0xa6c
	add	r0, r4, r1
	strh	r6, [r0]
	ldr	r3, .Lnis_pause_init_1 + 20 @ 0xa67
	add	r0, r4, r3
	strb	r5, [r0]
	ldr	r0, .Lnis_pause_init_1 + 24 @ 0xa68
	add	r1, r4, r0
	mov	r0, #0x3
	strb	r0, [r1]
	ldr	r2, .Lnis_pause_init_1 + 28 @ mplay_table
	ldr	r0, .Lnis_pause_init_1 + 32 @ song_table
	mov	r1, #0xcb
	lsl	r1, r1, #0x2
	add	r0, r0, r1
	ldrh	r1, [r0]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldr	r0, [r0]
	mov	r1, #0xff
	mov	r2, #0x40
	bl	MPlayVolumeControl
	ldr	r3, .Lnis_pause_init_1 + 36 @ 0xa6a
	add	r4, r4, r3
	ldrb	r0, [r4]
	add	r0, r0, #0x1
	strb	r0, [r4]
	mov	r0, #0x1
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.Lnis_pause_init_2:
	.align	2, 0
.Lnis_pause_init_1:
	.word	NRam
	.word	0xa6e
	.word	KeyRead_Para_ST
	.word	KeyRead_Para_RT
	.word	0xa6c
	.word	0xa67
	.word	0xa68
	.word	mplay_table
	.word	song_table
	.word	0xa6a
	thumb_func_end nis_pause_init
