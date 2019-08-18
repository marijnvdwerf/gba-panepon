	thumb_func_start npgmstpnl_sub
npgmstpnl_sub:
	push	{r4, r5, r6, lr}
	add	r2, r0, #0
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	mov	r4, #0x0
	ldr	r6, .Lnpgmstpnl_sub_6 @ pad7+0x44
	add	r3, r6, #0
.Lnpgmstpnl_sub_1:
	add	r0, r4, r3
	add	r1, r2, r4
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_1	@cond_branch
	cmp	r5, #0
	beq	.Lnpgmstpnl_sub_2	@cond_branch
	mov	r4, #0x0
	ldr	r6, .Lnpgmstpnl_sub_6 @ pad7+0x44
	add	r5, r6, #0
.Lnpgmstpnl_sub_4:
	bl	RandomGet05
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r2, r0, r5
	ldrb	r1, [r2]
	cmp	r1, #0xff
	beq	.Lnpgmstpnl_sub_4	@cond_branch
	ldr	r3, .Lnpgmstpnl_sub_6 + 4 @ pad7+0x4c
	add	r0, r4, r3
	strb	r1, [r0]
	mov	r0, #0xff
	strb	r0, [r2]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_4	@cond_branch
	mov	r4, #0x0
	ldr	r5, .Lnpgmstpnl_sub_6 @ pad7+0x44
	add	r2, r3, #0
.Lnpgmstpnl_sub_5:
	add	r0, r4, r5
	add	r1, r4, r2
	ldrb	r1, [r1]
	strb	r1, [r0]
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnpgmstpnl_sub_5	@cond_branch
.Lnpgmstpnl_sub_2:
	ldr	r4, .Lnpgmstpnl_sub_6 + 8 @ NRam+0x38c
	ldrb	r1, [r6, #0x5]
	add	r0, r4, #0
	mov	r2, #0x0
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x8
	ldrb	r1, [r6, #0x4]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x10
	ldrb	r1, [r6, #0x3]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x18
	ldrb	r1, [r6, #0x2]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x20
	ldrb	r1, [r6, #0x1]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	add	r0, r4, #0
	sub	r0, r0, #0x28
	ldrb	r1, [r6]
	mov	r2, #0x1
	bl	npgmstpnl_sb1
	bl	np_9danme_set
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnpgmstpnl_sub_7:
	.align	2, 0
.Lnpgmstpnl_sub_6:
	.word	pad7+0x44
	.word	pad7+0x4c
	.word	NRam+0x38c
	thumb_func_end npgmstpnl_sub
