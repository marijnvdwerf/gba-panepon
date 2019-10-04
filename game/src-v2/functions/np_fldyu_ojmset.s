	thumb_func_start np_fldyu_ojmset
np_fldyu_ojmset:
	push	{r4, lr}
	add	r4, r0, #0
	ldrb	r0, [r4]
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bhi	.Lnp_fldyu_ojmset_50	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_fldyu_ojmset_3 @ .Lnp_fldyu_ojmset_2
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_fldyu_ojmset_4:
	.align	2, 0
.Lnp_fldyu_ojmset_3:
	.word	.Lnp_fldyu_ojmset_2
.Lnp_fldyu_ojmset_2:
	.word	.Lnp_fldyu_ojmset_7
	.word	.Lnp_fldyu_ojmset_7
	.word	.Lnp_fldyu_ojmset_7
	.word	.Lnp_fldyu_ojmset_8
	.word	.Lnp_fldyu_ojmset_9
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_11
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_25
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_31
	.word	.Lnp_fldyu_ojmset_31
.Lnp_fldyu_ojmset_7:
	ldr	r0, .Lnp_fldyu_ojmset_33 @ np_Ojm31Yure_stt
	b	.Lnp_fldyu_ojmset_32
.Lnp_fldyu_ojmset_34:
	.align	2, 0
.Lnp_fldyu_ojmset_33:
	.word	np_Ojm31Yure_stt
.Lnp_fldyu_ojmset_8:
	ldr	r0, .Lnp_fldyu_ojmset_36 @ np_Ojm41Yure_stt
.Lnp_fldyu_ojmset_32:
	mov	r1, #0x12
	bl	np_fldyu_set
	b	.Lnp_fldyu_ojmset_47
.Lnp_fldyu_ojmset_37:
	.align	2, 0
.Lnp_fldyu_ojmset_36:
	.word	np_Ojm41Yure_stt
.Lnp_fldyu_ojmset_9:
	ldr	r0, .Lnp_fldyu_ojmset_39 @ np_Ojm51Yure_stt
	mov	r1, #0x18
	bl	np_fldyu_set
	b	.Lnp_fldyu_ojmset_47
.Lnp_fldyu_ojmset_40:
	.align	2, 0
.Lnp_fldyu_ojmset_39:
	.word	np_Ojm51Yure_stt
.Lnp_fldyu_ojmset_11:
	ldr	r0, .Lnp_fldyu_ojmset_42 @ np_Ojm62Yure_stt
	mov	r1, #0x42
	bl	np_fldyu_set
	b	.Lnp_fldyu_ojmset_47
.Lnp_fldyu_ojmset_43:
	.align	2, 0
.Lnp_fldyu_ojmset_42:
	.word	np_Ojm62Yure_stt
.Lnp_fldyu_ojmset_25:
	ldr	r0, .Lnp_fldyu_ojmset_45 @ np_Ojm63Yure_stt
	mov	r1, #0x4c
	bl	np_fldyu_set
	b	.Lnp_fldyu_ojmset_47
.Lnp_fldyu_ojmset_46:
	.align	2, 0
.Lnp_fldyu_ojmset_45:
	.word	np_Ojm63Yure_stt
.Lnp_fldyu_ojmset_31:
	ldr	r0, .Lnp_fldyu_ojmset_48 @ np_Ojm61Yure_stt
	mov	r1, #0x2a
	bl	np_fldyu_set
	b	.Lnp_fldyu_ojmset_47
.Lnp_fldyu_ojmset_49:
	.align	2, 0
.Lnp_fldyu_ojmset_48:
	.word	np_Ojm61Yure_stt
.Lnp_fldyu_ojmset_50:
	b	.Lnp_fldyu_ojmset_50
.Lnp_fldyu_ojmset_47:
	ldrb	r0, [r4]
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bhi	.Lnp_fldyu_ojmset_94	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_fldyu_ojmset_53 @ .Lnp_fldyu_ojmset_52
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_fldyu_ojmset_54:
	.align	2, 0
.Lnp_fldyu_ojmset_53:
	.word	.Lnp_fldyu_ojmset_52
.Lnp_fldyu_ojmset_52:
	.word	.Lnp_fldyu_ojmset_59
	.word	.Lnp_fldyu_ojmset_59
	.word	.Lnp_fldyu_ojmset_59
	.word	.Lnp_fldyu_ojmset_59
	.word	.Lnp_fldyu_ojmset_59
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_75
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_81
	.word	.Lnp_fldyu_ojmset_81
.Lnp_fldyu_ojmset_59:
	ldr	r0, .Lnp_fldyu_ojmset_85 @ NRam
	ldr	r1, .Lnp_fldyu_ojmset_85 + 4 @ 0xbbb
	add	r4, r0, r1
	ldrb	r0, [r4]
	cmp	r0, #0x2
	beq	.Lnp_fldyu_ojmset_91	@cond_branch
	cmp	r0, #0x3
	beq	.Lnp_fldyu_ojmset_91	@cond_branch
	mov	r0, #0x32
	bl	m4aSongNumStart
	mov	r0, #0x1
	strb	r0, [r4]
	b	.Lnp_fldyu_ojmset_91
.Lnp_fldyu_ojmset_86:
	.align	2, 0
.Lnp_fldyu_ojmset_85:
	.word	NRam
	.word	0xbbb
.Lnp_fldyu_ojmset_81:
	ldr	r0, .Lnp_fldyu_ojmset_89 @ NRam
	ldr	r1, .Lnp_fldyu_ojmset_89 + 4 @ 0xbbb
	add	r4, r0, r1
	ldrb	r0, [r4]
	cmp	r0, #0x3
	beq	.Lnp_fldyu_ojmset_91	@cond_branch
	mov	r0, #0x33
	bl	m4aSongNumStart
	mov	r0, #0x2
	strb	r0, [r4]
	b	.Lnp_fldyu_ojmset_91
.Lnp_fldyu_ojmset_90:
	.align	2, 0
.Lnp_fldyu_ojmset_89:
	.word	NRam
	.word	0xbbb
.Lnp_fldyu_ojmset_75:
	mov	r0, #0x34
	bl	m4aSongNumStart
	ldr	r0, .Lnp_fldyu_ojmset_92 @ NRam
	ldr	r1, .Lnp_fldyu_ojmset_92 + 4 @ 0xbbb
	add	r0, r0, r1
	mov	r1, #0x3
	strb	r1, [r0]
	b	.Lnp_fldyu_ojmset_91
.Lnp_fldyu_ojmset_93:
	.align	2, 0
.Lnp_fldyu_ojmset_92:
	.word	NRam
	.word	0xbbb
.Lnp_fldyu_ojmset_94:
	b	.Lnp_fldyu_ojmset_94
.Lnp_fldyu_ojmset_91:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_fldyu_ojmset
