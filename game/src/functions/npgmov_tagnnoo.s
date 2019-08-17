	thumb_func_start npgmov_tagnnoo
npgmov_tagnnoo:
	push	{lr}
	mov	r2, #0x0
	ldr	r0, .Lnpgmov_tagnnoo_4 @ ARam
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnpgmov_tagnnoo_3	@cond_branch
	ldr	r0, .Lnpgmov_tagnnoo_4 + 4 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	bne	.Lnpgmov_tagnnoo_2	@cond_branch
	mov	r0, #0x0
	mov	r1, #0x0
	bl	np_fuwafuwa_20
	add	r2, r0, #0
	b	.Lnpgmov_tagnnoo_3
.Lnpgmov_tagnnoo_5:
	.align	2, 0
.Lnpgmov_tagnnoo_4:
	.word	ARam
	.word	NRam
.Lnpgmov_tagnnoo_2:
	ldr	r0, .Lnpgmov_tagnnoo_9 @ NmiInc
	ldr	r0, [r0]
	lsr	r0, r0, #0x1
	mov	r1, #0x1
	and	r0, r0, r1
	lsl	r0, r0, #0x1
	sub	r2, r1, r0
.Lnpgmov_tagnnoo_3:
	ldr	r0, .Lnpgmov_tagnnoo_9 + 4 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	beq	.Lnpgmov_tagnnoo_7	@cond_branch
	ldr	r0, .Lnpgmov_tagnnoo_9 + 8 @ ARam
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnpgmov_tagnnoo_7	@cond_branch
	ldr	r0, .Lnpgmov_tagnnoo_9 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnpgmov_tagnnoo_8	@cond_branch
.Lnpgmov_tagnnoo_7:
	add	r1, r2, #0
	add	r1, r1, #0x7c
	ldr	r2, .Lnpgmov_tagnnoo_9 + 12 @ Aob_Panel_TryAgain_02
	mov	r0, #0x8e
	bl	NisCtc_PutCtc
.Lnpgmov_tagnnoo_8:
	pop	{r0}
	bx	r0
.Lnpgmov_tagnnoo_10:
	.align	2, 0
.Lnpgmov_tagnnoo_9:
	.word	NmiInc
	.word	NRam
	.word	ARam
	.word	Aob_Panel_TryAgain_02
	thumb_func_end npgmov_tagnnoo
