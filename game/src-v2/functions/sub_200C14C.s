	thumb_func_start sub_200C14C
sub_200C14C:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .Lsub_200C14C_5 @ pad8
	ldr	r2, [r0]
	add	r7, r0, #0
	cmp	r2, #0x1e
	bgt	.Lsub_200C14C_1	@cond_branch
	ldr	r4, .Lsub_200C14C_5 + 4 @ 0x4000054
	mov	r0, #0x1e
	sub	r0, r0, r2
	lsl	r0, r0, #0x1
	add	r0, r0, #0x1
	lsl	r0, r0, #0x4
	mov	r1, #0x3c
	bl	__divsi3
	strh	r0, [r4]
.Lsub_200C14C_1:
	ldr	r0, [r7]
	ldr	r6, .Lsub_200C14C_5 + 8 @ pad8+0x4
	cmp	r0, #0x77
	ble	.Lsub_200C14C_9	@cond_branch
	sub	r0, r0, #0x78
	mov	r1, #0x3c
	bl	__modsi3
	add	r5, r0, #0
	cmp	r5, #0x1d
	bgt	.Lsub_200C14C_3	@cond_branch
	mov	r0, #0x1e
	sub	r0, r0, r5
	b	.Lsub_200C14C_4
.Lsub_200C14C_6:
	.align	2, 0
.Lsub_200C14C_5:
	.word	pad9
	.word	0x4000054
	.word	pad9+0x4
.Lsub_200C14C_3:
	add	r0, r5, #0
	sub	r0, r0, #0x1e
.Lsub_200C14C_4:
	lsl	r1, r0, #0x1
	add	r1, r1, #0x1
	lsl	r0, r1, #0x5
	sub	r0, r0, r1
	mov	r1, #0x3c
	bl	__divsi3
	lsl	r1, r0, #0x5
	orr	r1, r1, r0
	lsl	r0, r0, #0xa
	orr	r1, r1, r0
	ldr	r0, .Lsub_200C14C_13 @ 0x500000c
	strh	r1, [r0]
	ldr	r0, .Lsub_200C14C_13 + 4 @ pad8+0x4
	ldr	r1, [r0]
	add	r6, r0, #0
	cmp	r1, #0
	bne	.Lsub_200C14C_7	@cond_branch
	ldr	r0, .Lsub_200C14C_13 + 8 @ KeyRead_Trg
	ldrh	r1, [r0]
	ldr	r0, .Lsub_200C14C_13 + 12 @ 0x30f
	and	r0, r0, r1
	cmp	r0, #0
	bne	.Lsub_200C14C_8	@cond_branch
	ldr	r1, [r7]
	ldr	r0, .Lsub_200C14C_13 + 16 @ 0xe87
	cmp	r1, r0
	ble	.Lsub_200C14C_9	@cond_branch
.Lsub_200C14C_8:
	mov	r0, #0x1
	str	r0, [r6]
.Lsub_200C14C_9:
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.Lsub_200C14C_10	@cond_branch
.Lsub_200C14C_7:
	ldr	r0, [r6]
	sub	r5, r0, #1
	cmp	r5, #0x1e
	ble	.Lsub_200C14C_11	@cond_branch
	mov	r5, #0x1e
.Lsub_200C14C_11:
	ldr	r4, .Lsub_200C14C_13 + 20 @ 0x4000054
	lsl	r0, r5, #0x1
	add	r0, r0, #0x1
	lsl	r0, r0, #0x4
	mov	r1, #0x3c
	bl	__divsi3
	strh	r0, [r4]
	cmp	r5, #0x1d
	ble	.Lsub_200C14C_12	@cond_branch
	ldr	r0, .Lsub_200C14C_13 + 24 @ NisATitleInit + 1
	bl	MainSeqSearchNear
.Lsub_200C14C_12:
	ldr	r0, [r6]
	add	r0, r0, #0x1
	str	r0, [r6]
	ldr	r7, .Lsub_200C14C_13 + 28 @ pad8
.Lsub_200C14C_10:
	ldr	r0, [r7]
	add	r0, r0, #0x1
	str	r0, [r7]
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lsub_200C14C_14:
	.align	2, 0
.Lsub_200C14C_13:
	.word	0x500000c
	.word	pad9+0x4
	.word	KeyRead_Trg
	.word	0x30f
	.word	0xe87
	.word	0x4000054
	.word	NisATitleInit + 1
	.word	pad9
	thumb_func_end sub_200C14C
