	thumb_func_start np_bak_main_knbldfkjnsdfjkjnl
np_bak_main_knbldfkjnsdfjkjnl:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffff8
	mov	r9, r0
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_5 @ NRam
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_5 + 4 @ 0xab5
	add	r1, r2, r0
	mov	r0, #0x0
	strb	r0, [r1]
	mov	r1, r9
	ldrb	r0, [r1, #0x4]
	cmp	r0, #0x1
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_1	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnp_bak_main_knbldfkjnsdfjkjnl_2	@cond_branch
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_3	@cond_branch
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_9
.Lnp_bak_main_knbldfkjnsdfjkjnl_6:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_5:
	.word	NRam
	.word	0xab5
.Lnp_bak_main_knbldfkjnsdfjkjnl_2:
	cmp	r0, #0x2
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_7	@cond_branch
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_8
.Lnp_bak_main_knbldfkjnsdfjkjnl_7:
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_9
.Lnp_bak_main_knbldfkjnsdfjkjnl_3:
	mov	r2, r9
	ldrh	r5, [r2, #0x2]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_13 @ NRam
	add	r1, r1, #0x23
	add	r0, r5, r1
	ldrb	r0, [r0]
	mov	r8, r0
	add	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	strh	r5, [r2, #0x8]
	mov	r3, r8
	cmp	r3, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_10	@cond_branch
	ldr	r7, .Lnp_bak_main_knbldfkjnsdfjkjnl_13 @ NRam
	add	r4, r1, #0
	mov	r3, #0xff
.Lnp_bak_main_knbldfkjnsdfjkjnl_11:
	add	r0, r5, r4
	ldrb	r2, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	add	r0, r5, r4
	ldrb	r6, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	lsl	r0, r6, #0x8
	orr	r2, r2, r0
	lsl	r0, r2, #0x3
	add	r2, r0, r7
	mov	r0, #0xab
	lsl	r0, r0, #0x1
	add	r1, r2, r0
	mov	r0, #0x8
	strb	r0, [r1]
	mov	r1, #0xac
	lsl	r1, r1, #0x1
	add	r2, r2, r1
	ldrb	r1, [r2]
	mov	r0, #0x8f
	and	r0, r0, r1
	strb	r0, [r2]
	mov	r0, r8
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_11	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_10:
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_13 @ NRam
	mov	r3, #0xa5
	lsl	r3, r3, #0x4
	add	r0, r2, r3
	ldrb	r0, [r0]
	mov	r4, r9
	strb	r0, [r4, #0x5]
	ldrb	r0, [r4, #0xa]
	strb	r0, [r4, #0x7]
	ldrb	r0, [r4, #0x4]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x4]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_14:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_13:
	.word	NRam
.Lnp_bak_main_knbldfkjnsdfjkjnl_1:
	mov	r0, r9
	ldrb	r1, [r0, #0x5]
	cmp	r1, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_15	@cond_branch
	mov	r0, #0x2
	and	r0, r0, r1
	mov	r1, #0x6a
	mov	sl, r1
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_16	@cond_branch
	mov	r2, #0x45
	mov	sl, r2
.Lnp_bak_main_knbldfkjnsdfjkjnl_16:
	mov	r3, r9
	ldrh	r5, [r3, #0x2]
	ldr	r6, .Lnp_bak_main_knbldfkjnsdfjkjnl_20 @ NRam
	add	r6, r6, #0x23
	add	r0, r5, r6
	ldrb	r0, [r0]
	mov	r8, r0
	add	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	mov	r4, r8
	cmp	r4, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_17	@cond_branch
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_20 @ NRam
	add	r1, r6, #0
	mov	r7, #0xff
.Lnp_bak_main_knbldfkjnsdfjkjnl_18:
	add	r0, r5, r1
	ldrb	r2, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r7
	add	r0, r5, r1
	ldrb	r6, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r7
	lsl	r0, r6, #0x8
	orr	r2, r2, r0
	lsl	r0, r2, #0x3
	add	r6, r0, r3
	mov	r2, #0xaa
	lsl	r2, r2, #0x1
	add	r0, r6, r2
	ldrb	r0, [r0]
	add r0, r0, sl
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_20 + 4 @ 0x155
	add	r6, r6, r4
	strb	r0, [r6]
	mov	r0, r8
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_18	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_17:
	mov	r1, r9
	ldrb	r0, [r1, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r1, #0x5]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_21:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_20:
	.word	NRam
	.word	0x155
.Lnp_bak_main_knbldfkjnsdfjkjnl_15:
	mov	r2, #0x6a
	mov	sl, r2
	mov	r3, r9
	ldrh	r5, [r3, #0x2]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_25 @ NRam
	add	r1, r1, #0x23
	add	r0, r5, r1
	ldrb	r0, [r0]
	mov	r8, r0
	add	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	mov	r4, r8
	cmp	r4, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_22	@cond_branch
	ldr	r7, .Lnp_bak_main_knbldfkjnsdfjkjnl_25 @ NRam
	add	r4, r1, #0
	mov	r3, #0xff
.Lnp_bak_main_knbldfkjnsdfjkjnl_23:
	add	r0, r5, r4
	ldrb	r2, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	add	r0, r5, r4
	ldrb	r6, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	lsl	r0, r6, #0x8
	orr	r2, r2, r0
	lsl	r0, r2, #0x3
	add	r1, r0, r7
	mov	r2, #0xaa
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	ldrb	r0, [r0]
	add r0, r0, sl
	add	r2, r2, #0x1
	add	r1, r1, r2
	strb	r0, [r1]
	mov	r0, r8
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_23	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_22:
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_25 @ NRam
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_25 + 4 @ 0xa51
	add	r0, r3, r4
	ldrb	r0, [r0]
	mov	r1, r9
	strb	r0, [r1, #0x5]
	ldrb	r0, [r1, #0x4]
	add	r0, r0, #0x1
	strb	r0, [r1, #0x4]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_26:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_25:
	.word	NRam
	.word	0xa51
.Lnp_bak_main_knbldfkjnsdfjkjnl_8:
	mov	r2, r9
	ldrb	r0, [r2, #0x5]
	str	r0, [sp]
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_27	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r2, #0x5]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_27:
	mov	r3, r9
	ldrh	r5, [r3, #0x8]
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	add	r4, r4, #0x23
	mov	sl, r4
	add	r0, r5, r4
	ldrb	r7, [r0]
	add	r0, r5, #1
	mov	r1, #0xff
	mov	r8, r1
	and	r0, r0, r1
	add r0, r0, sl
	ldrb	r6, [r0]
	lsl	r0, r6, #0x8
	orr	r7, r7, r0
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 + 4 @ 0xa48
	add	r5, r2, r3
	ldr	r6, [r5]
	add	r0, r7, #0
	mov	r1, #0x6
	bl	__umodsi3
	add	r4, r0, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	add	r0, r7, #0
	mov	r1, #0x6
	bl	__udivsi3
	add	r2, r0, #0
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	add	r0, r6, #0
	add	r1, r4, #0
	bl	np_baku_ani_hass
	ldr	r0, [r5]
	mov	r4, r9
	ldrb	r1, [r4, #0x6]
	bl	nbmn_bik_sound
	ldrb	r0, [r4, #0x6]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x6]
	mov	r1, #0xa
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 + 8 @ ARam
	ldrb	r0, [r0, #0x1f]
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_29	@cond_branch
	mov	r1, #0x5
.Lnp_bak_main_knbldfkjnsdfjkjnl_29:
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	mov	r3, #0xa9
	lsl	r3, r3, #0x4
	add	r2, r0, r3
	ldr	r0, [r2]
	add	r0, r0, r1
	str	r0, [r2]
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	add	r3, r3, #0x4
	add	r1, r4, r3
	ldr	r1, [r1]
	cmp	r0, r1
	bls	.Lnp_bak_main_knbldfkjnsdfjkjnl_30	@cond_branch
	str	r1, [r2]
.Lnp_bak_main_knbldfkjnsdfjkjnl_30:
	bl	np_rlup_lvup
	mov	r4, r9
	ldrb	r0, [r4, #0x7]
	sub	r0, r0, #0x1
	strb	r0, [r4, #0x7]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_31	@cond_branch
	ldrh	r5, [r4, #0x8]
	mov	r1, sl
	add	r0, r5, r1
	ldrb	r2, [r0]
	add	r5, r5, #0x1
	mov	r3, r8
	and	r5, r5, r3
	add	r0, r5, r1
	ldrb	r6, [r0]
	add	r1, r5, #1
	and	r1, r1, r3
	lsl	r0, r6, #0x8
	orr	r2, r2, r0
	lsl	r0, r2, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	add	r0, r0, r4
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 + 12 @ 0x155
	add	r0, r0, r2
	mov	r3, sp
	ldrb	r3, [r3]
	strb	r3, [r0]
	mov	r4, r9
	strh	r1, [r4, #0x8]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 @ NRam
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_33 + 16 @ 0xa52
	add	r0, r1, r2
	ldrb	r0, [r0]
	strb	r0, [r4, #0x5]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_34:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_33:
	.word	NRam
	.word	0xa48
	.word	ARam
	.word	0x155
	.word	0xa52
.Lnp_bak_main_knbldfkjnsdfjkjnl_31:
	mov	r3, r9
	ldrh	r5, [r3, #0x2]
	add	r5, r5, #0x1
	mov	r4, r8
	and	r5, r5, r4
	ldrb	r0, [r3, #0xa]
	mov	r8, r0
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_35	@cond_branch
	mov	r1, #0xff
	mov	sl, r1
.Lnp_bak_main_knbldfkjnsdfjkjnl_40:
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_44 @ NRam+0x23
	add	r0, r5, r2
	ldrb	r7, [r0]
	add	r5, r5, #0x1
	mov	r3, sl
	and	r5, r5, r3
	add	r0, r5, r2
	ldrb	r6, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	lsl	r0, r6, #0x8
	orr	r7, r7, r0
	lsl	r0, r7, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_44 + 4 @ NRam+0x154
	add	r0, r0, r4
	mov	r6, #0x8
	mov	r1, #0x1
	neg	r1, r1
	add r8, r8, r1
	mov	r1, #0x0
.Lnp_bak_main_knbldfkjnsdfjkjnl_36:
	strb	r1, [r0]
	add	r0, r0, #0x1
	sub	r6, r6, #0x1
	cmp	r6, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_36	@cond_branch
	sub	r6, r7, #6
	cmp	r6, #0
	blt	.Lnp_bak_main_knbldfkjnsdfjkjnl_39	@cond_branch
	lsl	r0, r7, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_44 + 8 @ NRam+0x124
	add	r7, r0, r4
	add	r0, r7, #0
	bl	np_rakka_stto_ch
	lsl	r0, r6, #0x3
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_44 + 12 @ NRam
	add	r1, r0, r2
	mov	r3, #0xaa
	lsl	r3, r3, #0x1
	add	r0, r1, r3
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_39	@cond_branch
	mov	r2, #0xab
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0x1
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_39	@cond_branch
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_44 + 16 @ 0x92f
	add	r0, r4, r3
	ldrb	r1, [r0]
	add	r0, r7, #0
	mov	r2, #0x1
	bl	np_rakka_stto_nf
.Lnp_bak_main_knbldfkjnsdfjkjnl_39:
	mov	r4, r8
	lsl	r0, r4, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_40	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_35:
	mov	r0, r9
	ldrb	r6, [r0, #0xb]
	cmp	r6, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_41	@cond_branch
	mov	r6, #0x10
	mov	r1, #0x0
.Lnp_bak_main_knbldfkjnsdfjkjnl_42:
	strb	r1, [r0]
	add	r0, r0, #0x1
	sub	r6, r6, #0x1
	cmp	r6, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_42	@cond_branch
	bl	np_zenkeshi_check
	mov	r1, r9
	strb	r6, [r1, #0x4]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_45:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_44:
	.word	NRam+0x23
	.word	NRam+0x154
	.word	NRam+0x124
	.word	NRam
	.word	0x92f
.Lnp_bak_main_knbldfkjnsdfjkjnl_41:
	mov	r2, r9
	ldrb	r0, [r2, #0x4]
	add	r0, r0, #0x1
	strb	r0, [r2, #0x4]
	strh	r5, [r2, #0x8]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_48 @ NRam
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_48 + 4 @ 0xa52
	add	r0, r1, r3
	ldrb	r0, [r0]
	strb	r0, [r2, #0x5]
	sub	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	strb	r6, [r2, #0x7]
	add	r0, r1, #0
	add	r0, r0, #0x23
	add	r0, r5, r0
	strb	r6, [r0]
	strh	r5, [r2, #0x2]
.Lnp_bak_main_knbldfkjnsdfjkjnl_9:
	mov	r4, r9
	ldrb	r0, [r4, #0x5]
	mov	r8, r0
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_46	@cond_branch
	sub	r0, r0, #0x1
	strb	r0, [r4, #0x5]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_49:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_48:
	.word	NRam
	.word	0xa52
.Lnp_bak_main_knbldfkjnsdfjkjnl_46:
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 @ NRam
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 + 4 @ 0xa48
	add	r4, r0, r1
	ldr	r0, [r4]
	mov	r2, r9
	ldrb	r1, [r2, #0x6]
	bl	nbmn_bik_sound
	mov	r3, r9
	ldrb	r0, [r3, #0x6]
	add	r0, r0, #0x1
	strb	r0, [r3, #0x6]
	ldrh	r5, [r3, #0x8]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 @ NRam
	add	r1, r1, #0x23
	add	r0, r5, r1
	ldrb	r7, [r0]
	add	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	add	r1, r5, r1
	ldrb	r6, [r1]
	add	r5, r5, #0x1
	and	r5, r5, r0
	lsl	r0, r6, #0x8
	orr	r7, r7, r0
	ldr	r4, [r4]
	add	r0, r7, #0
	mov	r1, #0x6
	bl	__umodsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	sl, r0
	add	r0, r7, #0
	mov	r1, #0x6
	bl	__udivsi3
	add	r2, r0, #0
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	add	r0, r4, #0
	mov	r1, sl
	bl	np_baku_ani_hass
	lsl	r1, r7, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 @ NRam
	add	r0, r1, r4
	mov	r4, #0xaa
	lsl	r4, r4, #0x1
	add	r0, r0, r4
	ldrb	r6, [r0]
	add	r0, r6, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lnp_bak_main_knbldfkjnsdfjkjnl_50	@cond_branch
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 + 8 @ nojpt_usutbl
	add	r0, r6, r0
	ldrb	r0, [r0]
	mov	r2, r9
	strb	r0, [r2, #0xd]
	mov	r3, r8
	strb	r3, [r2, #0xc]
.Lnp_bak_main_knbldfkjnsdfjkjnl_50:
	mov	r2, r9
	ldrb	r0, [r2, #0xc]
	cmp	r0, #0x6
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_51	@cond_branch
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_52
.Lnp_bak_main_knbldfkjnsdfjkjnl_51:
	mov	r8, r1
	cmp	r0, #0x5
	bls	.Lnp_bak_main_knbldfkjnsdfjkjnl_53	@cond_branch
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_54
.Lnp_bak_main_knbldfkjnsdfjkjnl_53:
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 + 12 @ ARam
	ldrb	r1, [r0, #0x1c]
	cmp	r1, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_55	@cond_branch
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 @ NRam
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 + 16 @ 0xbc4
	add	r6, r3, r0
	mov	r2, #0x0
	ldsh	r0, [r6, r2]
	cmp	r0, #0
	bge	.Lnp_bak_main_knbldfkjnsdfjkjnl_56	@cond_branch
	strh	r1, [r6]
.Lnp_bak_main_knbldfkjnsdfjkjnl_56:
	mov	r3, #0x0
	ldsh	r0, [r6, r3]
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 @ NRam
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_62 + 20 @ 0xa5a
	add	r2, r1, r3
	ldrb	r1, [r2]
	cmp	r0, r1
	ble	.Lnp_bak_main_knbldfkjnsdfjkjnl_57	@cond_branch
	strh	r1, [r6]
.Lnp_bak_main_knbldfkjnsdfjkjnl_57:
	ldrh	r0, [r6]
	sub	r0, r0, #0x1
	strh	r0, [r6]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bge	.Lnp_bak_main_knbldfkjnsdfjkjnl_58	@cond_branch
	ldrb	r0, [r2]
	sub	r0, r0, #0x1
	strh	r0, [r6]
	bl	RndRnd
	mov	r1, #0x1
	and	r0, r0, r1
	ldrh	r1, [r6]
	sub	r1, r1, r0
	strh	r1, [r6]
.Lnp_bak_main_knbldfkjnsdfjkjnl_58:
	mov	r1, #0x0
	ldsh	r0, [r6, r1]
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_59	@cond_branch
	add	r0, r7, #0
	bl	nbmn_kaitou_sch_under
	add	r1, r0, #0
	cmp	r1, #0
	bge	.Lnp_bak_main_knbldfkjnsdfjkjnl_60	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_55:
	bl	np_gp_GAMEPARA_CMD_PNLKIND
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_64
.Lnp_bak_main_knbldfkjnsdfjkjnl_63:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_62:
	.word	NRam
	.word	0xa48
	.word	nojpt_usutbl
	.word	ARam
	.word	0xbc4
	.word	0xa5a
.Lnp_bak_main_knbldfkjnsdfjkjnl_60:
	lsl	r0, r1, #0x18
	lsr	r6, r0, #0x18
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_64
.Lnp_bak_main_knbldfkjnsdfjkjnl_59:
	add	r0, r7, #0
	bl	nbmn_kaitou_sch_under
	add	r1, r0, #0
	mov	r2, sl
	cmp	r2, #0x4
	bhi	.Lnp_bak_main_knbldfkjnsdfjkjnl_65	@cond_branch
	add	r0, r7, #1
	lsl	r0, r0, #0x3
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_67 @ NRam
	add	r0, r0, r3
	add	r0, r0, r4
	ldrb	r4, [r0]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_66
.Lnp_bak_main_knbldfkjnsdfjkjnl_68:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_67:
	.word	NRam
.Lnp_bak_main_knbldfkjnsdfjkjnl_65:
	mov	r4, #0x1
	neg	r4, r4
.Lnp_bak_main_knbldfkjnsdfjkjnl_66:
	lsl	r7, r7, #0x3
	mov	r8, r7
.Lnp_bak_main_knbldfkjnsdfjkjnl_70:
	str	r1, [sp, #0x4]
	bl	np_gp_GAMEPARA_CMD_PNLKIND
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	ldr	r1, [sp, #0x4]
	cmp	r1, r6
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_70	@cond_branch
	cmp	r4, r6
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_70	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_64:
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_72 @ NRam
	mov	r4, r8
	add	r7, r4, r2
	mov	r1, #0xaa
	lsl	r1, r1, #0x1
	add	r0, r7, r1
	mov	r1, #0x0
	strb	r6, [r0]
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_72 + 4 @ 0x155
	add	r0, r7, r3
	strb	r6, [r0]
	mov	r4, #0xab
	lsl	r4, r4, #0x1
	add	r6, r7, r4
	mov	r0, #0x8
	strb	r0, [r6]
	add	r3, r3, #0x2
	add	r0, r7, r3
	strb	r1, [r0]
	add	r4, r4, #0x2
	add	r0, r7, r4
	strb	r1, [r0]
	add	r3, r3, #0x2
	add	r0, r7, r3
	strb	r1, [r0]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_71
.Lnp_bak_main_knbldfkjnsdfjkjnl_73:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_72:
	.word	NRam
	.word	0x155
.Lnp_bak_main_knbldfkjnsdfjkjnl_52:
	mov	r4, r9
	ldrb	r0, [r4, #0xd]
	add	r2, r0, #0
	cmp	r2, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_74	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_75:
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_75
.Lnp_bak_main_knbldfkjnsdfjkjnl_74:
	ldr	r0, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 @ NRam
	lsl	r1, r7, #0x3
	add	r0, r1, r0
	mov	r3, #0xaa
	lsl	r3, r3, #0x1
	add	r0, r0, r3
	strb	r2, [r0]
	mov	r0, #0x1
	mov	r4, r9
	strb	r0, [r4, #0xe]
	mov	r8, r1
.Lnp_bak_main_knbldfkjnsdfjkjnl_54:
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 @ NRam
	mov	r0, r8
	add	r2, r0, r3
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 + 4 @ nojpt_tbl
	mov	r4, r9
	ldrb	r0, [r4, #0xd]
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r1, [r4, #0xe]
	ldr	r0, [r0]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 + 8 @ 0x155
	add	r1, r2, r4
	strb	r0, [r1]
	mov	r1, r9
	ldrb	r0, [r1, #0xe]
	add	r0, r0, #0x1
	strb	r0, [r1, #0xe]
.Lnp_bak_main_knbldfkjnsdfjkjnl_71:
	mov	r2, r9
	ldrb	r0, [r2, #0x7]
	sub	r0, r0, #0x1
	strb	r0, [r2, #0x7]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_76	@cond_branch
	ldrb	r0, [r2, #0xc]
	add	r0, r0, #0x1
	strb	r0, [r2, #0xc]
	strh	r5, [r2, #0x8]
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 @ NRam
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_78 + 12 @ 0xa5c
	add	r0, r3, r4
	ldrb	r0, [r0]
	strb	r0, [r2, #0x5]
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_77
.Lnp_bak_main_knbldfkjnsdfjkjnl_79:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_78:
	.word	NRam
	.word	nojpt_tbl
	.word	0x155
	.word	0xa5c
.Lnp_bak_main_knbldfkjnsdfjkjnl_76:
	mov	r0, r9
	ldrh	r5, [r0, #0x2]
	add	r5, r5, #0x1
	mov	r0, #0xff
	and	r5, r5, r0
	mov	r1, r9
	ldrb	r1, [r1, #0xb]
	mov	r8, r1
	cmp	r1, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_80	@cond_branch
	mov	sl, r0
.Lnp_bak_main_knbldfkjnsdfjkjnl_88:
	ldr	r2, .Lnp_bak_main_knbldfkjnsdfjkjnl_83 @ NRam+0x23
	add	r0, r5, r2
	ldrb	r7, [r0]
	add	r5, r5, #0x1
	mov	r3, sl
	and	r5, r5, r3
	add	r0, r5, r2
	ldrb	r6, [r0]
	add	r5, r5, #0x1
	and	r5, r5, r3
	lsl	r0, r6, #0x8
	orr	r7, r7, r0
	lsl	r0, r7, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_83 + 4 @ NRam
	add	r2, r0, r4
	mov	r0, #0xab
	lsl	r0, r0, #0x1
	add	r3, r2, r0
	mov	r1, #0x0
	mov	r0, #0x6
	strb	r0, [r3]
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_83 + 8 @ 0x157
	add	r0, r2, r3
	strb	r1, [r0]
	mov	r4, #0xaa
	lsl	r4, r4, #0x1
	add	r0, r2, r4
	ldrb	r6, [r0]
	add	r0, r6, #0
	sub	r0, r0, #0x9
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1
	bls	.Lnp_bak_main_knbldfkjnsdfjkjnl_81	@cond_branch
	mov	r0, #0xac
	lsl	r0, r0, #0x1
	add	r1, r2, r0
	mov	r0, #0x90
	b	.Lnp_bak_main_knbldfkjnsdfjkjnl_82
.Lnp_bak_main_knbldfkjnsdfjkjnl_84:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_83:
	.word	NRam+0x23
	.word	NRam
	.word	0x157
.Lnp_bak_main_knbldfkjnsdfjkjnl_81:
	mov	r3, #0xac
	lsl	r3, r3, #0x1
	add	r1, r2, r3
	mov	r0, #0x80
.Lnp_bak_main_knbldfkjnsdfjkjnl_82:
	strb	r0, [r1]
	lsl	r2, r7, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 @ NRam
	add	r0, r2, r4
	ldr	r3, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 + 4 @ 0xa54
	add	r1, r4, r3
	ldrb	r1, [r1]
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 + 8 @ 0x159
	add	r0, r0, r4
	strb	r1, [r0]
	sub	r4, r7, #6
	cmp	r4, #0
	blt	.Lnp_bak_main_knbldfkjnsdfjkjnl_87	@cond_branch
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 @ NRam
	mov	r3, #0x92
	lsl	r3, r3, #0x1
	add	r0, r1, r3
	add	r6, r2, r0
	add	r0, r6, #0
	bl	np_rakka_stto_ch
	lsl	r0, r4, #0x3
	ldr	r4, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 @ NRam
	add	r1, r0, r4
	mov	r2, #0xaa
	lsl	r2, r2, #0x1
	add	r0, r1, r2
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_bak_main_knbldfkjnsdfjkjnl_87	@cond_branch
	mov	r3, #0xab
	lsl	r3, r3, #0x1
	add	r0, r1, r3
	ldrb	r0, [r0]
	cmp	r0, #0x1
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_87	@cond_branch
	ldr	r1, .Lnp_bak_main_knbldfkjnsdfjkjnl_90 + 12 @ 0xa53
	add	r0, r4, r1
	ldrb	r1, [r0]
	add	r0, r6, #0
	mov	r2, #0x1
	bl	np_rakka_stto_nf
.Lnp_bak_main_knbldfkjnsdfjkjnl_87:
	mov	r0, r8
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	cmp	r0, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_88	@cond_branch
.Lnp_bak_main_knbldfkjnsdfjkjnl_80:
	mov	r0, r9
	mov	r6, #0x10
	mov	r1, #0x0
.Lnp_bak_main_knbldfkjnsdfjkjnl_89:
	strb	r1, [r0]
	add	r0, r0, #0x1
	sub	r6, r6, #0x1
	cmp	r6, #0
	bne	.Lnp_bak_main_knbldfkjnsdfjkjnl_89	@cond_branch
	mov	r2, r9
	strb	r6, [r2, #0x4]
.Lnp_bak_main_knbldfkjnsdfjkjnl_77:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_bak_main_knbldfkjnsdfjkjnl_91:
	.align	2, 0
.Lnp_bak_main_knbldfkjnsdfjkjnl_90:
	.word	NRam
	.word	0xa54
	.word	0x159
	.word	0xa53
	thumb_func_end np_bak_main_knbldfkjnsdfjkjnl
