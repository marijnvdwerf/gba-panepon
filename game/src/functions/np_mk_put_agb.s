	thumb_func_start np_mk_put_agb
np_mk_put_agb:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xffffffe0
	str	r0, [sp, #0x18]
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	ldr	r3, [r0, #0x4]
	cmp	r3, #0
	bne	.Lnp_mk_put_agb_1	@cond_branch
	b	.Lnp_mk_put_agb_4
.Lnp_mk_put_agb_1:
	cmp	r3, #0x9
	bgt	.Lnp_mk_put_agb_3	@cond_branch
	ldr	r4, .Lnp_mk_put_agb_5 @ NRam
	ldr	r1, .Lnp_mk_put_agb_5 + 4 @ 0xc3d
	add	r0, r4, r1
	ldrb	r5, [r0]
	ldr	r2, .Lnp_mk_put_agb_5 + 8 @ 0xc3c
	add	r4, r4, r2
	ldrb	r1, [r4]
	mov	r2, #0x80
	lsl	r2, r2, #0x7
	add	r0, r2, #0
	orr	r1, r1, r0
	ldr	r2, .Lnp_mk_put_agb_5 + 12 @ np_mk_put_agb_Rens_1keta
	lsl	r0, r3, #0x1
	add	r0, r0, r2
	ldrh	r0, [r0]
	add	r2, r7, #0
	orr	r2, r2, r0
	add	r0, r5, #0
	bl	NisCtc_Obj1Put
	ldrb	r0, [r4]
	add	r0, r0, #0xe
	strb	r0, [r4]
	b	.Lnp_mk_put_agb_4
.Lnp_mk_put_agb_6:
	.align	2, 0
.Lnp_mk_put_agb_5:
	.word	NRam
	.word	0xc3d
	.word	0xc3c
	.word	np_mk_put_agb_Rens_1keta
.Lnp_mk_put_agb_3:
	ldr	r0, .Lnp_mk_put_agb_11 @ np_mk_put_agb_number
	ldr	r4, .Lnp_mk_put_agb_11 + 4 @ 0x5555
	str	r3, [sp]
	add	r1, sp, #0x4
	add	r2, r4, #0
	mov	r3, #0xa
	bl	PutBgDex
	ldr	r2, .Lnp_mk_put_agb_11 + 8 @ NRam
	ldr	r0, .Lnp_mk_put_agb_11 + 12 @ 0xc3c
	add	r1, r2, r0
	ldrb	r0, [r1]
	add	r0, r0, #0xe
	strb	r0, [r1]
	ldrb	r0, [r1]
	str	r0, [sp, #0x1c]
	mov	r0, #0x1
	mov	r8, r0
	mov	r5, #0x9
	mov	r0, sp
	add	r0, r0, #0x16
	ldrh	r0, [r0]
	cmp	r0, r4
	beq	.Lnp_mk_put_agb_13	@cond_branch
	mov	sl, r4
	ldr	r0, .Lnp_mk_put_agb_11 + 16 @ 0xc3d
	add	r0, r0, r2
	mov	r9, r0
	add	r6, r1, #0
.Lnp_mk_put_agb_14:
	sub	r1, r5, #1
	lsl	r0, r1, #0x1
	add r0, r0, sp
	add	r0, r0, #0x4
	ldrh	r0, [r0]
	add	r4, r1, #0
	cmp	r0, sl
	bne	.Lnp_mk_put_agb_8	@cond_branch
	mov	r1, #0x0
	mov	r8, r1
.Lnp_mk_put_agb_8:
	mov	r2, r8
	cmp	r2, #0
	bne	.Lnp_mk_put_agb_9	@cond_branch
	ldrb	r0, [r6]
	sub	r0, r0, #0x8
	strb	r0, [r6]
	mov	r1, r9
	ldrb	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x8
	add	r1, r2, #0
	orr	r0, r0, r1
	ldrb	r3, [r6]
	ldr	r2, .Lnp_mk_put_agb_11 + 20 @ np_mk_put_agb_Rens_Lketa
	lsl	r1, r5, #0x1
	add r1, r1, sp
	add	r1, r1, #0x4
	ldrh	r1, [r1]
	lsl	r1, r1, #0x1
	add	r1, r1, r2
	ldrh	r1, [r1]
	add	r2, r7, #0
	orr	r2, r2, r1
	add	r1, r3, #0
	bl	NisCtc_Obj1Put
	b	.Lnp_mk_put_agb_10
.Lnp_mk_put_agb_12:
	.align	2, 0
.Lnp_mk_put_agb_11:
	.word	np_mk_put_agb_number
	.word	0x5555
	.word	NRam
	.word	0xc3c
	.word	0xc3d
	.word	np_mk_put_agb_Rens_Lketa
.Lnp_mk_put_agb_9:
	ldrb	r0, [r6]
	sub	r0, r0, #0x6
	strb	r0, [r6]
	mov	r1, r9
	ldrb	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x8
	add	r1, r2, #0
	orr	r0, r0, r1
	ldrb	r3, [r6]
	ldr	r2, .Lnp_mk_put_agb_19 @ np_mk_put_agb_Rens_Rketa
	lsl	r1, r5, #0x1
	add r1, r1, sp
	add	r1, r1, #0x4
	ldrh	r1, [r1]
	lsl	r1, r1, #0x1
	add	r1, r1, r2
	ldrh	r1, [r1]
	add	r2, r7, #0
	orr	r2, r2, r1
	add	r1, r3, #0
	bl	NisCtc_Obj1Put
.Lnp_mk_put_agb_10:
	add	r5, r4, #0
	cmp	r4, #0
	blt	.Lnp_mk_put_agb_13	@cond_branch
	lsl	r0, r4, #0x1
	add r0, r0, sp
	add	r0, r0, #0x4
	ldrh	r0, [r0]
	cmp	r0, sl
	bne	.Lnp_mk_put_agb_14	@cond_branch
.Lnp_mk_put_agb_13:
	ldr	r0, .Lnp_mk_put_agb_19 + 4 @ NRam
	ldr	r1, .Lnp_mk_put_agb_19 + 8 @ 0xc3c
	add	r0, r0, r1
	mov	r2, sp
	ldrb	r2, [r2, #0x1c]
	strb	r2, [r0]
.Lnp_mk_put_agb_4:
	ldr	r0, [sp, #0x18]
	ldr	r3, [r0, #0x8]
	cmp	r3, #0
	bne	.Lnp_mk_put_agb_15	@cond_branch
	b	.Lnp_mk_put_agb_18
.Lnp_mk_put_agb_15:
	cmp	r3, #0x9
	bgt	.Lnp_mk_put_agb_17	@cond_branch
	ldr	r4, .Lnp_mk_put_agb_19 + 4 @ NRam
	ldr	r1, .Lnp_mk_put_agb_19 + 12 @ 0xc3d
	add	r0, r4, r1
	ldrb	r5, [r0]
	ldr	r2, .Lnp_mk_put_agb_19 + 8 @ 0xc3c
	add	r4, r4, r2
	ldrb	r1, [r4]
	mov	r2, #0x80
	lsl	r2, r2, #0x7
	add	r0, r2, #0
	orr	r1, r1, r0
	ldr	r2, .Lnp_mk_put_agb_19 + 16 @ np_mk_put_agb_Douj_1keta
	lsl	r0, r3, #0x1
	add	r0, r0, r2
	ldrh	r0, [r0]
	add	r2, r7, #0
	orr	r2, r2, r0
	add	r0, r5, #0
	bl	NisCtc_Obj1Put
	ldrb	r0, [r4]
	add	r0, r0, #0xe
	strb	r0, [r4]
	b	.Lnp_mk_put_agb_18
.Lnp_mk_put_agb_20:
	.align	2, 0
.Lnp_mk_put_agb_19:
	.word	np_mk_put_agb_Rens_Rketa
	.word	NRam
	.word	0xc3c
	.word	0xc3d
	.word	np_mk_put_agb_Douj_1keta
.Lnp_mk_put_agb_17:
	ldr	r0, .Lnp_mk_put_agb_25 @ np_mk_put_agb_number
	ldr	r4, .Lnp_mk_put_agb_25 + 4 @ 0x5555
	str	r3, [sp]
	add	r1, sp, #0x4
	add	r2, r4, #0
	mov	r3, #0xa
	bl	PutBgDex
	ldr	r2, .Lnp_mk_put_agb_25 + 8 @ NRam
	ldr	r0, .Lnp_mk_put_agb_25 + 12 @ 0xc3c
	add	r1, r2, r0
	ldrb	r0, [r1]
	add	r0, r0, #0xe
	strb	r0, [r1]
	ldrb	r0, [r1]
	str	r0, [sp, #0x1c]
	mov	r0, #0x1
	mov	r8, r0
	mov	r5, #0x9
	mov	r0, sp
	add	r0, r0, #0x16
	ldrh	r0, [r0]
	cmp	r0, r4
	beq	.Lnp_mk_put_agb_27	@cond_branch
	mov	sl, r4
	ldr	r0, .Lnp_mk_put_agb_25 + 16 @ 0xc3d
	add	r0, r0, r2
	mov	r9, r0
	add	r6, r1, #0
.Lnp_mk_put_agb_28:
	sub	r1, r5, #1
	lsl	r0, r1, #0x1
	add r0, r0, sp
	add	r0, r0, #0x4
	ldrh	r0, [r0]
	add	r4, r1, #0
	cmp	r0, sl
	bne	.Lnp_mk_put_agb_22	@cond_branch
	mov	r1, #0x0
	mov	r8, r1
.Lnp_mk_put_agb_22:
	mov	r2, r8
	cmp	r2, #0
	bne	.Lnp_mk_put_agb_23	@cond_branch
	ldrb	r0, [r6]
	sub	r0, r0, #0x8
	strb	r0, [r6]
	mov	r1, r9
	ldrb	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x8
	add	r1, r2, #0
	orr	r0, r0, r1
	ldrb	r3, [r6]
	ldr	r2, .Lnp_mk_put_agb_25 + 20 @ np_mk_put_agb_Douj_Lketa
	lsl	r1, r5, #0x1
	add r1, r1, sp
	add	r1, r1, #0x4
	ldrh	r1, [r1]
	lsl	r1, r1, #0x1
	add	r1, r1, r2
	ldrh	r1, [r1]
	add	r2, r7, #0
	orr	r2, r2, r1
	add	r1, r3, #0
	bl	NisCtc_Obj1Put
	b	.Lnp_mk_put_agb_24
.Lnp_mk_put_agb_26:
	.align	2, 0
.Lnp_mk_put_agb_25:
	.word	np_mk_put_agb_number
	.word	0x5555
	.word	NRam
	.word	0xc3c
	.word	0xc3d
	.word	np_mk_put_agb_Douj_Lketa
.Lnp_mk_put_agb_23:
	ldrb	r0, [r6]
	sub	r0, r0, #0x6
	strb	r0, [r6]
	mov	r1, r9
	ldrb	r0, [r1]
	mov	r2, #0x80
	lsl	r2, r2, #0x8
	add	r1, r2, #0
	orr	r0, r0, r1
	ldrb	r3, [r6]
	ldr	r2, .Lnp_mk_put_agb_29 @ np_mk_put_agb_Douj_Rketa
	lsl	r1, r5, #0x1
	add r1, r1, sp
	add	r1, r1, #0x4
	ldrh	r1, [r1]
	lsl	r1, r1, #0x1
	add	r1, r1, r2
	ldrh	r1, [r1]
	add	r2, r7, #0
	orr	r2, r2, r1
	add	r1, r3, #0
	bl	NisCtc_Obj1Put
.Lnp_mk_put_agb_24:
	add	r5, r4, #0
	cmp	r4, #0
	blt	.Lnp_mk_put_agb_27	@cond_branch
	lsl	r0, r4, #0x1
	add r0, r0, sp
	add	r0, r0, #0x4
	ldrh	r0, [r0]
	cmp	r0, sl
	bne	.Lnp_mk_put_agb_28	@cond_branch
.Lnp_mk_put_agb_27:
	ldr	r0, .Lnp_mk_put_agb_29 + 4 @ NRam
	ldr	r1, .Lnp_mk_put_agb_29 + 8 @ 0xc3c
	add	r0, r0, r1
	mov	r2, sp
	ldrb	r2, [r2, #0x1c]
	strb	r2, [r0]
.Lnp_mk_put_agb_18:
	add	sp, sp, #0x20
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_mk_put_agb_30:
	.align	2, 0
.Lnp_mk_put_agb_29:
	.word	np_mk_put_agb_Douj_Rketa
	.word	NRam
	.word	0xc3c
	thumb_func_end np_mk_put_agb
