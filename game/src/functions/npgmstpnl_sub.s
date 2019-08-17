	thumb_func_start npgmstpnl_sub
npgmstpnl_sub:
	push	{r4, r5, lr}
	add	sp, sp, #0xfffffff0
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r3, r1, #0x18
	mov	r4, #0x0
.Lnpgmstpnl_sub_1:
	mov	r1, sp
	add	r0, r1, r4
	add	r1, r2, r4
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_1	@cond_branch
	cmp	r3, #0
	beq	.Lnpgmstpnl_sub_2	@cond_branch
	mov	r4, #0x0
	add	r5, sp, #0x8
.Lnpgmstpnl_sub_4:
	bl	RandomGet05
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, sp
	add	r2, r1, r0
	ldrb	r1, [r2]
	cmp	r1, #0xff
	beq	.Lnpgmstpnl_sub_4	@cond_branch
	add	r0, r5, r4
	strb	r1, [r0]
	mov	r0, #0xff
	strb	r0, [r2]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_4	@cond_branch
	mov	r4, #0x0
	add	r2, r5, #0
.Lnpgmstpnl_sub_5:
	mov	r1, sp
	add	r0, r1, r4
	add	r1, r2, r4
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_5	@cond_branch
.Lnpgmstpnl_sub_2:
	ldr	r4, .Lnpgmstpnl_sub_6 @ NRam+0x38c
	mov	r0, sp
	ldrb	r1, [r0, #0x5]
	add	r0, r4, #0
	mov	r2, #0x0
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x8
	mov	r1, sp
	ldrb	r1, [r1, #0x4]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x10
	mov	r1, sp
	ldrb	r1, [r1, #0x3]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x18
	mov	r1, sp
	ldrb	r1, [r1, #0x2]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x20
	mov	r1, sp
	ldrb	r1, [r1, #0x1]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x28
	mov	r1, sp
	ldrb	r1, [r1]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	bl	np_9danme_set
	add	sp, sp, #0x10
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnpgmstpnl_sub_7:
	.align	2, 0
.Lnpgmstpnl_sub_6:
	.word	NRam+0x38c
	thumb_func_end npgmstpnl_sub
