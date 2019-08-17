	thumb_func_start nis_pause_window
nis_pause_window:
	push	{lr}
	cmp	r0, #0
	beq	.Lnis_pause_window_1	@cond_branch
	ldr	r1, .Lnis_pause_window_3 @ 0x400000c
	mov	r2, #0xd8
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r0, [r2]
	mov	r3, #0x80
	lsl	r3, r3, #0x3
	add	r1, r3, #0
	orr	r0, r0, r1
	strh	r0, [r2]
	mov	r0, #0x4
	bl	m4aSongNumStart
	b	.Lnis_pause_window_2
.Lnis_pause_window_4:
	.align	2, 0
.Lnis_pause_window_3:
	.word	0x400000c
.Lnis_pause_window_1:
	mov	r2, #0x80
	lsl	r2, r2, #0x13
	ldrh	r1, [r2]
	ldr	r0, .Lnis_pause_window_5 @ 0xfbff
	and	r0, r0, r1
	strh	r0, [r2]
.Lnis_pause_window_2:
	ldr	r1, .Lnis_pause_window_5 + 4 @ NRam
	ldr	r0, .Lnis_pause_window_5 + 8 @ 0xae6
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
	pop	{r1}
	bx	r1
.Lnis_pause_window_6:
	.align	2, 0
.Lnis_pause_window_5:
	.word	0xfbff
	.word	NRam
	.word	0xae6
	thumb_func_end nis_pause_window
