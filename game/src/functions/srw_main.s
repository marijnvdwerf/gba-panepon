	thumb_func_start srw_main
srw_main:
	push	{r4, r5, lr}
	bl	np_srwreq_score
	bl	np_srwreq_time
	ldr	r4, .Lsrw_main_3 @ PrbRam
	ldr	r5, .Lsrw_main_3 + 4 @ CRAM_BGA_SCR_GameFrame
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.Lsrw_main_1	@cond_branch
	strb	r0, [r4, #0x8]
	b	.Lsrw_main_5
.Lsrw_main_4:
	.align	2, 0
.Lsrw_main_3:
	.word	PrbRam
	.word	CRAM_BGA_SCR_GameFrame
.Lsrw_main_1:
	ldrb	r0, [r4, #0x8]
	cmp	r0, #0x1f
	bls	.Lsrw_main_5	@cond_branch
.Lsrw_main_6:
	b	.Lsrw_main_6
.Lsrw_main_5:
	ldrb	r1, [r4, #0x8]
	add	r0, r1, #1
	mov	r2, #0x0
	strb	r0, [r4, #0x8]
	lsl	r3, r1, #0x4
	add	r0, r3, r4
	str	r2, [r0, #0xc]
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.Lsrw_main_7	@cond_branch
	add	r0, r3, #0
	add	r0, r0, #0xc
	add	r0, r4, r0
	str	r0, [r4, #0x4]
	str	r0, [r4]
	b	.Lsrw_main_8
.Lsrw_main_7:
	ldr	r1, [r4, #0x4]
	add	r0, r3, #0
	add	r0, r0, #0xc
	add	r0, r4, r0
	str	r0, [r1]
	str	r0, [r4, #0x4]
.Lsrw_main_8:
	ldr	r0, [r4, #0x4]
	str	r5, [r0, #0x4]
	ldr	r1, .Lsrw_main_9 @ 0x600e000
	str	r1, [r0, #0x8]
	mov	r1, #0x80
	lsl	r1, r1, #0x4
	strh	r1, [r0, #0xc]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lsrw_main_10:
	.align	2, 0
.Lsrw_main_9:
	.word	0x600e000
	thumb_func_end srw_main
