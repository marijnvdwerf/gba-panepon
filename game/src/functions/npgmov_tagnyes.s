	thumb_func_start npgmov_tagnyes
npgmov_tagnyes:
	push	{lr}
	mov	r2, #0x0
	ldr	r0, .Lnpgmov_tagnyes_4 @ ARam
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnpgmov_tagnyes_3	@cond_branch
	ldr	r0, .Lnpgmov_tagnyes_4 + 4 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	bne	.Lnpgmov_tagnyes_2	@cond_branch
	mov	r0, #0x0
	mov	r1, #0x0
	bl	np_fuwafuwa_20
	add	r2, r0, #0
	b	.Lnpgmov_tagnyes_3
.Lnpgmov_tagnyes_5:
	.align	2, 0
.Lnpgmov_tagnyes_4:
	.word	ARam
	.word	NRam
.Lnpgmov_tagnyes_2:
	ldr	r0, .Lnpgmov_tagnyes_9 @ NmiInc
	ldr	r0, [r0]
	lsr	r0, r0, #0x1
	mov	r1, #0x1
	and	r0, r0, r1
	lsl	r0, r0, #0x1
	sub	r2, r1, r0
.Lnpgmov_tagnyes_3:
	ldr	r0, .Lnpgmov_tagnyes_9 + 4 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	beq	.Lnpgmov_tagnyes_7	@cond_branch
	ldr	r0, .Lnpgmov_tagnyes_9 + 8 @ ARam
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnpgmov_tagnyes_7	@cond_branch
	ldr	r0, .Lnpgmov_tagnyes_9 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnpgmov_tagnyes_8	@cond_branch
.Lnpgmov_tagnyes_7:
	add	r1, r2, #0
	add	r1, r1, #0x7c
	ldr	r2, .Lnpgmov_tagnyes_9 + 12 @ Aob_Panel_TryAgain_01
	mov	r0, #0x66
	bl	NisCtc_PutCtc
.Lnpgmov_tagnyes_8:
	pop	{r0}
	bx	r0
.Lnpgmov_tagnyes_10:
	.align	2, 0
.Lnpgmov_tagnyes_9:
	.word	NmiInc
	.word	NRam
	.word	ARam
	.word	Aob_Panel_TryAgain_01
	thumb_func_end npgmov_tagnyes
