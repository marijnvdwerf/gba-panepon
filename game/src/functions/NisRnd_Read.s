	thumb_func_start NisRnd_Read
NisRnd_Read:
	ldr	r3, .LNisRnd_Read_2 @ NisRnd_Idx
	ldrh	r0, [r3]
	add	r0, r0, #0x1
	ldr	r1, .LNisRnd_Read_2 + 4 @ 0x7ff
	and	r0, r0, r1
	strh	r0, [r3]
	ldr	r2, .LNisRnd_Read_2 + 8 @ NisRnd_Shu
	cmp	r0, #0
	bne	.LNisRnd_Read_1	@cond_branch
	ldrh	r0, [r2]
	add	r0, r0, #0x1
	strh	r0, [r2]
.LNisRnd_Read_1:
	ldr	r1, .LNisRnd_Read_2 + 12 @ NisRnd_100dat
	ldrh	r0, [r3]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldrh	r1, [r2]
	add	r0, r0, r1
	mov	r1, #0xff
	and	r0, r0, r1
	bx	lr
.LNisRnd_Read_3:
	.align	2, 0
.LNisRnd_Read_2:
	.word	NisRnd_Idx
	.word	0x7ff
	.word	NisRnd_Shu
	.word	NisRnd_100dat
	thumb_func_end NisRnd_Read
