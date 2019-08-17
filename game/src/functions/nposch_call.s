	thumb_func_start nposch_call
nposch_call:
	push	{r4, r5, lr}
	add	r2, r0, #0
	ldrb	r0, [r2]
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bhi	.Lnposch_call_26	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnposch_call_3 @ .Lnposch_call_2
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnposch_call_4:
	.align	2, 0
.Lnposch_call_3:
	.word	.Lnposch_call_2
.Lnposch_call_2:
	.word	.Lnposch_call_26
	.word	.Lnposch_call_27
	.word	.Lnposch_call_28
	.word	.Lnposch_call_29
	.word	.Lnposch_call_30
	.word	.Lnposch_call_31
	.word	.Lnposch_call_11
	.word	.Lnposch_call_12
	.word	.Lnposch_call_13
	.word	.Lnposch_call_14
	.word	.Lnposch_call_15
	.word	.Lnposch_call_16
	.word	.Lnposch_call_17
	.word	.Lnposch_call_18
	.word	.Lnposch_call_19
	.word	.Lnposch_call_20
	.word	.Lnposch_call_21
	.word	.Lnposch_call_22
	.word	.Lnposch_call_23
	.word	.Lnposch_call_24
	.word	.Lnposch_call_25
	.word	.Lnposch_call_26
	.word	.Lnposch_call_27
	.word	.Lnposch_call_28
	.word	.Lnposch_call_29
	.word	.Lnposch_call_30
	.word	.Lnposch_call_31
.Lnposch_call_26:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r5, .Lnposch_call_33 @ np_fadr_xy_X
	ldr	r0, [r5]
	add	r0, r0, #0x1
	ldr	r4, .Lnposch_call_33 + 4 @ np_fadr_xy_Y
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x1
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	b	.Lnposch_call_41
.Lnposch_call_34:
	.align	2, 0
.Lnposch_call_33:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
.Lnposch_call_27:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r5, .Lnposch_call_36 @ np_fadr_xy_X
	ldr	r0, [r5]
	add	r0, r0, #0x1
	ldr	r4, .Lnposch_call_36 + 4 @ np_fadr_xy_Y
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x1
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x2
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x1
	ldr	r1, [r4]
	sub	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	b	.Lnposch_call_41
.Lnposch_call_37:
	.align	2, 0
.Lnposch_call_36:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
.Lnposch_call_28:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r5, .Lnposch_call_39 @ np_fadr_xy_X
	ldr	r0, [r5]
	add	r0, r0, #0x1
	ldr	r4, .Lnposch_call_39 + 4 @ np_fadr_xy_Y
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x2
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x3
	ldr	r1, [r4]
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x2
	ldr	r1, [r4]
	sub	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	b	.Lnposch_call_41
.Lnposch_call_40:
	.align	2, 0
.Lnposch_call_39:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
.Lnposch_call_29:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r5, .Lnposch_call_42 @ np_fadr_xy_X
	ldr	r0, [r5]
	ldr	r4, .Lnposch_call_42 + 4 @ np_fadr_xy_Y
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x3
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x3
	ldr	r1, [r4]
	sub	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	b	.Lnposch_call_41
.Lnposch_call_43:
	.align	2, 0
.Lnposch_call_42:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
.Lnposch_call_30:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r5, .Lnposch_call_45 @ np_fadr_xy_X
	ldr	r0, [r5]
	sub	r0, r0, #0x1
	ldr	r4, .Lnposch_call_45 + 4 @ np_fadr_xy_Y
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x3
	ldr	r1, [r4]
	add	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x3
	ldr	r1, [r4]
	sub	r1, r1, #0x1
	bl	nposch_chk_push
	ldr	r0, [r5]
	sub	r0, r0, #0x1
.Lnposch_call_41:
	ldr	r1, [r4]
	sub	r1, r1, #0x1
	bl	nposch_chk_push
	b	.Lnposch_call_89
.Lnposch_call_46:
	.align	2, 0
.Lnposch_call_45:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
.Lnposch_call_31:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_48 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_49:
	.align	2, 0
.Lnposch_call_48:
	.word	np_fadr_xy_Y
.Lnposch_call_11:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_51 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x2
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_52:
	.align	2, 0
.Lnposch_call_51:
	.word	np_fadr_xy_Y
.Lnposch_call_12:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_54 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x3
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_55:
	.align	2, 0
.Lnposch_call_54:
	.word	np_fadr_xy_Y
.Lnposch_call_13:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_57 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x4
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_58:
	.align	2, 0
.Lnposch_call_57:
	.word	np_fadr_xy_Y
.Lnposch_call_14:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_60 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x5
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_61:
	.align	2, 0
.Lnposch_call_60:
	.word	np_fadr_xy_Y
.Lnposch_call_15:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_63 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x6
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_64:
	.align	2, 0
.Lnposch_call_63:
	.word	np_fadr_xy_Y
.Lnposch_call_16:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_66 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x7
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_67:
	.align	2, 0
.Lnposch_call_66:
	.word	np_fadr_xy_Y
.Lnposch_call_17:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_69 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x8
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_70:
	.align	2, 0
.Lnposch_call_69:
	.word	np_fadr_xy_Y
.Lnposch_call_18:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_72 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x9
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_73:
	.align	2, 0
.Lnposch_call_72:
	.word	np_fadr_xy_Y
.Lnposch_call_19:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_75 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xa
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_76:
	.align	2, 0
.Lnposch_call_75:
	.word	np_fadr_xy_Y
.Lnposch_call_20:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_78 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xb
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_79:
	.align	2, 0
.Lnposch_call_78:
	.word	np_fadr_xy_Y
.Lnposch_call_21:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_81 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xc
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_82:
	.align	2, 0
.Lnposch_call_81:
	.word	np_fadr_xy_Y
.Lnposch_call_22:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_84 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xd
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_85:
	.align	2, 0
.Lnposch_call_84:
	.word	np_fadr_xy_Y
.Lnposch_call_23:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_87 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xe
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_88:
	.align	2, 0
.Lnposch_call_87:
	.word	np_fadr_xy_Y
.Lnposch_call_24:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_90 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0xf
	bl	nposch_chk_l2l3_push
	b	.Lnposch_call_89
.Lnposch_call_91:
	.align	2, 0
.Lnposch_call_90:
	.word	np_fadr_xy_Y
.Lnposch_call_25:
	add	r0, r2, #0
	bl	np_fadr_xy
	ldr	r4, .Lnposch_call_92 @ np_fadr_xy_Y
	ldr	r0, [r4]
	add	r0, r0, #0x1
	bl	nposch_chk_l2l3_push
	ldr	r0, [r4]
	sub	r0, r0, #0x10
	bl	nposch_chk_l2l3_push
.Lnposch_call_89:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnposch_call_93:
	.align	2, 0
.Lnposch_call_92:
	.word	np_fadr_xy_Y
	thumb_func_end nposch_call
