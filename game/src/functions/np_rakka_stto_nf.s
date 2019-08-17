	thumb_func_start np_rakka_stto_nf
np_rakka_stto_nf:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffff8
	add	r4, r0, #0
	str	r1, [sp]
	str	r2, [sp, #0x4]
	ldr	r0, .Lnp_rakka_stto_nf_11 @ NRam
	mov	r1, #0xd0
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	mov	r1, #0x0
	strb	r1, [r0]
	add	r0, r4, #0
	bl	np_rksch_push
.Lnp_rakka_stto_nf_28:
	ldr	r0, .Lnp_rakka_stto_nf_11 + 4 @ NRam+0x154
	cmp	r4, r0
	bcs	.Lnp_rakka_stto_nf_1	@cond_branch
	b	.Lnp_rakka_stto_nf_25
.Lnp_rakka_stto_nf_1:
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x7
	beq	.Lnp_rakka_stto_nf_4	@cond_branch
	cmp	r0, #0x1
	beq	.Lnp_rakka_stto_nf_4	@cond_branch
	b	.Lnp_rakka_stto_nf_25
.Lnp_rakka_stto_nf_4:
	ldrb	r0, [r4]
	cmp	r0, #0x9
	beq	.Lnp_rakka_stto_nf_8	@cond_branch
	cmp	r0, #0xa
	beq	.Lnp_rakka_stto_nf_8	@cond_branch
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bls	.Lnp_rakka_stto_nf_8	@cond_branch
	mov	r2, #0x0
	mov	r0, #0x5
	strb	r0, [r4, #0x2]
	ldrb	r1, [r4, #0x4]
	mov	r0, #0x10
	orr	r1, r1, r0
	orr	r1, r1, r2
	strb	r1, [r4, #0x4]
	ldr	r0, [sp, #0x4]
	cmp	r0, #0
	beq	.Lnp_rakka_stto_nf_9	@cond_branch
	mov	r0, #0x80
	orr	r1, r1, r0
	strb	r1, [r4, #0x4]
.Lnp_rakka_stto_nf_9:
	mov	r1, sp
	ldrb	r1, [r1]
	strb	r1, [r4, #0x5]
	sub	r4, r4, #0x30
	b	.Lnp_rakka_stto_nf_28
.Lnp_rakka_stto_nf_12:
	.align	2, 0
.Lnp_rakka_stto_nf_11:
	.word	NRam
	.word	NRam+0x154
.Lnp_rakka_stto_nf_8:
	add	r0, r4, #0
	bl	np_ojm_search_head
	ldr	r0, .Lnp_rakka_stto_nf_29 @ np_ojm_search_head_Areg
	ldrb	r6, [r0]
	ldr	r0, .Lnp_rakka_stto_nf_29 + 4 @ np_ojm_search_head_BCreg
	ldr	r3, [r0]
	ldr	r1, .Lnp_rakka_stto_nf_29 + 8 @ nojpt_emtbl
	add	r0, r6, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r2, [r0]
	add	r4, r3, #0
	add	r4, r4, #0x30
	add	r5, r2, #0
	cmp	r5, #0
	beq	.Lnp_rakka_stto_nf_13	@cond_branch
.Lnp_rakka_stto_nf_18:
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0
	beq	.Lnp_rakka_stto_nf_14	@cond_branch
	cmp	r0, #0
	blt	.Lnp_rakka_stto_nf_25	@cond_branch
	cmp	r0, #0x6
	bgt	.Lnp_rakka_stto_nf_25	@cond_branch
	cmp	r0, #0x5
	blt	.Lnp_rakka_stto_nf_25	@cond_branch
.Lnp_rakka_stto_nf_14:
	sub	r5, r5, #0x1
	sub	r4, r4, #0x8
	cmp	r5, #0
	bne	.Lnp_rakka_stto_nf_18	@cond_branch
.Lnp_rakka_stto_nf_13:
	ldr	r0, .Lnp_rakka_stto_nf_29 + 12 @ nojpt_tbl
	add	r1, r6, #0
	sub	r1, r1, #0xb
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
	ldrb	r0, [r0]
	mov	r8, r0
	add	r4, r3, #0
	mov	r5, r8
	ldr	r7, .Lnp_rakka_stto_nf_29 + 16 @ NRam+0x154
	cmp	r5, #0
	beq	.Lnp_rakka_stto_nf_22	@cond_branch
	cmp	r4, r7
	bcc	.Lnp_rakka_stto_nf_22	@cond_branch
	mov	r0, #0x5
	mov	r9, r0
	mov	r1, #0xef
	mov	sl, r1
	mov	r0, #0x80
	mov	ip, r0
	add	r6, r7, #0
.Lnp_rakka_stto_nf_23:
	mov	r1, r9
	strb	r1, [r4, #0x2]
	ldrb	r0, [r4, #0x4]
	mov	r1, sl
	and	r1, r1, r0
	strb	r1, [r4, #0x4]
	ldr	r0, [sp, #0x4]
	cmp	r0, #0
	beq	.Lnp_rakka_stto_nf_21	@cond_branch
	add	r0, r1, #0
	mov	r1, ip
	orr	r0, r0, r1
	strb	r0, [r4, #0x4]
.Lnp_rakka_stto_nf_21:
	mov	r0, sp
	ldrb	r0, [r0]
	strb	r0, [r4, #0x5]
	sub	r5, r5, #0x1
	sub	r4, r4, #0x8
	cmp	r5, #0
	beq	.Lnp_rakka_stto_nf_22	@cond_branch
	cmp	r4, r6
	bcs	.Lnp_rakka_stto_nf_23	@cond_branch
.Lnp_rakka_stto_nf_22:
	add	r4, r3, #0
	ldrb	r0, [r4, #0x4]
	mov	r1, #0x10
	orr	r1, r1, r0
	strb	r1, [r4, #0x4]
	mov	r1, r8
	sub	r0, r1, r2
	lsl	r0, r0, #0x3
	add	r0, r0, #0x30
	sub	r4, r4, r0
	cmp	r4, r7
	bcc	.Lnp_rakka_stto_nf_25	@cond_branch
	add	r5, r2, #0
	cmp	r5, #0
	beq	.Lnp_rakka_stto_nf_25	@cond_branch
.Lnp_rakka_stto_nf_26:
	add	r0, r4, #0
	bl	np_rksch_push
	sub	r5, r5, #0x1
	sub	r4, r4, #0x8
	cmp	r5, #0
	bne	.Lnp_rakka_stto_nf_26	@cond_branch
.Lnp_rakka_stto_nf_25:
	bl	np_rksch_pop
	add	r4, r0, #0
	ldr	r0, .Lnp_rakka_stto_nf_29 + 20 @ NRam
	mov	r1, #0xd0
	lsl	r1, r1, #0x3
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_rakka_stto_nf_27	@cond_branch
	b	.Lnp_rakka_stto_nf_28
.Lnp_rakka_stto_nf_27:
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_rakka_stto_nf_30:
	.align	2, 0
.Lnp_rakka_stto_nf_29:
	.word	np_ojm_search_head_Areg
	.word	np_ojm_search_head_BCreg
	.word	nojpt_emtbl
	.word	nojpt_tbl
	.word	NRam+0x154
	.word	NRam
	thumb_func_end np_rakka_stto_nf
