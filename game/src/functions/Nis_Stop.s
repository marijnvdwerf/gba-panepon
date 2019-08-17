	thumb_func_start Nis_Stop
Nis_Stop:
	push	{r4, r5, lr}
	bl	m4aMPlayAllStop
	bl	m4aSoundMain
	bl	SoundVSyncOff_rev01
	ldr	r0, .LNis_Stop_2 @ 0x4000200
	ldrh	r4, [r0]
	mov	r1, #0x88
	lsl	r1, r1, #0x9
	mov	r0, #0x0
	bl	irq_set_ie
	ldr	r1, .LNis_Stop_2 + 4 @ 0x4000132
	ldr	r2, .LNis_Stop_2 + 8 @ 0xc304
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r2]
	bl	SoundBiasReset
	swi	#0x3
	bl	SoundBiasSet
	mov	r0, #0x80
	lsl	r0, r0, #0x9
	orr	r4, r4, r0
	mov	r0, #0x0
	add	r1, r4, #0
	bl	irq_set_ie
	ldr	r5, .LNis_Stop_2 + 12 @ KeyRead_Now
	ldr	r0, .LNis_Stop_2 + 16 @ 0x3ff
	add	r4, r0, #0
.LNis_Stop_1:
	bl	KeyRead_Main
	ldrh	r0, [r5]
	and	r0, r0, r4
	cmp	r0, #0
	bne	.LNis_Stop_1	@cond_branch
	bl	SoundVSyncOn_rev01
	bl	m4aMPlayAllContinue
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r1, [r2]
	ldr	r0, .LNis_Stop_2 + 20 @ 0xff7f
	and	r0, r0, r1
	strh	r0, [r2]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNis_Stop_3:
	.align	2, 0
.LNis_Stop_2:
	.word	0x4000200
	.word	0x4000132
	.word	0xc304
	.word	KeyRead_Now
	.word	0x3ff
	.word	0xff7f
	thumb_func_end Nis_Stop
