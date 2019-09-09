	thumb_func_start Nis_m4aSongNumStart
Nis_m4aSongNumStart:
	push	{r4, r5, lr}
	add	r5, r0, #0
	add	r4, r1, #0
	mov	r0, #0x80
	neg	r0, r0
	cmp	r5, r0
	bge	.LNis_m4aSongNumStart_1	@cond_branch
	add	r5, r0, #0
	b	.LNis_m4aSongNumStart_3
.LNis_m4aSongNumStart_1:
	cmp	r5, #0x7f
	ble	.LNis_m4aSongNumStart_3	@cond_branch
	mov	r5, #0x7f
.LNis_m4aSongNumStart_3:
	lsl	r0, r4, #0x10
	lsr	r0, r0, #0x10
	bl	m4aSongNumStart
	ldr	r2, .LNis_m4aSongNumStart_4 @ mplay_table
	ldr	r1, .LNis_m4aSongNumStart_4 + 4 @ song_table
	lsl	r0, r4, #0x3
	add	r0, r0, r1
	ldrh	r1, [r0, #0x4]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r0, r2
	ldr	r4, [r0]
	add	r0, r4, #0
	bl	m4aMPlayImmInit
	lsl	r2, r5, #0x18
	asr	r2, r2, #0x18
	add	r0, r4, #0
	mov	r1, #0x1
	bl	MPlayPanpotControl
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.LNis_m4aSongNumStart_5:
	.align	2, 0
.LNis_m4aSongNumStart_4:
	.word	mplay_table
	.word	song_table
	thumb_func_end Nis_m4aSongNumStart
