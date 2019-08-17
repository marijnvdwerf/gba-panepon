	thumb_func_start npgmov_tagnagn
npgmov_tagnagn:
	push	{lr}
	ldr	r0, .Lnpgmov_tagnagn_3 @ NRam
	ldrb	r0, [r0, #0xc]
	cmp	r0, #0
	bne	.Lnpgmov_tagnagn_1	@cond_branch
	mov	r0, #0x4
	mov	r1, #0x0
	bl	np_fuwafuwa_10
	b	.Lnpgmov_tagnagn_2
.Lnpgmov_tagnagn_4:
	.align	2, 0
.Lnpgmov_tagnagn_3:
	.word	NRam
.Lnpgmov_tagnagn_1:
	mov	r0, #0x1
	mov	r1, #0x0
	bl	np_fuwafuwa_10
.Lnpgmov_tagnagn_2:
	add	r1, r0, #0
	add	r1, r1, #0x64
	ldr	r2, .Lnpgmov_tagnagn_5 @ Aob_Panel_TryAgain_00
	mov	r0, #0x66
	bl	NisCtc_PutCtc
	pop	{r0}
	bx	r0
.Lnpgmov_tagnagn_6:
	.align	2, 0
.Lnpgmov_tagnagn_5:
	.word	Aob_Panel_TryAgain_00
	thumb_func_end npgmov_tagnagn
