	thumb_func_start npgpr_x_slow
npgpr_x_slow:
	add	r2, r0, #0
	ldr	r0, .Lnpgpr_x_slow_2 @ ARam
	ldrb	r1, [r0, #0x2]
	add	r3, r0, #0
	cmp	r1, #0x9
	bhi	.Lnpgpr_x_slow_24	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnpgpr_x_slow_2 + 4 @ .Lnpgpr_x_slow_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnpgpr_x_slow_3:
	.align	2, 0
.Lnpgpr_x_slow_2:
	.word	ARam
	.word	.Lnpgpr_x_slow_4
.Lnpgpr_x_slow_4:
	.word	.Lnpgpr_x_slow_14
	.word	.Lnpgpr_x_slow_14
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_14
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_24
	.word	.Lnpgpr_x_slow_14
.Lnpgpr_x_slow_14:
	ldrb	r0, [r3, #0x6]
	cmp	r0, #0
	blt	.Lnpgpr_x_slow_24	@cond_branch
	cmp	r0, #0x4
	ble	.Lnpgpr_x_slow_24	@cond_branch
	cmp	r0, #0x5
	bne	.Lnpgpr_x_slow_24	@cond_branch
	ldrb	r0, [r3, #0x14]
	cmp	r0, #0x1
	beq	.Lnpgpr_x_slow_18	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnpgpr_x_slow_19	@cond_branch
	cmp	r0, #0
	beq	.Lnpgpr_x_slow_20	@cond_branch
	b	.Lnpgpr_x_slow_24
.Lnpgpr_x_slow_19:
	cmp	r0, #0x2
	bne	.Lnpgpr_x_slow_24	@cond_branch
	lsl	r2, r2, #0x1
	b	.Lnpgpr_x_slow_24
.Lnpgpr_x_slow_20:
	lsl	r0, r2, #0x1
	add	r2, r0, r2
	b	.Lnpgpr_x_slow_24
.Lnpgpr_x_slow_18:
	lsl	r2, r2, #0x2
.Lnpgpr_x_slow_24:
	lsl	r0, r2, #0x18
	lsr	r0, r0, #0x18
	bx	lr
	thumb_func_end npgpr_x_slow
