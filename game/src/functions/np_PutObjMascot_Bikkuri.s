	thumb_func_start np_PutObjMascot_Bikkuri
np_PutObjMascot_Bikkuri:
	push	{r4, lr}
	add	r2, r1, #0
	mov	r3, #0x0
	mov	r4, #0x0
	cmp	r0, #0x5
	bhi	.Lnp_PutObjMascot_Bikkuri_1	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_3 @ .Lnp_PutObjMascot_Bikkuri_2
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_PutObjMascot_Bikkuri_4:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_3:
	.word	.Lnp_PutObjMascot_Bikkuri_2
.Lnp_PutObjMascot_Bikkuri_2:
	.word	.Lnp_PutObjMascot_Bikkuri_14
	.word	.Lnp_PutObjMascot_Bikkuri_14
	.word	.Lnp_PutObjMascot_Bikkuri_7
	.word	.Lnp_PutObjMascot_Bikkuri_8
	.word	.Lnp_PutObjMascot_Bikkuri_9
	.word	.Lnp_PutObjMascot_Bikkuri_10
.Lnp_PutObjMascot_Bikkuri_7:
	mov	r3, #0x2
	b	.Lnp_PutObjMascot_Bikkuri_14
.Lnp_PutObjMascot_Bikkuri_8:
	mov	r3, #0x3
	b	.Lnp_PutObjMascot_Bikkuri_14
.Lnp_PutObjMascot_Bikkuri_9:
	mov	r3, #0x4
	b	.Lnp_PutObjMascot_Bikkuri_14
.Lnp_PutObjMascot_Bikkuri_10:
	mov	r3, #0x5
	b	.Lnp_PutObjMascot_Bikkuri_14
.Lnp_PutObjMascot_Bikkuri_1:
	mov	r3, #0x6
.Lnp_PutObjMascot_Bikkuri_14:
	sub	r0, r2, #4
	cmp	r0, #0x2
	bhi	.Lnp_PutObjMascot_Bikkuri_15	@cond_branch
	mov	r4, #0x2
	b	.Lnp_PutObjMascot_Bikkuri_23
.Lnp_PutObjMascot_Bikkuri_15:
	sub	r0, r2, #7
	cmp	r0, #0x3
	bhi	.Lnp_PutObjMascot_Bikkuri_17	@cond_branch
	mov	r4, #0x3
	b	.Lnp_PutObjMascot_Bikkuri_23
.Lnp_PutObjMascot_Bikkuri_17:
	add	r0, r2, #0
	sub	r0, r0, #0xb
	cmp	r0, #0x4
	bhi	.Lnp_PutObjMascot_Bikkuri_19	@cond_branch
	mov	r4, #0x4
	b	.Lnp_PutObjMascot_Bikkuri_23
.Lnp_PutObjMascot_Bikkuri_19:
	add	r0, r2, #0
	sub	r0, r0, #0x10
	cmp	r0, #0xd
	bhi	.Lnp_PutObjMascot_Bikkuri_21	@cond_branch
	mov	r4, #0x5
	b	.Lnp_PutObjMascot_Bikkuri_23
.Lnp_PutObjMascot_Bikkuri_21:
	cmp	r2, #0x1d
	ble	.Lnp_PutObjMascot_Bikkuri_23	@cond_branch
	mov	r4, #0x6
.Lnp_PutObjMascot_Bikkuri_23:
	add	r0, r4, #0
	cmp	r3, r0
	blt	.Lnp_PutObjMascot_Bikkuri_24	@cond_branch
	add	r0, r3, #0
.Lnp_PutObjMascot_Bikkuri_24:
	cmp	r0, #0x5
	bhi	.Lnp_PutObjMascot_Bikkuri_25	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_27 @ .Lnp_PutObjMascot_Bikkuri_26
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_PutObjMascot_Bikkuri_28:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_27:
	.word	.Lnp_PutObjMascot_Bikkuri_26
.Lnp_PutObjMascot_Bikkuri_26:
	.word	.Lnp_PutObjMascot_Bikkuri_44
	.word	.Lnp_PutObjMascot_Bikkuri_44
	.word	.Lnp_PutObjMascot_Bikkuri_31
	.word	.Lnp_PutObjMascot_Bikkuri_32
	.word	.Lnp_PutObjMascot_Bikkuri_33
	.word	.Lnp_PutObjMascot_Bikkuri_34
.Lnp_PutObjMascot_Bikkuri_31:
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_Bikkuri_36 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_36 + 4 @ Aob_Pupuri_Parts_Ani02
	bl	AnisDrvStart1
	b	.Lnp_PutObjMascot_Bikkuri_44
.Lnp_PutObjMascot_Bikkuri_37:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_36:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani02
.Lnp_PutObjMascot_Bikkuri_32:
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_Bikkuri_39 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_39 + 4 @ Aob_Pupuri_Parts_Ani03
	bl	AnisDrvStart1
	b	.Lnp_PutObjMascot_Bikkuri_44
.Lnp_PutObjMascot_Bikkuri_40:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_39:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani03
.Lnp_PutObjMascot_Bikkuri_33:
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_Bikkuri_42 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_42 + 4 @ Aob_Pupuri_Parts_Ani04
	bl	AnisDrvStart1
	b	.Lnp_PutObjMascot_Bikkuri_44
.Lnp_PutObjMascot_Bikkuri_43:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_42:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani04
.Lnp_PutObjMascot_Bikkuri_34:
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_Bikkuri_45 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_45 + 4 @ Aob_Pupuri_Parts_Ani05
	bl	AnisDrvStart1
	b	.Lnp_PutObjMascot_Bikkuri_44
.Lnp_PutObjMascot_Bikkuri_46:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_45:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani05
.Lnp_PutObjMascot_Bikkuri_25:
	mov	r0, #0x0
	bl	AS_Mascot_head_stp
	ldr	r0, .Lnp_PutObjMascot_Bikkuri_47 @ ARam+0x3c
	ldr	r1, .Lnp_PutObjMascot_Bikkuri_47 + 4 @ Aob_Pupuri_Parts_Ani06
	bl	AnisDrvStart1
.Lnp_PutObjMascot_Bikkuri_44:
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_PutObjMascot_Bikkuri_48:
	.align	2, 0
.Lnp_PutObjMascot_Bikkuri_47:
	.word	ARam+0x3c
	.word	Aob_Pupuri_Parts_Ani06
	thumb_func_end np_PutObjMascot_Bikkuri
