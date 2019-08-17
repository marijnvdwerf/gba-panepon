	thumb_func_start NisSelectSub_ScrWrite
NisSelectSub_ScrWrite:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #0xfffffffc
	ldr	r1, .LNisSelectSub_ScrWrite_7 @ SelRam
	ldrb	r5, [r1]
	add	r0, r1, #1
	add	r0, r5, r0
	ldrb	r7, [r0]
	add	r0, r1, #0
	add	r0, r0, #0xb
	add	r0, r5, r0
	mov	r3, #0x0
	ldrsb	r3, [r0, r3]
	add	r1, r1, #0x6
	add	r1, r5, r1
	ldrb	r1, [r1]
	mov	r8, r1
	sub	r0, r5, #1
	cmp	r0, #0x1
	bhi	.LNisSelectSub_ScrWrite_1	@cond_branch
	ldr	r0, .LNisSelectSub_ScrWrite_7 + 4 @ 0x600d290
	ldr	r2, .LNisSelectSub_ScrWrite_7 + 8 @ np_Msg_GameLevel_Table
	lsl	r1, r3, #0x2
	add	r1, r1, r2
	ldr	r2, [r1]
	mov	r1, #0x2
	bl	MDCPC_print
.LNisSelectSub_ScrWrite_1:
	cmp	r5, #0x1
	bne	.LNisSelectSub_ScrWrite_2	@cond_branch
	ldr	r0, .LNisSelectSub_ScrWrite_7 + 12 @ Asc_KAZU_v2_gm_logo
	ldr	r1, .LNisSelectSub_ScrWrite_7 + 16 @ 0x600d318
	ldr	r2, .LNisSelectSub_ScrWrite_7 + 20 @ 0xffff
	ldr	r3, .LNisSelectSub_ScrWrite_7 + 24 @ ARam
	ldrb	r3, [r3, #0x7]
	str	r3, [sp]
	mov	r3, #0x2
	bl	PutBgDex
.LNisSelectSub_ScrWrite_2:
	cmp	r5, #0x2
	bne	.LNisSelectSub_ScrWrite_3	@cond_branch
	ldr	r0, .LNisSelectSub_ScrWrite_7 + 12 @ Asc_KAZU_v2_gm_logo
	ldr	r1, .LNisSelectSub_ScrWrite_7 + 16 @ 0x600d318
	ldr	r2, .LNisSelectSub_ScrWrite_7 + 20 @ 0xffff
	ldr	r3, .LNisSelectSub_ScrWrite_7 + 24 @ ARam
	ldrb	r3, [r3, #0xa]
	str	r3, [sp]
	mov	r3, #0x2
	bl	PutBgDex
.LNisSelectSub_ScrWrite_3:
	cmp	r5, #0x1
	bne	.LNisSelectSub_ScrWrite_18	@cond_branch
	cmp	r7, #0x1
	bne	.LNisSelectSub_ScrWrite_5	@cond_branch
	mov	r2, #0xf
	mov	r1, #0x8
	b	.LNisSelectSub_ScrWrite_6
.LNisSelectSub_ScrWrite_8:
	.align	2, 0
.LNisSelectSub_ScrWrite_7:
	.word	SelRam
	.word	0x600d290
	.word	np_Msg_GameLevel_Table
	.word	Asc_KAZU_v2_gm_logo
	.word	0x600d318
	.word	0xffff
	.word	ARam
.LNisSelectSub_ScrWrite_5:
	mov	r2, #0x7f
	mov	r1, #0x40
.LNisSelectSub_ScrWrite_6:
	ldr	r0, .LNisSelectSub_ScrWrite_14 @ NmiInc
	ldr	r0, [r0]
	and	r0, r0, r2
	cmp	r0, r1
	bcs	.LNisSelectSub_ScrWrite_11	@cond_branch
	ldr	r4, .LNisSelectSub_ScrWrite_14 + 4 @ SelRam
	ldrb	r0, [r4]
	add	r6, r4, #0
	add	r6, r6, #0xb
	add	r0, r0, r6
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0
	ble	.LNisSelectSub_ScrWrite_10	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_14 + 8 @ Aob_Panel_Select_03
	mov	r0, #0x38
	mov	r1, #0x50
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_10:
	ldrb	r0, [r4]
	add	r0, r0, r6
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0x4
	bgt	.LNisSelectSub_ScrWrite_11	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_14 + 12 @ Aob_Panel_Select_04
	mov	r0, #0x70
	mov	r1, #0x50
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_11:
	cmp	r7, #0x2
	bne	.LNisSelectSub_ScrWrite_12	@cond_branch
	mov	r2, #0xf
	mov	r1, #0x8
	b	.LNisSelectSub_ScrWrite_13
.LNisSelectSub_ScrWrite_15:
	.align	2, 0
.LNisSelectSub_ScrWrite_14:
	.word	NmiInc
	.word	SelRam
	.word	Aob_Panel_Select_03
	.word	Aob_Panel_Select_04
.LNisSelectSub_ScrWrite_12:
	mov	r2, #0x7f
	mov	r1, #0x40
.LNisSelectSub_ScrWrite_13:
	ldr	r0, .LNisSelectSub_ScrWrite_22 @ NmiInc
	ldr	r0, [r0]
	and	r0, r0, r2
	cmp	r0, r1
	bcs	.LNisSelectSub_ScrWrite_18	@cond_branch
	ldr	r4, .LNisSelectSub_ScrWrite_22 + 4 @ ARam
	ldrb	r0, [r4, #0x7]
	cmp	r0, #0x1
	bls	.LNisSelectSub_ScrWrite_17	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_22 + 8 @ Aob_Panel_Select_03
	mov	r0, #0x58
	mov	r1, #0x60
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_17:
	ldrb	r0, [r4, #0x7]
	cmp	r0, #0x62
	bhi	.LNisSelectSub_ScrWrite_18	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_22 + 12 @ Aob_Panel_Select_04
	mov	r0, #0x70
	mov	r1, #0x60
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_18:
	cmp	r5, #0x2
	bne	.LNisSelectSub_ScrWrite_33	@cond_branch
	cmp	r7, #0x1
	bne	.LNisSelectSub_ScrWrite_20	@cond_branch
	mov	r2, #0xf
	mov	r1, #0x8
	b	.LNisSelectSub_ScrWrite_21
.LNisSelectSub_ScrWrite_23:
	.align	2, 0
.LNisSelectSub_ScrWrite_22:
	.word	NmiInc
	.word	ARam
	.word	Aob_Panel_Select_03
	.word	Aob_Panel_Select_04
.LNisSelectSub_ScrWrite_20:
	mov	r2, #0x7f
	mov	r1, #0x40
.LNisSelectSub_ScrWrite_21:
	ldr	r0, .LNisSelectSub_ScrWrite_29 @ NmiInc
	ldr	r0, [r0]
	and	r0, r0, r2
	cmp	r0, r1
	bcs	.LNisSelectSub_ScrWrite_26	@cond_branch
	ldr	r4, .LNisSelectSub_ScrWrite_29 + 4 @ SelRam
	ldrb	r0, [r4]
	add	r6, r4, #0
	add	r6, r6, #0xb
	add	r0, r0, r6
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0
	ble	.LNisSelectSub_ScrWrite_25	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_29 + 8 @ Aob_Panel_Select_03
	mov	r0, #0x38
	mov	r1, #0x50
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_25:
	ldrb	r0, [r4]
	add	r0, r0, r6
	ldrb	r0, [r0]
	lsl	r0, r0, #0x18
	asr	r0, r0, #0x18
	cmp	r0, #0x4
	bgt	.LNisSelectSub_ScrWrite_26	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_29 + 12 @ Aob_Panel_Select_04
	mov	r0, #0x70
	mov	r1, #0x50
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_26:
	cmp	r7, #0x2
	bne	.LNisSelectSub_ScrWrite_27	@cond_branch
	mov	r2, #0xf
	mov	r1, #0x8
	b	.LNisSelectSub_ScrWrite_28
.LNisSelectSub_ScrWrite_30:
	.align	2, 0
.LNisSelectSub_ScrWrite_29:
	.word	NmiInc
	.word	SelRam
	.word	Aob_Panel_Select_03
	.word	Aob_Panel_Select_04
.LNisSelectSub_ScrWrite_27:
	mov	r2, #0x7f
	mov	r1, #0x40
.LNisSelectSub_ScrWrite_28:
	ldr	r0, .LNisSelectSub_ScrWrite_38 @ NmiInc
	ldr	r0, [r0]
	and	r0, r0, r2
	cmp	r0, r1
	bcs	.LNisSelectSub_ScrWrite_33	@cond_branch
	ldr	r4, .LNisSelectSub_ScrWrite_38 + 4 @ ARam
	ldrb	r0, [r4, #0xa]
	cmp	r0, #0x1
	bls	.LNisSelectSub_ScrWrite_32	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_38 + 8 @ Aob_Panel_Select_03
	mov	r0, #0x58
	mov	r1, #0x60
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_32:
	ldrb	r0, [r4, #0xa]
	cmp	r0, #0x62
	bhi	.LNisSelectSub_ScrWrite_33	@cond_branch
	ldr	r2, .LNisSelectSub_ScrWrite_38 + 12 @ Aob_Panel_Select_04
	mov	r0, #0x70
	mov	r1, #0x60
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_33:
	cmp	r5, #0x3
	bne	.LNisSelectSub_ScrWrite_36	@cond_branch
	bl	NisOptionSelectSub_Screen
	ldr	r0, .LNisSelectSub_ScrWrite_38 @ NmiInc
	ldr	r0, [r0]
	lsr	r0, r0, #0x2
	mov	r1, #0x3
	bl	__umodsi3
	neg	r4, r0
	mov	r0, r8
	cmp	r0, #0
	beq	.LNisSelectSub_ScrWrite_35	@cond_branch
	add	r1, r4, #0
	add	r1, r1, #0x30
	ldr	r2, .LNisSelectSub_ScrWrite_38 + 16 @ Aob_Panel_TryAgain_04
	mov	r0, #0x3c
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_35:
	mov	r0, r8
	cmp	r0, #0x9
	beq	.LNisSelectSub_ScrWrite_36	@cond_branch
	mov	r1, #0x80
	sub	r1, r1, r4
	ldr	r2, .LNisSelectSub_ScrWrite_38 + 20 @ Aob_Panel_TryAgain_05
	mov	r0, #0x3c
	bl	NisCtc_PutCtc
.LNisSelectSub_ScrWrite_36:
	cmp	r5, #0x4
	bne	.LNisSelectSub_ScrWrite_37	@cond_branch
	ldr	r0, .LNisSelectSub_ScrWrite_38 + 24 @ 0x600d1c4
	ldr	r3, .LNisSelectSub_ScrWrite_38 + 28 @ npgmstpnldem_tbl
	ldr	r1, .LNisSelectSub_ScrWrite_38 + 4 @ ARam
	add	r1, r1, #0x25
	ldrb	r2, [r1]
	lsl	r1, r2, #0x1
	add	r1, r1, r2
	lsl	r1, r1, #0x2
	add	r3, r3, #0x8
	add	r1, r1, r3
	ldr	r2, [r1]
	mov	r1, #0x2
	bl	MDCPC_print
.LNisSelectSub_ScrWrite_37:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisSelectSub_ScrWrite_39:
	.align	2, 0
.LNisSelectSub_ScrWrite_38:
	.word	NmiInc
	.word	ARam
	.word	Aob_Panel_Select_03
	.word	Aob_Panel_Select_04
	.word	Aob_Panel_TryAgain_04
	.word	Aob_Panel_TryAgain_05
	.word	0x600d1c4
	.word	npgmstpnldem_tbl
	thumb_func_end NisSelectSub_ScrWrite
