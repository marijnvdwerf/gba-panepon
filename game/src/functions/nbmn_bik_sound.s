	thumb_func_start nbmn_bik_sound
nbmn_bik_sound:
	push	{lr}
	cmp	r0, #0x2
	beq	.Lnbmn_bik_sound_1	@cond_branch
	cmp	r0, #0x2
	ble	.Lnbmn_bik_sound_2	@cond_branch
	cmp	r0, #0x3
	bne	.Lnbmn_bik_sound_3	@cond_branch
	b	.Lnbmn_bik_sound_4
.Lnbmn_bik_sound_3:
	b	.Lnbmn_bik_sound_7
.Lnbmn_bik_sound_2:
	cmp	r0, #0
	bge	.Lnbmn_bik_sound_6	@cond_branch
	b	.Lnbmn_bik_sound_7
.Lnbmn_bik_sound_6:
	cmp	r1, #0x8
	bhi	.Lnbmn_bik_sound_8	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnbmn_bik_sound_10 @ .Lnbmn_bik_sound_9
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnbmn_bik_sound_11:
	.align	2, 0
.Lnbmn_bik_sound_10:
	.word	.Lnbmn_bik_sound_9
.Lnbmn_bik_sound_9:
	.word	.Lnbmn_bik_sound_12
	.word	.Lnbmn_bik_sound_13
	.word	.Lnbmn_bik_sound_14
	.word	.Lnbmn_bik_sound_15
	.word	.Lnbmn_bik_sound_16
	.word	.Lnbmn_bik_sound_17
	.word	.Lnbmn_bik_sound_18
	.word	.Lnbmn_bik_sound_19
	.word	.Lnbmn_bik_sound_20
.Lnbmn_bik_sound_12:
	mov	r0, #0x9
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_13:
	mov	r0, #0xa
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_14:
	mov	r0, #0xb
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_15:
	mov	r0, #0xc
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_16:
	mov	r0, #0xd
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_17:
	mov	r0, #0xe
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_18:
	mov	r0, #0xf
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_19:
	mov	r0, #0x10
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_20:
	mov	r0, #0x11
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_8:
	mov	r0, #0x12
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_1:
	cmp	r1, #0x8
	bhi	.Lnbmn_bik_sound_31	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnbmn_bik_sound_33 @ .Lnbmn_bik_sound_32
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnbmn_bik_sound_34:
	.align	2, 0
.Lnbmn_bik_sound_33:
	.word	.Lnbmn_bik_sound_32
.Lnbmn_bik_sound_32:
	.word	.Lnbmn_bik_sound_35
	.word	.Lnbmn_bik_sound_36
	.word	.Lnbmn_bik_sound_37
	.word	.Lnbmn_bik_sound_38
	.word	.Lnbmn_bik_sound_39
	.word	.Lnbmn_bik_sound_40
	.word	.Lnbmn_bik_sound_41
	.word	.Lnbmn_bik_sound_42
	.word	.Lnbmn_bik_sound_43
.Lnbmn_bik_sound_35:
	mov	r0, #0x13
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_36:
	mov	r0, #0x14
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_37:
	mov	r0, #0x15
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_38:
	mov	r0, #0x16
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_39:
	mov	r0, #0x17
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_40:
	mov	r0, #0x18
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_41:
	mov	r0, #0x19
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_42:
	mov	r0, #0x1a
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_43:
	mov	r0, #0x1b
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_31:
	mov	r0, #0x1c
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_4:
	cmp	r1, #0x8
	bhi	.Lnbmn_bik_sound_54	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnbmn_bik_sound_56 @ .Lnbmn_bik_sound_55
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnbmn_bik_sound_57:
	.align	2, 0
.Lnbmn_bik_sound_56:
	.word	.Lnbmn_bik_sound_55
.Lnbmn_bik_sound_55:
	.word	.Lnbmn_bik_sound_58
	.word	.Lnbmn_bik_sound_59
	.word	.Lnbmn_bik_sound_60
	.word	.Lnbmn_bik_sound_61
	.word	.Lnbmn_bik_sound_62
	.word	.Lnbmn_bik_sound_63
	.word	.Lnbmn_bik_sound_64
	.word	.Lnbmn_bik_sound_65
	.word	.Lnbmn_bik_sound_66
.Lnbmn_bik_sound_58:
	mov	r0, #0x1d
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_59:
	mov	r0, #0x1e
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_60:
	mov	r0, #0x1f
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_61:
	mov	r0, #0x20
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_62:
	mov	r0, #0x21
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_63:
	mov	r0, #0x22
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_64:
	mov	r0, #0x23
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_65:
	mov	r0, #0x24
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_66:
	mov	r0, #0x25
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_54:
	mov	r0, #0x26
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_7:
	cmp	r1, #0x8
	bhi	.Lnbmn_bik_sound_77	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnbmn_bik_sound_79 @ .Lnbmn_bik_sound_78
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnbmn_bik_sound_80:
	.align	2, 0
.Lnbmn_bik_sound_79:
	.word	.Lnbmn_bik_sound_78
.Lnbmn_bik_sound_78:
	.word	.Lnbmn_bik_sound_81
	.word	.Lnbmn_bik_sound_82
	.word	.Lnbmn_bik_sound_83
	.word	.Lnbmn_bik_sound_84
	.word	.Lnbmn_bik_sound_85
	.word	.Lnbmn_bik_sound_86
	.word	.Lnbmn_bik_sound_87
	.word	.Lnbmn_bik_sound_88
	.word	.Lnbmn_bik_sound_89
.Lnbmn_bik_sound_81:
	mov	r0, #0x27
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_82:
	mov	r0, #0x28
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_83:
	mov	r0, #0x29
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_84:
	mov	r0, #0x2a
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_85:
	mov	r0, #0x2b
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_86:
	mov	r0, #0x2c
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_87:
	mov	r0, #0x2d
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_88:
	mov	r0, #0x2e
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_89:
	mov	r0, #0x2f
	bl	m4aSongNumStart
	b	.Lnbmn_bik_sound_98
.Lnbmn_bik_sound_77:
	mov	r0, #0x30
	bl	m4aSongNumStart
.Lnbmn_bik_sound_98:
	pop	{r0}
	bx	r0
	thumb_func_end nbmn_bik_sound
