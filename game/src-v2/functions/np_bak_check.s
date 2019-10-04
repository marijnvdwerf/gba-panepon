	thumb_func_start np_bak_check
np_bak_check:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffff0
	ldr	r3, .Lnp_bak_check_14 @ NRam
	ldr	r1, .Lnp_bak_check_14 + 4 @ 0x444
	add	r0, r3, r1
	mov	r4, #0xff
	ldrb	r1, [r0]
	mov	r2, #0x0
	strh	r1, [r0]
	ldr	r5, .Lnp_bak_check_14 + 8 @ 0x446
	add	r1, r3, r5
	strb	r2, [r1]
	ldrh	r5, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r4
	mov	r6, #0x0
	mov	r8, r6
	mov	r9, r6
	mov	r7, #0x0
	add	r0, r3, #0
	add	r0, r0, #0x23
	mov	ip, r0
	mov	sl, r4
.Lnp_bak_check_6:
	mov	r4, #0x0
	add	r3, r7, #1
	lsl	r0, r6, #0x3
	ldr	r1, .Lnp_bak_check_14 @ NRam
	add	r2, r0, r1
.Lnp_bak_check_5:
	mov	r1, #0xac
	lsl	r1, r1, #0x1
	add	r0, r2, r1
	ldrb	r1, [r0]
	mov	r0, #0x40
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_bak_check_1	@cond_branch
	mov	r0, r8
	cmp	r0, #0
	bne	.Lnp_bak_check_2	@cond_branch
	str	r4, [sp]
	str	r7, [sp, #0x4]
.Lnp_bak_check_2:
	mov	r0, r8
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	mov	r0, #0x80
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_bak_check_3	@cond_branch
	mov	r0, #0x1
	ldr	r1, .Lnp_bak_check_14 + 12 @ NRam+0x446
	strb	r0, [r1]
.Lnp_bak_check_3:
	mov	r1, #0xaa
	lsl	r1, r1, #0x1
	add	r0, r2, r1
	ldrb	r0, [r0]
	cmp	r0, #0x7
	bne	.Lnp_bak_check_4	@cond_branch
	mov	r0, r9
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r9, r0
.Lnp_bak_check_4:
	mov	r1, ip
	add	r0, r5, r1
	strb	r6, [r0]
	add	r5, r5, #0x1
	mov	r0, sl
	and	r5, r5, r0
	add	r1, r5, r1
	asr	r0, r6, #0x8
	strb	r0, [r1]
	add	r5, r5, #0x1
	mov	r1, sl
	and	r5, r5, r1
.Lnp_bak_check_1:
	add	r2, r2, #0x8
	add	r6, r6, #0x1
	add	r4, r4, #0x1
	cmp	r4, #0x5
	ble	.Lnp_bak_check_5	@cond_branch
	add	r7, r3, #0
	cmp	r7, #0xb
	ble	.Lnp_bak_check_6	@cond_branch
	mov	r2, r8
	cmp	r2, #0
	bne	.Lnp_bak_check_7	@cond_branch
	b	.Lnp_bak_check_42
.Lnp_bak_check_7:
	mov	r1, #0x0
	ldr	r6, .Lnp_bak_check_14 @ NRam
	ldr	r3, .Lnp_bak_check_14 + 16 @ 0xa48
	add	r2, r6, r3
	ldr	r0, .Lnp_bak_check_14 + 4 @ 0x444
	add	r3, r6, r0
	mov	r7, #0x0
	ldr	r0, .Lnp_bak_check_14 + 20 @ 0xba4
	add	r0, r0, r6
	mov	sl, r0
	mov	r0, #0xf1
	lsl	r0, r0, #0x2
	add	r4, r6, r0
	mov	r0, #0x0
	str	r0, [sp, #0x8]
.Lnp_bak_check_43:
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnp_bak_check_9	@cond_branch
	b	.Lnp_bak_check_10
.Lnp_bak_check_9:
	mov	r0, #0x1
	strb	r0, [r4]
	ldr	r1, .Lnp_bak_check_14 @ NRam
	ldr	r0, .Lnp_bak_check_14 + 8 @ 0x446
	add	r1, r1, r0
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnp_bak_check_11	@cond_branch
	ldr	r0, [r2]
	ldr	r1, .Lnp_bak_check_14 + 24 @ 0xff9b
	cmp	r0, r1
	bge	.Lnp_bak_check_12	@cond_branch
	add	r0, r0, #0x1
	b	.Lnp_bak_check_13
.Lnp_bak_check_15:
	.align	2, 0
.Lnp_bak_check_14:
	.word	NRam
	.word	0x444
	.word	0x446
	.word	NRam+0x446
	.word	0xa48
	.word	0xba4
	.word	0xff9b
.Lnp_bak_check_12:
	ldr	r0, .Lnp_bak_check_18 @ 0xff9b
.Lnp_bak_check_13:
	str	r0, [r2]
.Lnp_bak_check_11:
	add	r0, r6, #0
	add	r0, r0, #0x23
	ldrh	r1, [r3]
	add	r0, r0, r1
	mov	r1, r8
	strb	r1, [r0]
	ldr	r0, [r2]
	mov	r1, r8
	str	r3, [sp, #0xc]
	bl	np_PutObjMascot_Bikkuri
	ldr	r3, [sp, #0xc]
	ldrh	r0, [r3]
	strh	r0, [r4, #0x2]
	strb	r7, [r4, #0x4]
	strb	r7, [r4, #0x5]
	strb	r7, [r4, #0x6]
	strb	r7, [r4, #0x7]
	strh	r7, [r4, #0x8]
	mov	r2, r8
	strb	r2, [r4, #0xa]
	strb	r7, [r4, #0xb]
	strh	r5, [r3]
	mov	r3, #0xba
	lsl	r3, r3, #0x4
	add	r0, r6, r3
	mov	r5, r9
	str	r5, [r0]
	ldr	r0, .Lnp_bak_check_18 + 4 @ NRam+0xbac
	str	r5, [r0]
	mov	r0, r9
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bhi	.Lnp_bak_check_16	@cond_branch
.Lnp_bak_check_17:
	b	.Lnp_bak_check_17
.Lnp_bak_check_19:
	.align	2, 0
.Lnp_bak_check_18:
	.word	0xff9b
	.word	NRam+0xbac
.Lnp_bak_check_16:
	mov	r1, r8
	cmp	r1, #0x3
	bhi	.Lnp_bak_check_20	@cond_branch
	ldr	r2, .Lnp_bak_check_22 @ 0xb98
	add	r0, r6, r2
	str	r7, [r0]
	mov	r3, sl
	str	r7, [r3]
	b	.Lnp_bak_check_25
.Lnp_bak_check_23:
	.align	2, 0
.Lnp_bak_check_22:
	.word	0xb98
.Lnp_bak_check_20:
	mov	r5, r8
	cmp	r5, #0x64
	bhi	.Lnp_bak_check_24	@cond_branch
	ldr	r1, .Lnp_bak_check_26 @ 0xb98
	add	r0, r6, r1
	str	r5, [r0]
	mov	r2, sl
	str	r5, [r2]
	b	.Lnp_bak_check_25
.Lnp_bak_check_27:
	.align	2, 0
.Lnp_bak_check_26:
	.word	0xb98
.Lnp_bak_check_24:
	ldr	r3, .Lnp_bak_check_30 @ 0xb98
	add	r1, r6, r3
	mov	r0, #0x64
	str	r0, [r1]
	mov	r5, sl
	str	r0, [r5]
.Lnp_bak_check_25:
	ldr	r1, .Lnp_bak_check_30 + 4 @ NRam
	ldr	r2, .Lnp_bak_check_30 + 8 @ 0xa48
	add	r0, r1, r2
	ldr	r1, [r0]
	cmp	r1, #0x1
	bgt	.Lnp_bak_check_28	@cond_branch
	ldr	r3, .Lnp_bak_check_30 + 4 @ NRam
	ldr	r5, .Lnp_bak_check_30 + 12 @ 0xb9c
	add	r0, r3, r5
	str	r7, [r0]
	ldr	r1, .Lnp_bak_check_30 + 16 @ 0xba8
	add	r0, r3, r1
	str	r7, [r0]
	b	.Lnp_bak_check_33
.Lnp_bak_check_31:
	.align	2, 0
.Lnp_bak_check_30:
	.word	0xb98
	.word	NRam
	.word	0xa48
	.word	0xb9c
	.word	0xba8
.Lnp_bak_check_28:
	ldr	r0, .Lnp_bak_check_34 @ 0xff9a
	cmp	r1, r0
	bgt	.Lnp_bak_check_32	@cond_branch
	ldr	r2, .Lnp_bak_check_34 + 4 @ NRam
	ldr	r3, .Lnp_bak_check_34 + 8 @ 0xb9c
	add	r0, r2, r3
	str	r1, [r0]
	ldr	r5, .Lnp_bak_check_34 + 12 @ 0xba8
	add	r0, r2, r5
	str	r1, [r0]
	b	.Lnp_bak_check_33
.Lnp_bak_check_35:
	.align	2, 0
.Lnp_bak_check_34:
	.word	0xff9a
	.word	NRam
	.word	0xb9c
	.word	0xba8
.Lnp_bak_check_32:
	ldr	r1, .Lnp_bak_check_40 @ NRam
	ldr	r2, .Lnp_bak_check_40 + 4 @ 0xb9c
	add	r0, r1, r2
	ldr	r3, .Lnp_bak_check_40 + 8 @ 0xff9b
	str	r3, [r0]
	ldr	r5, .Lnp_bak_check_40 + 12 @ 0xba8
	add	r0, r1, r5
	str	r3, [r0]
.Lnp_bak_check_33:
	ldr	r1, .Lnp_bak_check_40 + 16 @ NRam+0xbac
	ldr	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_bak_check_37	@cond_branch
	mov	r2, sl
	ldr	r0, [r2]
	cmp	r0, #0
	bne	.Lnp_bak_check_37	@cond_branch
	ldr	r3, .Lnp_bak_check_40 @ NRam
	ldr	r5, .Lnp_bak_check_40 + 20 @ 0x446
	add	r0, r3, r5
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_bak_check_38	@cond_branch
.Lnp_bak_check_37:
	ldr	r1, .Lnp_bak_check_40 @ NRam
	ldr	r2, .Lnp_bak_check_40 + 24 @ 0x844
	add	r0, r1, r2
	strb	r7, [r0]
	ldr	r0, [sp]
	ldr	r1, [sp, #0x4]
	bl	np_mk_hass
	bl	np_SE_rens_douj
.Lnp_bak_check_38:
	bl	np_read_stpct
	bl	np_add_bonus
	bl	np_game_code_douj
	ldr	r0, .Lnp_bak_check_40 + 28 @ NRam+0x3c4
	ldr	r3, [sp, #0x8]
	add	r0, r3, r0
	bl	np_ojama_shoukyo
	b	.Lnp_bak_check_42
.Lnp_bak_check_41:
	.align	2, 0
.Lnp_bak_check_40:
	.word	NRam
	.word	0xb9c
	.word	0xff9b
	.word	0xba8
	.word	NRam+0xbac
	.word	0x446
	.word	0x844
	.word	NRam+0x3c4
.Lnp_bak_check_10:
	add	r4, r4, #0x10
	ldr	r0, [sp, #0x8]
	add	r0, r0, #0x10
	str	r0, [sp, #0x8]
	add	r1, r1, #0x1
	cmp	r1, #0x7
	bgt	.Lnp_bak_check_42	@cond_branch
	b	.Lnp_bak_check_43
.Lnp_bak_check_42:
	add	sp, sp, #0x10
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end np_bak_check
