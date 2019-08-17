	thumb_func_start npgmstpnl_rnd
npgmstpnl_rnd:
	push	{r4, lr}
	add	sp, sp, #0xfffffffc
	mov	r4, sp
.Lnpgmstpnl_rnd_1:
	bl	Pon_RandomNORM
	strb	r0, [r4]
	ldrb	r1, [r4]
	mov	r0, #0xf
	and	r0, r0, r1
	strb	r0, [r4]
	ldrb	r0, [r4]
	cmp	r0, #0xd
	bhi	.Lnpgmstpnl_rnd_1	@cond_branch
	ldrb	r1, [r4]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x1
	ldr	r1, .Lnpgmstpnl_rnd_2 @ PanelInitData
	add	r0, r0, r1
	mov	r1, #0x1
	bl	npgmstpnl_sub
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnpgmstpnl_rnd_3:
	.align	2, 0
.Lnpgmstpnl_rnd_2:
	.word	PanelInitData
	thumb_func_end npgmstpnl_rnd
