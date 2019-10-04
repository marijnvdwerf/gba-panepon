	thumb_func_start np_kiken_anm
np_kiken_anm:
	push	{r4, lr}
	ldr	r0, .Lnp_kiken_anm_8 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x3
	bne	.Lnp_kiken_anm_1	@cond_branch
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_1:
	cmp	r0, #0x9
	bne	.Lnp_kiken_anm_3	@cond_branch
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_3:
	ldr	r0, .Lnp_kiken_anm_8 + 4 @ NRam
	ldr	r2, .Lnp_kiken_anm_8 + 8 @ 0xa89
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r2, r0, #0
	cmp	r1, #0
	bne	.Lnp_kiken_anm_5	@cond_branch
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_5:
	ldr	r0, .Lnp_kiken_anm_8 + 12 @ 0xa8d
	add	r1, r2, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	ldr	r3, .Lnp_kiken_anm_8 + 16 @ .Lnp_kiken_anm_10
.Lnp_kiken_anm_29:
	ldr	r0, .Lnp_kiken_anm_8 + 12 @ 0xa8d
	add	r1, r2, r0
	ldrb	r0, [r1]
	cmp	r0, #0x11
	bhi	.Lnp_kiken_anm_7	@cond_branch
	lsl	r0, r0, #0x2
	add	r0, r0, r3
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_kiken_anm_9:
	.align	2, 0
.Lnp_kiken_anm_8:
	.word	ARam
	.word	NRam
	.word	0xa89
	.word	0xa8d
	.word	.Lnp_kiken_anm_10
.Lnp_kiken_anm_10:
	.word	.Lnp_kiken_anm_11
	.word	.Lnp_kiken_anm_12
	.word	.Lnp_kiken_anm_13
	.word	.Lnp_kiken_anm_26
	.word	.Lnp_kiken_anm_27
	.word	.Lnp_kiken_anm_28
	.word	.Lnp_kiken_anm_23
	.word	.Lnp_kiken_anm_24
	.word	.Lnp_kiken_anm_25
	.word	.Lnp_kiken_anm_20
	.word	.Lnp_kiken_anm_21
	.word	.Lnp_kiken_anm_22
	.word	.Lnp_kiken_anm_23
	.word	.Lnp_kiken_anm_24
	.word	.Lnp_kiken_anm_25
	.word	.Lnp_kiken_anm_26
	.word	.Lnp_kiken_anm_27
	.word	.Lnp_kiken_anm_28
.Lnp_kiken_anm_7:
	mov	r0, #0x0
	strb	r0, [r1]
	b	.Lnp_kiken_anm_29
.Lnp_kiken_anm_11:
	ldr	r4, .Lnp_kiken_anm_31 @ NRam+0x154
	b	.Lnp_kiken_anm_33
.Lnp_kiken_anm_32:
	.align	2, 0
.Lnp_kiken_anm_31:
	.word	NRam+0x154
.Lnp_kiken_anm_12:
	ldr	r4, .Lnp_kiken_anm_34 @ NRam+0x164
	b	.Lnp_kiken_anm_33
.Lnp_kiken_anm_35:
	.align	2, 0
.Lnp_kiken_anm_34:
	.word	NRam+0x164
.Lnp_kiken_anm_13:
	ldr	r4, .Lnp_kiken_anm_37 @ NRam+0x174
.Lnp_kiken_anm_33:
	add	r0, r4, #0
	mov	r1, #0x25
	bl	npka_macm
	add	r4, r4, #0x8
	add	r0, r4, #0
	mov	r1, #0x25
	bl	npka_macm
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_38:
	.align	2, 0
.Lnp_kiken_anm_37:
	.word	NRam+0x174
.Lnp_kiken_anm_26:
	ldr	r4, .Lnp_kiken_anm_40 @ NRam+0x154
	b	.Lnp_kiken_anm_42
.Lnp_kiken_anm_41:
	.align	2, 0
.Lnp_kiken_anm_40:
	.word	NRam+0x154
.Lnp_kiken_anm_27:
	ldr	r4, .Lnp_kiken_anm_43 @ NRam+0x164
	b	.Lnp_kiken_anm_42
.Lnp_kiken_anm_44:
	.align	2, 0
.Lnp_kiken_anm_43:
	.word	NRam+0x164
.Lnp_kiken_anm_28:
	ldr	r4, .Lnp_kiken_anm_46 @ NRam+0x174
.Lnp_kiken_anm_42:
	add	r0, r4, #0
	mov	r1, #0x2d
	bl	npka_macm
	add	r4, r4, #0x8
	add	r0, r4, #0
	mov	r1, #0x2d
	bl	npka_macm
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_47:
	.align	2, 0
.Lnp_kiken_anm_46:
	.word	NRam+0x174
.Lnp_kiken_anm_23:
	ldr	r4, .Lnp_kiken_anm_49 @ NRam+0x154
	b	.Lnp_kiken_anm_51
.Lnp_kiken_anm_50:
	.align	2, 0
.Lnp_kiken_anm_49:
	.word	NRam+0x154
.Lnp_kiken_anm_24:
	ldr	r4, .Lnp_kiken_anm_52 @ NRam+0x164
	b	.Lnp_kiken_anm_51
.Lnp_kiken_anm_53:
	.align	2, 0
.Lnp_kiken_anm_52:
	.word	NRam+0x164
.Lnp_kiken_anm_25:
	ldr	r4, .Lnp_kiken_anm_55 @ NRam+0x174
.Lnp_kiken_anm_51:
	add	r0, r4, #0
	mov	r1, #0x0
	bl	npka_macm
	add	r4, r4, #0x8
	add	r0, r4, #0
	mov	r1, #0x0
	bl	npka_macm
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_56:
	.align	2, 0
.Lnp_kiken_anm_55:
	.word	NRam+0x174
.Lnp_kiken_anm_20:
	ldr	r4, .Lnp_kiken_anm_58 @ NRam+0x154
	b	.Lnp_kiken_anm_57
.Lnp_kiken_anm_59:
	.align	2, 0
.Lnp_kiken_anm_58:
	.word	NRam+0x154
.Lnp_kiken_anm_21:
	ldr	r4, .Lnp_kiken_anm_61 @ NRam+0x164
.Lnp_kiken_anm_57:
	add	r0, r4, #0
	mov	r1, #0x35
	bl	npka_macm
	add	r4, r4, #0x8
	add	r0, r4, #0
	mov	r1, #0x35
	bl	npka_macm
	b	.Lnp_kiken_anm_60
.Lnp_kiken_anm_62:
	.align	2, 0
.Lnp_kiken_anm_61:
	.word	NRam+0x164
.Lnp_kiken_anm_22:
	ldr	r4, .Lnp_kiken_anm_63 @ NRam+0x174
	add	r0, r4, #0
	mov	r1, #0x35
	bl	npka_macm
	add	r4, r4, #0x8
	add	r0, r4, #0
	mov	r1, #0x35
	bl	npka_macm
.Lnp_kiken_anm_60:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_kiken_anm_64:
	.align	2, 0
.Lnp_kiken_anm_63:
	.word	NRam+0x174
	thumb_func_end np_kiken_anm
