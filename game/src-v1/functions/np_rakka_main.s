	thumb_func_start np_rakka_main
np_rakka_main:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #0xfffffff8
	ldr	r2, .Lnp_rakka_main_8 @ NRam
	ldr	r0, .Lnp_rakka_main_8 + 4 @ 0xab2
	add	r1, r2, r0
	mov	r0, #0x1
	strb	r0, [r1]
	mov	r1, #0xe3
	lsl	r1, r1, #0x2
	add	r5, r2, r1
	mov	r2, #0x47
	mov	r0, #0x0
	mov	r9, r0
.Lnp_rakka_main_42:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x10
	and	r0, r0, r1
	sub	r2, r2, #0x1
	mov	r8, r2
	add	r7, r5, #0
	sub	r7, r7, #0x8
	cmp	r0, #0
	bne	.Lnp_rakka_main_1	@cond_branch
	b	.Lnp_rakka_main_39
.Lnp_rakka_main_1:
	ldr	r0, .Lnp_rakka_main_8 @ NRam
	ldr	r1, .Lnp_rakka_main_8 + 4 @ 0xab2
	add	r0, r0, r1
	mov	r1, r9
	strb	r1, [r0]
.Lnp_rakka_main_40:
	ldrb	r6, [r5]
	add	r0, r6, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bhi	.Lnp_rakka_main_3	@cond_branch
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lnp_rakka_main_6	@cond_branch
	cmp	r0, #0x6
	bgt	.Lnp_rakka_main_5	@cond_branch
	cmp	r0, #0x5
	beq	.Lnp_rakka_main_6	@cond_branch
	b	.Lnp_rakka_main_11
.Lnp_rakka_main_9:
	.align	2, 0
.Lnp_rakka_main_8:
	.word	NRam
	.word	0xab2
.Lnp_rakka_main_5:
	cmp	r0, #0x7
	beq	.Lnp_rakka_main_10	@cond_branch
.Lnp_rakka_main_11:
	b	.Lnp_rakka_main_11
.Lnp_rakka_main_3:
	ldrb	r0, [r5, #0x2]
	cmp	r0, #0x6
	beq	.Lnp_rakka_main_14	@cond_branch
	cmp	r0, #0x6
	bgt	.Lnp_rakka_main_13	@cond_branch
	cmp	r0, #0x5
	beq	.Lnp_rakka_main_14	@cond_branch
	b	.Lnp_rakka_main_17
.Lnp_rakka_main_13:
	cmp	r0, #0x7
	beq	.Lnp_rakka_main_16	@cond_branch
.Lnp_rakka_main_17:
	b	.Lnp_rakka_main_17
.Lnp_rakka_main_14:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	lsl	r0, r0, #0x18
	cmp	r0, #0
	bne	.Lnp_rakka_main_39	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lnp_rakka_main_16:
	add	r0, r5, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0x5
	beq	.Lnp_rakka_main_23	@cond_branch
	cmp	r0, #0x5
	bgt	.Lnp_rakka_main_20	@cond_branch
	cmp	r0, #0
	beq	.Lnp_rakka_main_21	@cond_branch
	b	.Lnp_rakka_main_24
.Lnp_rakka_main_20:
	cmp	r0, #0x6
	beq	.Lnp_rakka_main_23	@cond_branch
	cmp	r0, #0x7
	bne	.Lnp_rakka_main_24	@cond_branch
.Lnp_rakka_main_25:
	b	.Lnp_rakka_main_25
.Lnp_rakka_main_24:
	mov	r0, #0x31
	bl	m4aSongNumStart
	mov	r0, #0x1
	strb	r0, [r5, #0x2]
	mov	r0, #0xa
	strb	r0, [r5, #0x5]
	ldrb	r1, [r5, #0x4]
	mov	r0, #0xef
	and	r0, r0, r1
	mov	r1, #0x8
	orr	r0, r0, r1
	strb	r0, [r5, #0x4]
	b	.Lnp_rakka_main_39
.Lnp_rakka_main_23:
	add	r0, r5, #0
	add	r0, r0, #0x35
	ldrb	r1, [r0]
	b	.Lnp_rakka_main_27
.Lnp_rakka_main_21:
	add	r2, r5, #0
	add	r1, r2, #0
	add	r1, r1, #0x30
	mov	r3, #0x8
	mov	r4, #0x0
.Lnp_rakka_main_28:
	ldrb	r0, [r2]
	strb	r0, [r1]
	add	r1, r1, #0x1
	strb	r4, [r2]
	add	r2, r2, #0x1
	sub	r3, r3, #0x1
	cmp	r3, #0
	bne	.Lnp_rakka_main_28	@cond_branch
	b	.Lnp_rakka_main_39
.Lnp_rakka_main_6:
	ldrb	r0, [r5, #0x5]
	sub	r0, r0, #0x1
	strb	r0, [r5, #0x5]
	add	r0, r5, #0
	bl	np_ojm_cpy_cunt
	ldrb	r0, [r5, #0x5]
	cmp	r0, #0
	bne	.Lnp_rakka_main_39	@cond_branch
	mov	r0, #0x7
	strb	r0, [r5, #0x2]
.Lnp_rakka_main_10:
	mov	r4, sp
	add	r0, r5, #0
	mov	r1, sp
	bl	np_ojm_under
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x5
	beq	.Lnp_rakka_main_35	@cond_branch
	cmp	r0, #0x5
	bgt	.Lnp_rakka_main_32	@cond_branch
	cmp	r0, #0
	beq	.Lnp_rakka_main_33	@cond_branch
	b	.Lnp_rakka_main_36
.Lnp_rakka_main_32:
	cmp	r0, #0x6
	beq	.Lnp_rakka_main_35	@cond_branch
	cmp	r0, #0x7
	bne	.Lnp_rakka_main_36	@cond_branch
.Lnp_rakka_main_37:
	b	.Lnp_rakka_main_37
.Lnp_rakka_main_36:
	add	r0, r5, #0
	bl	np_ojm_set_NR
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x4
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_rakka_main_38	@cond_branch
	add	r0, r5, #0
	bl	np_fldyu_ojmset
.Lnp_rakka_main_38:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0xfb
	and	r0, r0, r1
	strb	r0, [r5, #0x4]
	b	.Lnp_rakka_main_39
.Lnp_rakka_main_35:
	mov	r0, sp
	ldrb	r1, [r0, #0x5]
.Lnp_rakka_main_27:
	add	r1, r1, #0x1
	add	r0, r5, #0
	mov	r2, #0x0
	bl	np_rakka_stto_nf
	b	.Lnp_rakka_main_40
.Lnp_rakka_main_33:
	ldrb	r0, [r5, #0x4]
	mov	r2, #0x80
	and	r2, r2, r0
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	neg	r2, r2
	lsr	r2, r2, #0x1f
	add	r0, r5, #0
	add	r0, r0, #0x30
	add	r1, r6, #0
	bl	np_ojm_put
	add	r2, r5, #0
	add	r2, r2, #0x34
	ldrb	r0, [r2]
	mov	r1, #0x4
	orr	r0, r0, r1
	strb	r0, [r2]
.Lnp_rakka_main_39:
	mov	r2, r8
	add	r5, r7, #0
	cmp	r2, #0
	blt	.Lnp_rakka_main_41	@cond_branch
	b	.Lnp_rakka_main_42
.Lnp_rakka_main_41:
	add	sp, sp, #0x8
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end np_rakka_main
