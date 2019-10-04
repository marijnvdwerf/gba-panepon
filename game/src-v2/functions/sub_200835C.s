	thumb_func_start sub_200835C
sub_200835C:
	push	{r4, lr}
	ldr	r0, .Lsub_200835C_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lsub_200835C_15	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lsub_200835C_2 + 4 @ .Lsub_200835C_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lsub_200835C_3:
	.align	2, 0
.Lsub_200835C_2:
	.word	ARam
	.word	.Lsub_200835C_4
.Lsub_200835C_4:
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_11
	.word	.Lsub_200835C_11
	.word	.Lsub_200835C_11
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_14
	.word	.Lsub_200835C_14
.Lsub_200835C_15:
	b	.Lsub_200835C_15
.Lsub_200835C_14:
	mov	r0, #0x1
	b	.Lsub_200835C_16
.Lsub_200835C_11:
	ldr	r4, .Lsub_200835C_17 @ unk_2012736
	bl	npgpr_P1lev
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r0, r0, r4
	ldrb	r0, [r0]
.Lsub_200835C_16:
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r4}
	pop	{r1}
	bx	r1
.Lsub_200835C_18:
	.align	2, 0
.Lsub_200835C_17:
	.word	unk_2012736
	thumb_func_end sub_200835C
