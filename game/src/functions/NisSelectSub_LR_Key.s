	thumb_func_start NisSelectSub_LR_Key
NisSelectSub_LR_Key:
	push	{r4, r5, r6, lr}
	ldr	r2, .LNisSelectSub_LR_Key_25 @ SelRam
	ldrb	r6, [r2]
	add	r0, r2, #1
	add	r0, r6, r0
	ldrb	r4, [r0]
	add	r0, r2, #6
	add	r0, r6, r0
	ldrb	r0, [r0]
	add	r5, r4, r0
	sub	r0, r6, #1
	cmp	r0, #0x1
	bhi	.LNisSelectSub_LR_Key_6	@cond_branch
	cmp	r4, #0x1
	bne	.LNisSelectSub_LR_Key_6	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_4	@cond_branch
	add	r0, r2, #0
	add	r0, r0, #0xb
	add	r1, r6, r0
	ldrb	r2, [r1]
	mov	r0, #0x0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0
	ble	.LNisSelectSub_LR_Key_4	@cond_branch
	sub	r0, r2, #1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_4:
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_6	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_25 @ SelRam
	add	r1, r0, #0
	add	r1, r1, #0xb
	ldrb	r0, [r0]
	add	r1, r1, r0
	ldrb	r2, [r1]
	mov	r0, #0x0
	ldrsb	r0, [r1, r0]
	cmp	r0, #0x4
	bgt	.LNisSelectSub_LR_Key_6	@cond_branch
	add	r0, r2, #1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_6:
	cmp	r6, #0x1
	bne	.LNisSelectSub_LR_Key_12	@cond_branch
	cmp	r4, #0x2
	bne	.LNisSelectSub_LR_Key_12	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_10	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_25 + 8 @ ARam
	ldrb	r0, [r1, #0x7]
	cmp	r0, #0x1
	bls	.LNisSelectSub_LR_Key_10	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x7]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_10:
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_12	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_25 + 8 @ ARam
	ldrb	r0, [r1, #0x7]
	cmp	r0, #0x62
	bhi	.LNisSelectSub_LR_Key_12	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x7]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_12:
	cmp	r6, #0x2
	bne	.LNisSelectSub_LR_Key_18	@cond_branch
	cmp	r4, #0x2
	bne	.LNisSelectSub_LR_Key_18	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_16	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_25 + 8 @ ARam
	ldrb	r0, [r1, #0xa]
	cmp	r0, #0x1
	bls	.LNisSelectSub_LR_Key_16	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0xa]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_16:
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_18	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_25 + 8 @ ARam
	ldrb	r0, [r1, #0xa]
	cmp	r0, #0x62
	bhi	.LNisSelectSub_LR_Key_18	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0xa]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_18:
	cmp	r6, #0x3
	beq	.LNisSelectSub_LR_Key_19	@cond_branch
	b	.LNisSelectSub_LR_Key_143
.LNisSelectSub_LR_Key_19:
	ldr	r0, .LNisSelectSub_LR_Key_25 + 4 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_21	@cond_branch
	b	.LNisSelectSub_LR_Key_22
.LNisSelectSub_LR_Key_21:
	mov	r4, #0x1
	neg	r4, r4
.LNisSelectSub_LR_Key_144:
	cmp	r5, #0xc
	bls	.LNisSelectSub_LR_Key_23	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_23:
	lsl	r0, r5, #0x2
	ldr	r1, .LNisSelectSub_LR_Key_25 + 12 @ .LNisSelectSub_LR_Key_27
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LNisSelectSub_LR_Key_26:
	.align	2, 0
.LNisSelectSub_LR_Key_25:
	.word	SelRam
	.word	KeyRead_Rpt
	.word	ARam
	.word	.LNisSelectSub_LR_Key_27
