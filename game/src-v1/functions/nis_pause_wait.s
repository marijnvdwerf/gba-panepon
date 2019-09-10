	thumb_func_start nis_pause_wait
nis_pause_wait:
	ldr	r3, .Lnis_pause_wait_3 @ NRam
	ldr	r1, .Lnis_pause_wait_3 + 4 @ 0xa68
	add	r2, r3, r1
	ldrh	r1, [r2]
	add	r1, r1, #0x1
	strh	r1, [r2]
	ldrh	r1, [r2]
	cmp	r1, r0
	bge	.Lnis_pause_wait_1	@cond_branch
	mov	r0, #0x0
	b	.Lnis_pause_wait_2
.Lnis_pause_wait_4:
	.align	2, 0
.Lnis_pause_wait_3:
	.word	NRam
	.word	0xa68
.Lnis_pause_wait_1:
	mov	r0, #0x0
	strh	r0, [r2]
	ldr	r0, .Lnis_pause_wait_5 @ 0xa66
	add	r1, r3, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x1
.Lnis_pause_wait_2:
	bx	lr
.Lnis_pause_wait_6:
	.align	2, 0
.Lnis_pause_wait_5:
	.word	0xa66
	thumb_func_end nis_pause_wait
