	thumb_func_start np_PutResultNumber
np_PutResultNumber:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #0xfffffffc
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r0, .Lnp_PutResultNumber_8 @ np_mk_put_agb_number
	ldr	r1, .Lnp_PutResultNumber_8 + 4 @ pad7
	ldr	r3, .Lnp_PutResultNumber_8 + 8 @ 0x5555
	str	r2, [sp]
	add	r2, r3, #0
	mov	r3, #0x6
	bl	PutBgDex
	ldr	r0, .Lnp_PutResultNumber_8 + 12 @ 0x1ff
	and	r4, r4, r0
	mov	r0, #0xff
	and	r5, r5, r0
	mov	r7, #0x1
	mov	r6, #0x80
	lsl	r6, r6, #0x8
.Lnp_PutResultNumber_48:
	ldr	r1, .Lnp_PutResultNumber_8 + 4 @ pad7
	lsl	r0, r7, #0x1
	add	r0, r0, r1
	ldrh	r0, [r0]
	cmp	r0, #0x5
	beq	.Lnp_PutResultNumber_1	@cond_branch
	cmp	r0, #0x5
	bgt	.Lnp_PutResultNumber_2	@cond_branch
	cmp	r0, #0x2
	beq	.Lnp_PutResultNumber_3	@cond_branch
	cmp	r0, #0x2
	bgt	.Lnp_PutResultNumber_4	@cond_branch
	cmp	r0, #0
	beq	.Lnp_PutResultNumber_5	@cond_branch
	cmp	r0, #0x1
	beq	.Lnp_PutResultNumber_6	@cond_branch
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_9:
	.align	2, 0
.Lnp_PutResultNumber_8:
	.word	np_mk_put_agb_number
	.word	pad7
	.word	0x5555
	.word	0x1ff
.Lnp_PutResultNumber_4:
	cmp	r0, #0x3
	beq	.Lnp_PutResultNumber_10	@cond_branch
	cmp	r0, #0x4
	beq	.Lnp_PutResultNumber_11	@cond_branch
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_2:
	cmp	r0, #0x8
	beq	.Lnp_PutResultNumber_13	@cond_branch
	cmp	r0, #0x8
	bgt	.Lnp_PutResultNumber_14	@cond_branch
	cmp	r0, #0x6
	beq	.Lnp_PutResultNumber_15	@cond_branch
	cmp	r0, #0x7
	beq	.Lnp_PutResultNumber_16	@cond_branch
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_14:
	cmp	r0, #0x9
	beq	.Lnp_PutResultNumber_18	@cond_branch
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_5:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_21 @ 0xfae0
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_22:
	.align	2, 0
.Lnp_PutResultNumber_21:
	.word	0xfae0
.Lnp_PutResultNumber_6:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_24 @ 0xfae2
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_25:
	.align	2, 0
.Lnp_PutResultNumber_24:
	.word	0xfae2
.Lnp_PutResultNumber_3:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_27 @ 0xfae4
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_28:
	.align	2, 0
.Lnp_PutResultNumber_27:
	.word	0xfae4
.Lnp_PutResultNumber_10:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_30 @ 0xfae6
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_31:
	.align	2, 0
.Lnp_PutResultNumber_30:
	.word	0xfae6
.Lnp_PutResultNumber_11:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_33 @ 0xfae8
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_34:
	.align	2, 0
.Lnp_PutResultNumber_33:
	.word	0xfae8
.Lnp_PutResultNumber_1:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_36 @ 0xfaea
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_37:
	.align	2, 0
.Lnp_PutResultNumber_36:
	.word	0xfaea
.Lnp_PutResultNumber_15:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_39 @ 0xfaec
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_40:
	.align	2, 0
.Lnp_PutResultNumber_39:
	.word	0xfaec
.Lnp_PutResultNumber_16:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_42 @ 0xfaee
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_43:
	.align	2, 0
.Lnp_PutResultNumber_42:
	.word	0xfaee
.Lnp_PutResultNumber_13:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_45 @ 0xfaf0
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_44
.Lnp_PutResultNumber_46:
	.align	2, 0
.Lnp_PutResultNumber_45:
	.word	0xfaf0
.Lnp_PutResultNumber_18:
	add	r0, r5, #0
	orr	r0, r0, r6
	add	r1, r4, #0
	ldr	r2, .Lnp_PutResultNumber_49 @ 0xfaf2
	bl	NisCtc_Obj1Put
.Lnp_PutResultNumber_44:
	add	r4, r4, #0x8
	add	r7, r7, #0x1
	cmp	r7, #0x5
	bgt	.Lnp_PutResultNumber_47	@cond_branch
	b	.Lnp_PutResultNumber_48
.Lnp_PutResultNumber_47:
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_PutResultNumber_50:
	.align	2, 0
.Lnp_PutResultNumber_49:
	.word	0xfaf2
	thumb_func_end np_PutResultNumber
