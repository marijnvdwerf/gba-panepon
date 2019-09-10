	thumb_func_start npgmstpnl_dem
npgmstpnl_dem:
	push	{r4, lr}
	ldr	r2, .Lnpgmstpnl_dem_3 @ NRam+0x154
	ldr	r3, .Lnpgmstpnl_dem_3 + 4 @ npgmstpnldem_tbl
	ldr	r0, .Lnpgmstpnl_dem_3 + 8 @ ARam
	ldrb	r1, [r0, #0xc]
	cmp	r1, #0
	ble	.Lnpgmstpnl_dem_1	@cond_branch
	sub	r1, r1, #0x1
	b	.Lnpgmstpnl_dem_2
.Lnpgmstpnl_dem_4:
	.align	2, 0
.Lnpgmstpnl_dem_3:
	.word	NRam+0x154
	.word	npgmstpnldem_tbl
	.word	ARam
.Lnpgmstpnl_dem_1:
	mov	r1, #0x0
.Lnpgmstpnl_dem_2:
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x2
	add	r0, r3, r0
	ldr	r1, [r0]
	mov	r3, #0x48
	mov	r4, #0x1
.Lnpgmstpnl_dem_6:
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnpgmstpnl_dem_5	@cond_branch
	strb	r0, [r2]
	ldrb	r0, [r1]
	strb	r0, [r2, #0x1]
	strb	r4, [r2, #0x2]
.Lnpgmstpnl_dem_5:
	sub	r3, r3, #0x1
	add	r2, r2, #0x8
	add	r1, r1, #0x1
	cmp	r3, #0
	bne	.Lnpgmstpnl_dem_6	@cond_branch
	bl	np_9danme_set
	ldr	r0, .Lnpgmstpnl_dem_9 @ ARam
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	ble	.Lnpgmstpnl_dem_7	@cond_branch
	sub	r3, r3, #0x1
	b	.Lnpgmstpnl_dem_8
.Lnpgmstpnl_dem_10:
	.align	2, 0
.Lnpgmstpnl_dem_9:
	.word	ARam
.Lnpgmstpnl_dem_7:
	mov	r3, #0x0
.Lnpgmstpnl_dem_8:
	ldr	r2, .Lnpgmstpnl_dem_11 @ NRam
	ldr	r0, .Lnpgmstpnl_dem_11 + 4 @ 0xbd8
	add	r2, r2, r0
	ldr	r1, .Lnpgmstpnl_dem_11 + 8 @ npgmstpnldem_tbl
	lsl	r0, r3, #0x1
	add	r0, r0, r3
	lsl	r0, r0, #0x2
	add	r1, r1, #0x4
	add	r0, r0, r1
	ldr	r0, [r0]
	str	r0, [r2]
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnpgmstpnl_dem_12:
	.align	2, 0
.Lnpgmstpnl_dem_11:
	.word	NRam
	.word	0xbd8
	.word	npgmstpnldem_tbl
	thumb_func_end npgmstpnl_dem
