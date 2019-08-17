	thumb_func_start np_ojm_under
np_ojm_under:
	push	{r4, r5, r6, lr}
	add	r2, r0, #0
	add	r6, r1, #0
	bl	np_ojm_search_head
	ldr	r1, .Lnp_ojm_under_6 @ nojpt_emtbl
	ldr	r0, .Lnp_ojm_under_6 + 4 @ np_ojm_search_head_Areg
	ldrb	r0, [r0]
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldrb	r1, [r0]
	ldr	r0, .Lnp_ojm_under_6 + 8 @ np_ojm_search_head_BCreg
	ldr	r0, [r0]
	add	r2, r0, #0
	add	r2, r2, #0x30
	mov	r3, #0x1
	neg	r3, r3
	add	r5, r3, #0
	mov	r4, #0x0
	cmp	r1, #0
	beq	.Lnp_ojm_under_1	@cond_branch
.Lnp_ojm_under_12:
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0x6
	bgt	.Lnp_ojm_under_2	@cond_branch
	cmp	r0, #0x5
	bge	.Lnp_ojm_under_3	@cond_branch
	cmp	r0, #0
	beq	.Lnp_ojm_under_4	@cond_branch
	b	.Lnp_ojm_under_8
.Lnp_ojm_under_7:
	.align	2, 0
.Lnp_ojm_under_6:
	.word	nojpt_emtbl
	.word	np_ojm_search_head_Areg
	.word	np_ojm_search_head_BCreg
.Lnp_ojm_under_2:
	cmp	r0, #0x7
	bne	.Lnp_ojm_under_8	@cond_branch
.Lnp_ojm_under_4:
	cmp	r3, #0
	bge	.Lnp_ojm_under_11	@cond_branch
	add	r4, r2, #0
	mov	r3, #0x0
	b	.Lnp_ojm_under_11
.Lnp_ojm_under_3:
	ldrb	r0, [r2, #0x5]
	cmp	r5, r0
	bge	.Lnp_ojm_under_11	@cond_branch
	add	r5, r0, #0
	add	r4, r2, #0
	mov	r3, #0x1
.Lnp_ojm_under_11:
	sub	r0, r1, #1
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	sub	r2, r2, #0x8
	cmp	r1, #0
	bne	.Lnp_ojm_under_12	@cond_branch
.Lnp_ojm_under_1:
	cmp	r4, #0
	bne	.Lnp_ojm_under_13	@cond_branch
.Lnp_ojm_under_14:
	b	.Lnp_ojm_under_14
.Lnp_ojm_under_13:
	add	r2, r4, #0
.Lnp_ojm_under_8:
	add	r1, r6, #0
	mov	r3, #0x8
.Lnp_ojm_under_15:
	ldrb	r0, [r2]
	strb	r0, [r1]
	add	r2, r2, #0x1
	add	r1, r1, #0x1
	sub	r3, r3, #0x1
	cmp	r3, #0
	bne	.Lnp_ojm_under_15	@cond_branch
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end np_ojm_under
