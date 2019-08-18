	thumb_func_start np_ojm_search_head
np_ojm_search_head:
	push	{r4, lr}
	add	r2, r0, #0
	ldr	r4, .Lnp_ojm_search_head_5 @ np_ojm_search_head_Areg
	ldr	r3, .Lnp_ojm_search_head_5 + 4 @ np_ojm_search_head_BCreg
.Lnp_ojm_search_head_7:
	ldrb	r1, [r2]
	cmp	r1, #0x9
	beq	.Lnp_ojm_search_head_2	@cond_branch
	cmp	r1, #0xa
	beq	.Lnp_ojm_search_head_2	@cond_branch
	add	r0, r1, #0
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x1a
	bls	.Lnp_ojm_search_head_3	@cond_branch
.Lnp_ojm_search_head_4:
	b	.Lnp_ojm_search_head_4
.Lnp_ojm_search_head_6:
	.align	2, 0
.Lnp_ojm_search_head_5:
	.word	np_ojm_search_head_Areg
	.word	np_ojm_search_head_BCreg
.Lnp_ojm_search_head_2:
	add	r2, r2, #0x8
	b	.Lnp_ojm_search_head_7
.Lnp_ojm_search_head_3:
	strb	r1, [r4]
	str	r2, [r3]
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_ojm_search_head
