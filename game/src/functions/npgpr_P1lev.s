	thumb_func_start npgpr_P1lev
npgpr_P1lev:
	push	{lr}
	ldr	r1, .Lnpgpr_P1lev_2 @ ARam
	ldrb	r2, [r1, #0x2]
	add	r3, r1, #0
	cmp	r2, #0x9
	bhi	.Lnpgpr_P1lev_26	@cond_branch
	lsl	r0, r2, #0x2
	ldr	r1, .Lnpgpr_P1lev_2 + 4 @ .Lnpgpr_P1lev_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_P1lev_3:
	.align	2, 0
.Lnpgpr_P1lev_2:
	.word	ARam
	.word	.Lnpgpr_P1lev_4
.Lnpgpr_P1lev_4:
	.word	.Lnpgpr_P1lev_14
	.word	.Lnpgpr_P1lev_14
	.word	.Lnpgpr_P1lev_8
	.word	.Lnpgpr_P1lev_8
	.word	.Lnpgpr_P1lev_14
	.word	.Lnpgpr_P1lev_14
	.word	.Lnpgpr_P1lev_13
	.word	.Lnpgpr_P1lev_13
	.word	.Lnpgpr_P1lev_13
	.word	.Lnpgpr_P1lev_14
.Lnpgpr_P1lev_8:
	mov	r0, #0x0
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_13:
	ldrb	r0, [r3, #0x8]
	cmp	r0, #0
	ble	.Lnpgpr_P1lev_16	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnpgpr_P1lev_17
.Lnpgpr_P1lev_16:
	mov	r0, #0x0
.Lnpgpr_P1lev_17:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_14:
	bl	npgpr_lvlconv
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	lsr	r1, r1, #0x18
	cmp	r1, #0x1
	beq	.Lnpgpr_P1lev_19	@cond_branch
	cmp	r1, #0x1
	bgt	.Lnpgpr_P1lev_20	@cond_branch
	cmp	r1, #0
	beq	.Lnpgpr_P1lev_21	@cond_branch
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_20:
	cmp	r1, #0x2
	beq	.Lnpgpr_P1lev_23	@cond_branch
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_21:
	mov	r0, #0x1
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_19:
	mov	r0, #0x3
	b	.Lnpgpr_P1lev_26
.Lnpgpr_P1lev_23:
	mov	r0, #0x5
.Lnpgpr_P1lev_26:
	pop	{r1}
	bx	r1
	thumb_func_end npgpr_P1lev
