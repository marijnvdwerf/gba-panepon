	thumb_func_start npgmov_tagncsr
npgmov_tagncsr:
	push	{lr}
	ldr	r0, .Lnpgmov_tagncsr_3 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	bne	.Lnpgmov_tagncsr_1	@cond_branch
	mov	r0, #0x0
	mov	r1, #0x0
	bl	np_fuwafuwa_20
	add	r1, r0, #0
	b	.Lnpgmov_tagncsr_2
.Lnpgmov_tagncsr_4:
	.align	2, 0
.Lnpgmov_tagncsr_3:
	.word	NRam
.Lnpgmov_tagncsr_1:
	ldr	r0, .Lnpgmov_tagncsr_6 @ NmiInc
	ldr	r0, [r0]
	lsr	r0, r0, #0x1
	mov	r1, #0x1
	and	r0, r0, r1
	lsl	r0, r0, #0x1
	sub	r1, r1, r0
.Lnpgmov_tagncsr_2:
	ldr	r0, .Lnpgmov_tagncsr_6 + 4 @ ARam
	add	r0, r0, #0x2b
	ldrb	r0, [r0]
	mov	r3, #0x8a
	cmp	r0, #0
	bne	.Lnpgmov_tagncsr_5	@cond_branch
	mov	r3, #0x62
.Lnpgmov_tagncsr_5:
	add	r1, r1, #0x7c
	ldr	r2, .Lnpgmov_tagncsr_6 + 8 @ Aob_Panel_TryAgain_03
	add	r0, r3, #0
	bl	NisCtc_PutCtc
	pop	{r0}
	bx	r0
.Lnpgmov_tagncsr_7:
	.align	2, 0
.Lnpgmov_tagncsr_6:
	.word	NmiInc
	.word	ARam
	.word	Aob_Panel_TryAgain_03
	thumb_func_end npgmov_tagncsr
