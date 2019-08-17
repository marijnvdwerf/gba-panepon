	thumb_func_start npgpr_lvlconv
npgpr_lvlconv:
	ldr	r2, .Lnpgpr_lvlconv_3 @ ARam
	ldrb	r1, [r2, #0x2]
	cmp	r1, #0x3
	bne	.Lnpgpr_lvlconv_1	@cond_branch
.Lnpgpr_lvlconv_9:
	mov	r0, #0x0
	b	.Lnpgpr_lvlconv_16
.Lnpgpr_lvlconv_4:
	.align	2, 0
.Lnpgpr_lvlconv_3:
	.word	ARam
.Lnpgpr_lvlconv_1:
	ldrb	r1, [r2, #0x6]
	cmp	r1, #0x5
	bhi	.Lnpgpr_lvlconv_16	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnpgpr_lvlconv_7 @ .Lnpgpr_lvlconv_6
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_lvlconv_8:
	.align	2, 0
.Lnpgpr_lvlconv_7:
	.word	.Lnpgpr_lvlconv_6
.Lnpgpr_lvlconv_6:
	.word	.Lnpgpr_lvlconv_9
	.word	.Lnpgpr_lvlconv_10
	.word	.Lnpgpr_lvlconv_13
	.word	.Lnpgpr_lvlconv_13
	.word	.Lnpgpr_lvlconv_13
	.word	.Lnpgpr_lvlconv_14
.Lnpgpr_lvlconv_10:
	mov	r0, #0x1
	b	.Lnpgpr_lvlconv_16
.Lnpgpr_lvlconv_13:
	mov	r0, #0x2
	b	.Lnpgpr_lvlconv_16
.Lnpgpr_lvlconv_14:
	mov	r0, #0x0
.Lnpgpr_lvlconv_16:
	bx	lr
	thumb_func_end npgpr_lvlconv
