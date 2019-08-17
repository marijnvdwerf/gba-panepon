	thumb_func_start npgmstpnl_sb1
npgmstpnl_sb1:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #0xfffffffc
	add	r4, r0, #0
	lsl	r1, r1, #0x18
	lsr	r0, r1, #0x18
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	mov	r8, r2
	cmp	r0, #0
	beq	.Lnpgmstpnl_sb1_1	@cond_branch
	mov	r3, #0x0
.Lnpgmstpnl_sb1_5:
	add	r5, r4, #0
	add	r5, r5, #0x30
	add	r6, r4, #0
	sub	r6, r6, #0x30
	sub	r7, r0, #1
.Lnpgmstpnl_sb1_4:
	str	r3, [sp]
	bl	np_gp_GAMEPARA_CMD_PNLKIND
	lsl	r0, r0, #0x18
	mov	r1, #0x80
	lsl	r1, r1, #0x11
	add	r0, r0, r1
	lsr	r1, r0, #0x18
	add	r2, r1, #0
	ldrb	r0, [r5]
	ldr	r3, [sp]
	cmp	r0, r1
	beq	.Lnpgmstpnl_sb1_4	@cond_branch
	mov	r0, r8
	cmp	r0, #0
	beq	.Lnpgmstpnl_sb1_3	@cond_branch
	ldrb	r0, [r4, #0x8]
	cmp	r0, r1
	beq	.Lnpgmstpnl_sb1_4	@cond_branch
.Lnpgmstpnl_sb1_3:
	strb	r2, [r4]
	strb	r2, [r4, #0x1]
	mov	r0, #0x1
	strb	r0, [r4, #0x2]
	strb	r3, [r4, #0x3]
	strb	r3, [r4, #0x4]
	strb	r3, [r4, #0x5]
	add	r4, r6, #0
	lsl	r0, r7, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0
	bne	.Lnpgmstpnl_sb1_5	@cond_branch
.Lnpgmstpnl_sb1_1:
	add	sp, sp, #0x4
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end npgmstpnl_sb1
