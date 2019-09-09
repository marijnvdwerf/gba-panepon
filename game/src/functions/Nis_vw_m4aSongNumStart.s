	thumb_func_start Nis_vw_m4aSongNumStart
Nis_vw_m4aSongNumStart:
	push	{r4, r5, r6, lr}
	add	r5, r0, #0
	add	r4, r2, #0
	add	r2, r5, #0
	cmp	r5, #0
	bge	.LNis_vw_m4aSongNumStart_1	@cond_branch
	neg	r2, r5
.LNis_vw_m4aSongNumStart_1:
	add	r0, r1, #0
	cmp	r0, #0
	bge	.LNis_vw_m4aSongNumStart_2	@cond_branch
	neg	r0, r0
.LNis_vw_m4aSongNumStart_2:
	add	r6, r0, #0
	cmp	r6, r2
	bge	.LNis_vw_m4aSongNumStart_3	@cond_branch
	add	r6, r2, #0
.LNis_vw_m4aSongNumStart_3:
	lsl	r6, r6, #0x1
	mov	r0, #0x80
	lsl	r0, r0, #0x1
	add	r6, r6, r0
	mov	r0, #0x80
	lsl	r0, r0, #0x9
	add	r1, r6, #0
	bl	__divsi3
	add	r6, r0, #0
	cmp	r6, #0x4
	bgt	.LNis_vw_m4aSongNumStart_4	@cond_branch
	mov	r6, #0x4
.LNis_vw_m4aSongNumStart_4:
	lsl	r5, r5, #0x1
	add	r0, r5, #0
	mov	r1, #0x3
	bl	__divsi3
	add	r5, r0, #0
	mov	r0, #0x80
	neg	r0, r0
	cmp	r5, r0
	bge	.LNis_vw_m4aSongNumStart_5	@cond_branch
	add	r5, r0, #0
	b	.LNis_vw_m4aSongNumStart_7
.LNis_vw_m4aSongNumStart_5:
	cmp	r5, #0x7f
	ble	.LNis_vw_m4aSongNumStart_7	@cond_branch
	mov	r5, #0x7f
.LNis_vw_m4aSongNumStart_7:
	lsl	r0, r4, #0x10
	lsr	r0, r0, #0x10
	bl	m4aSongNumStart
	ldr	r2, .LNis_vw_m4aSongNumStart_8 @ mplay_table
	ldr	r1, .LNis_vw_m4aSongNumStart_8 + 4 @ song_table
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
	lsl	r2, r6, #0x10
	lsr	r2, r2, #0x10
	add	r0, r4, #0
	mov	r1, #0x1
	bl	MPlayVolumeControl
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LNis_vw_m4aSongNumStart_9:
	.align	2, 0
.LNis_vw_m4aSongNumStart_8:
	.word	mplay_table
	.word	song_table
	thumb_func_end Nis_vw_m4aSongNumStart
