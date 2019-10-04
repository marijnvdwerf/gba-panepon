	thumb_func_start nis_pause_exit
nis_pause_exit:
	push	{r4, lr}
	ldr	r4, .Lnis_pause_exit_1 @ NRam
	ldr	r1, .Lnis_pause_exit_1 + 4 @ 0xa6e
	add	r0, r4, r1
	ldrb	r1, [r0]
	mov	r2, #0xaa
	lsl	r2, r2, #0x4
	add	r0, r4, r2
	mov	r2, #0x0
	strb	r1, [r0]
	ldr	r1, .Lnis_pause_exit_1 + 8 @ KeyRead_Para_ST
	mov	r3, #0xa7
	lsl	r3, r3, #0x4
	add	r0, r4, r3
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .Lnis_pause_exit_1 + 12 @ KeyRead_Para_RT
	add	r3, r3, #0x2
	add	r0, r4, r3
	ldrh	r0, [r0]
	strh	r0, [r1]
	ldr	r1, .Lnis_pause_exit_1 + 16 @ 0xa65
	add	r0, r4, r1
	strb	r2, [r0]
	ldr	r2, .Lnis_pause_exit_1 + 20 @ mplay_table
	ldr	r0, .Lnis_pause_exit_1 + 24 @ song_table
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
	ldr	r0, .Lnis_pause_exit_1 + 28 @ 0xa6a
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
	.word	0xa6e
	.word	KeyRead_Para_ST
	.word	KeyRead_Para_RT
	.word	0xa65
	.word	mplay_table
	.word	song_table
	.word	0xa6a
	thumb_func_end nis_pause_exit
