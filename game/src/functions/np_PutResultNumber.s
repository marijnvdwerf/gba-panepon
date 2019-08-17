	thumb_func_start np_PutResultNumber
np_PutResultNumber:
	push	{r4, r5, r6, lr}
	add	sp, sp, #0xffffffec
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r1, .Lnp_PutResultNumber_3 @ str_201C478
	mov	r0, sp
	bl	sprintf
	ldr	r0, .Lnp_PutResultNumber_3 + 4 @ 0x1ff
	and	r4, r4, r0
	mov	r0, #0xff
	and	r5, r5, r0
	mov	r6, #0x1
.Lnp_PutResultNumber_60:
	mov	r1, sp
	add	r0, r1, r6
	ldrb	r0, [r0]
	sub	r0, r0, #0x20
	cmp	r0, #0x19
	bls	.Lnp_PutResultNumber_1	@cond_branch
	b	.Lnp_PutResultNumber_56
.Lnp_PutResultNumber_1:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_PutResultNumber_3 + 8 @ .Lnp_PutResultNumber_5
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_PutResultNumber_4:
	.align	2, 0
.Lnp_PutResultNumber_3:
	.word	str_201C478
	.word	0x1ff
	.word	.Lnp_PutResultNumber_5
.Lnp_PutResultNumber_5:
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_56
	.word	.Lnp_PutResultNumber_22
	.word	.Lnp_PutResultNumber_23
	.word	.Lnp_PutResultNumber_24
	.word	.Lnp_PutResultNumber_25
	.word	.Lnp_PutResultNumber_26
	.word	.Lnp_PutResultNumber_27
	.word	.Lnp_PutResultNumber_28
	.word	.Lnp_PutResultNumber_29
	.word	.Lnp_PutResultNumber_30
	.word	.Lnp_PutResultNumber_31
.Lnp_PutResultNumber_22:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_33 @ 0xfae0
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_34:
	.align	2, 0
.Lnp_PutResultNumber_33:
	.word	0xfae0
.Lnp_PutResultNumber_23:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_36 @ 0xfae2
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_37:
	.align	2, 0
.Lnp_PutResultNumber_36:
	.word	0xfae2
.Lnp_PutResultNumber_24:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_39 @ 0xfae4
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_40:
	.align	2, 0
.Lnp_PutResultNumber_39:
	.word	0xfae4
.Lnp_PutResultNumber_25:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_42 @ 0xfae6
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_43:
	.align	2, 0
.Lnp_PutResultNumber_42:
	.word	0xfae6
.Lnp_PutResultNumber_26:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_45 @ 0xfae8
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_46:
	.align	2, 0
.Lnp_PutResultNumber_45:
	.word	0xfae8
.Lnp_PutResultNumber_27:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_48 @ 0xfaea
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_49:
	.align	2, 0
.Lnp_PutResultNumber_48:
	.word	0xfaea
.Lnp_PutResultNumber_28:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_51 @ 0xfaec
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_52:
	.align	2, 0
.Lnp_PutResultNumber_51:
	.word	0xfaec
.Lnp_PutResultNumber_29:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_54 @ 0xfaee
	b	.Lnp_PutResultNumber_53
.Lnp_PutResultNumber_55:
	.align	2, 0
.Lnp_PutResultNumber_54:
	.word	0xfaee
.Lnp_PutResultNumber_30:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_57 @ 0xfaf0
.Lnp_PutResultNumber_53:
	add	r1, r4, #0
	bl	NisCtc_Obj1Put
	b	.Lnp_PutResultNumber_56
.Lnp_PutResultNumber_58:
	.align	2, 0
.Lnp_PutResultNumber_57:
	.word	0xfaf0
.Lnp_PutResultNumber_31:
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	orr	r0, r0, r5
	ldr	r2, .Lnp_PutResultNumber_61 @ 0xfaf2
	add	r1, r4, #0
	bl	NisCtc_Obj1Put
.Lnp_PutResultNumber_56:
	add	r4, r4, #0x8
	add	r6, r6, #0x1
	cmp	r6, #0x5
	bgt	.Lnp_PutResultNumber_59	@cond_branch
	b	.Lnp_PutResultNumber_60
.Lnp_PutResultNumber_59:
	add	sp, sp, #0x14
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_PutResultNumber_62:
	.align	2, 0
.Lnp_PutResultNumber_61:
	.word	0xfaf2
	thumb_func_end np_PutResultNumber
