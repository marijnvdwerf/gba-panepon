	thumb_func_start npgpr_stgclr_rnd
npgpr_stgclr_rnd:
	ldr	r1, .Lnpgpr_stgclr_rnd_4 @ ARam
	ldrb	r0, [r1, #0xd]
	cmp	r0, #0
	bne	.Lnpgpr_stgclr_rnd_1	@cond_branch
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	ble	.Lnpgpr_stgclr_rnd_2	@cond_branch
	sub	r0, r0, #0x1
	b	.Lnpgpr_stgclr_rnd_3
.Lnpgpr_stgclr_rnd_5:
	.align	2, 0
.Lnpgpr_stgclr_rnd_4:
	.word	ARam
.Lnpgpr_stgclr_rnd_2:
	mov	r0, #0x0
.Lnpgpr_stgclr_rnd_3:
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	b	.Lnpgpr_stgclr_rnd_6
.Lnpgpr_stgclr_rnd_1:
	mov	r0, #0x6
.Lnpgpr_stgclr_rnd_6:
	bx	lr
	thumb_func_end npgpr_stgclr_rnd