.LNisSelectSub_LR_Key_27:
	.word	.LNisSelectSub_LR_Key_28
	.word	.LNisSelectSub_LR_Key_29
	.word	.LNisSelectSub_LR_Key_30
	.word	.LNisSelectSub_LR_Key_31
	.word	.LNisSelectSub_LR_Key_32
	.word	.LNisSelectSub_LR_Key_33
	.word	.LNisSelectSub_LR_Key_34
	.word	.LNisSelectSub_LR_Key_35
	.word	.LNisSelectSub_LR_Key_36
	.word	.LNisSelectSub_LR_Key_37
	.word	.LNisSelectSub_LR_Key_38
	.word	.LNisSelectSub_LR_Key_39
	.word	.LNisSelectSub_LR_Key_40
.LNisSelectSub_LR_Key_28:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_42	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_48 @ ARam
	ldrb	r0, [r1, #0x13]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_42	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x13]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_42:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_43	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_43:
	ldr	r1, .LNisSelectSub_LR_Key_48 @ ARam
	ldrb	r0, [r1, #0x13]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_45	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_45:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x13]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_49:
	.align	2, 0
.LNisSelectSub_LR_Key_48:
	.word	ARam
.LNisSelectSub_LR_Key_29:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_51	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_57 @ ARam
	ldrb	r0, [r1, #0x17]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_51	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x17]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_51:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_52	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_52:
	ldr	r1, .LNisSelectSub_LR_Key_57 @ ARam
	ldrb	r0, [r1, #0x17]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_54	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_54:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x17]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_58:
	.align	2, 0
.LNisSelectSub_LR_Key_57:
	.word	ARam
.LNisSelectSub_LR_Key_30:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_60	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_66 @ ARam
	ldrb	r0, [r1, #0x18]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_60	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x18]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_60:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_61	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_61:
	ldr	r1, .LNisSelectSub_LR_Key_66 @ ARam
	ldrb	r0, [r1, #0x18]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_63	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_63:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x18]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_67:
	.align	2, 0
.LNisSelectSub_LR_Key_66:
	.word	ARam
.LNisSelectSub_LR_Key_31:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_69	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_75 @ ARam
	ldrb	r0, [r1, #0x1f]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_69	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1f]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_69:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_70	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_70:
	ldr	r1, .LNisSelectSub_LR_Key_75 @ ARam
	ldrb	r0, [r1, #0x1f]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_72	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_72:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1f]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_76:
	.align	2, 0
.LNisSelectSub_LR_Key_75:
	.word	ARam
.LNisSelectSub_LR_Key_32:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_78	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_82 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x21
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_78	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_78:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_79	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_79:
	ldr	r0, .LNisSelectSub_LR_Key_82 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x21
	b	.LNisSelectSub_LR_Key_126
.LNisSelectSub_LR_Key_83:
	.align	2, 0
.LNisSelectSub_LR_Key_82:
	.word	ARam
.LNisSelectSub_LR_Key_33:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_85	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_89 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x20
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_85	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_85:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_86	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_86:
	ldr	r0, .LNisSelectSub_LR_Key_89 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x20
	b	.LNisSelectSub_LR_Key_126
.LNisSelectSub_LR_Key_90:
	.align	2, 0
.LNisSelectSub_LR_Key_89:
	.word	ARam
.LNisSelectSub_LR_Key_34:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_92	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_98 @ ARam
	ldrb	r0, [r1, #0x1e]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_92	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1e]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_92:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_93	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_93:
	ldr	r1, .LNisSelectSub_LR_Key_98 @ ARam
	ldrb	r0, [r1, #0x1e]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_95	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_95:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1e]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_99:
	.align	2, 0
.LNisSelectSub_LR_Key_98:
	.word	ARam
.LNisSelectSub_LR_Key_35:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_101	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_107 @ ARam
	ldrb	r0, [r1, #0x1c]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_101	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1c]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_101:
	cmp	r4, #0
	blt	.LNisSelectSub_LR_Key_102	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_102:
	ldr	r1, .LNisSelectSub_LR_Key_107 @ ARam
	ldrb	r0, [r1, #0x1c]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_104	@cond_branch
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_104:
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1c]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_108:
	.align	2, 0
.LNisSelectSub_LR_Key_107:
	.word	ARam
.LNisSelectSub_LR_Key_36:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_110	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_114 @ ARam
	ldrb	r0, [r1, #0x1d]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_110	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x1d]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_110:
	cmp	r4, #0
	bge	.LNisSelectSub_LR_Key_139	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_114 @ ARam
	ldrb	r0, [r1, #0x1d]
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_139	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x1d]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_115:
	.align	2, 0
.LNisSelectSub_LR_Key_114:
	.word	ARam
.LNisSelectSub_LR_Key_37:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_117	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_121 @ ARam
	ldrb	r0, [r1, #0x19]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_117	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1, #0x19]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_117:
	cmp	r4, #0
	bge	.LNisSelectSub_LR_Key_139	@cond_branch
	ldr	r1, .LNisSelectSub_LR_Key_121 @ ARam
	ldrb	r0, [r1, #0x19]
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_139	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x19]
	b	.LNisSelectSub_LR_Key_120
.LNisSelectSub_LR_Key_122:
	.align	2, 0
.LNisSelectSub_LR_Key_121:
	.word	ARam
.LNisSelectSub_LR_Key_38:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_124	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_127 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x22
	ldrb	r0, [r1]
	cmp	r0, #0x17
	bhi	.LNisSelectSub_LR_Key_124	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_124:
	cmp	r4, #0
	bge	.LNisSelectSub_LR_Key_139	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_127 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x22
	b	.LNisSelectSub_LR_Key_126
.LNisSelectSub_LR_Key_128:
	.align	2, 0
.LNisSelectSub_LR_Key_127:
	.word	ARam
.LNisSelectSub_LR_Key_39:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_130	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_134 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x23
	ldrb	r0, [r1]
	cmp	r0, #0xf
	bhi	.LNisSelectSub_LR_Key_130	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_130:
	cmp	r4, #0
	bge	.LNisSelectSub_LR_Key_139	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_134 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x23
.LNisSelectSub_LR_Key_126:
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_139	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
.LNisSelectSub_LR_Key_120:
	mov	r0, #0x2
	bl	m4aSongNumStart
	b	.LNisSelectSub_LR_Key_139
.LNisSelectSub_LR_Key_135:
	.align	2, 0
.LNisSelectSub_LR_Key_134:
	.word	ARam
.LNisSelectSub_LR_Key_40:
	cmp	r4, #0
	ble	.LNisSelectSub_LR_Key_137	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_141 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x24
	ldrb	r0, [r1]
	cmp	r0, #0
	bne	.LNisSelectSub_LR_Key_137	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_137:
	cmp	r4, #0
	bge	.LNisSelectSub_LR_Key_139	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_141 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x24
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_139	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_139:
	bl	NisOptSave_Write
	b	.LNisSelectSub_LR_Key_143
.LNisSelectSub_LR_Key_142:
	.align	2, 0
.LNisSelectSub_LR_Key_141:
	.word	ARam
.LNisSelectSub_LR_Key_22:
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_143	@cond_branch
	mov	r4, #0x1
	b	.LNisSelectSub_LR_Key_144
.LNisSelectSub_LR_Key_143:
	cmp	r6, #0x4
	bne	.LNisSelectSub_LR_Key_149	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_150 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_147	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_150 + 4 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x25
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_147	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_147:
	ldr	r0, .LNisSelectSub_LR_Key_150 @ KeyRead_Rpt
	ldrh	r1, [r0]
	mov	r0, #0x10
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LNisSelectSub_LR_Key_149	@cond_branch
	ldr	r0, .LNisSelectSub_LR_Key_150 + 4 @ ARam
	add	r1, r0, #0
	add	r1, r1, #0x25
	ldrb	r0, [r1]
	cmp	r0, #0x21
	bhi	.LNisSelectSub_LR_Key_149	@cond_branch
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSelectSub_LR_Key_149:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.LNisSelectSub_LR_Key_151:
	.align	2, 0
.LNisSelectSub_LR_Key_150:
	.word	KeyRead_Rpt
	.word	ARam
	thumb_func_end NisSelectSub_LR_Key
