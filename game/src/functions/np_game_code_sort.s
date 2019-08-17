	thumb_func_start np_game_code_sort
np_game_code_sort:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x0
	mov	r8, r0
	mov	r3, #0x0
	ldr	r0, .Lnp_game_code_sort_2 @ NRam
	ldr	r2, .Lnp_game_code_sort_2 + 4 @ 0x8c8
	add	r1, r0, r2
	b	.Lnp_game_code_sort_1
.Lnp_game_code_sort_3:
	.align	2, 0
.Lnp_game_code_sort_2:
	.word	NRam
	.word	0x8c8
.Lnp_game_code_sort_5:
	mov	r0, r8
	add	r0, r0, #0x1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	add	r1, r1, #0x4
	add	r3, r3, #0x1
	cmp	r3, #0x7f
	bgt	.Lnp_game_code_sort_4	@cond_branch
.Lnp_game_code_sort_1:
	ldrh	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_game_code_sort_5	@cond_branch
.Lnp_game_code_sort_4:
	mov	r3, r8
	cmp	r3, #0x1
	bls	.Lnp_game_code_sort_13	@cond_branch
	mov	r3, #0x0
	mov	r4, r8
	sub	r4, r4, #0x1
	mov	sl, r4
	cmp	r3, sl
	bge	.Lnp_game_code_sort_13	@cond_branch
	ldr	r0, .Lnp_game_code_sort_11 @ NRam
	ldr	r1, .Lnp_game_code_sort_11 + 4 @ 0x8ca
	add	r2, r0, r1
.Lnp_game_code_sort_9:
	add	r1, r3, #1
	ldrh	r0, [r2]
	ldrh	r3, [r2, #0x4]
	cmp	r0, r3
	bhi	.Lnp_game_code_sort_8	@cond_branch
	add	r2, r2, #0x4
	add	r3, r1, #0
	cmp	r3, r4
	blt	.Lnp_game_code_sort_9	@cond_branch
	b	.Lnp_game_code_sort_13
.Lnp_game_code_sort_12:
	.align	2, 0
.Lnp_game_code_sort_11:
	.word	NRam
	.word	0x8ca
.Lnp_game_code_sort_8:
	mov	r3, #0x0
	cmp	r3, sl
	bge	.Lnp_game_code_sort_13	@cond_branch
	ldr	r0, .Lnp_game_code_sort_19 @ NRam
	mov	ip, r0
	ldr	r1, .Lnp_game_code_sort_19 + 4 @ 0x8ca
	mov	r9, r1
.Lnp_game_code_sort_18:
	add	r6, r3, #0
	lsl	r1, r3, #0x2
	mov	r2, ip
	add	r0, r1, r2
	add r0, r0, r9
	ldrh	r5, [r0]
	add	r7, r3, #1
	add	r4, r7, #0
	cmp	r7, r8
	bge	.Lnp_game_code_sort_14	@cond_branch
	lsl	r0, r7, #0x2
	ldr	r2, .Lnp_game_code_sort_19 + 4 @ 0x8ca
	add	r0, r0, r2
	ldr	r2, .Lnp_game_code_sort_19 @ NRam
	add	r0, r0, r2
.Lnp_game_code_sort_16:
	ldrh	r2, [r0]
	cmp	r5, r2
	ble	.Lnp_game_code_sort_15	@cond_branch
	add	r6, r4, #0
	add	r5, r2, #0
.Lnp_game_code_sort_15:
	add	r0, r0, #0x4
	add	r4, r4, #0x1
	cmp	r4, r8
	blt	.Lnp_game_code_sort_16	@cond_branch
.Lnp_game_code_sort_14:
	cmp	r6, r3
	beq	.Lnp_game_code_sort_17	@cond_branch
	mov	r0, ip
	add	r3, r1, r0
	mov	r1, r9
	add	r4, r3, r1
	ldrh	r5, [r4]
	lsl	r1, r6, #0x2
	add r1, r1, ip
	mov	r0, r9
	add	r2, r1, r0
	ldrh	r0, [r2]
	strh	r0, [r4]
	strh	r5, [r2]
	ldr	r2, .Lnp_game_code_sort_19 + 8 @ 0x8c8
	add	r3, r3, r2
	ldrh	r2, [r3]
	ldr	r0, .Lnp_game_code_sort_19 + 8 @ 0x8c8
	add	r1, r1, r0
	ldrh	r0, [r1]
	strh	r0, [r3]
	strh	r2, [r1]
.Lnp_game_code_sort_17:
	add	r3, r7, #0
	cmp	r3, sl
	blt	.Lnp_game_code_sort_18	@cond_branch
.Lnp_game_code_sort_13:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_game_code_sort_20:
	.align	2, 0
.Lnp_game_code_sort_19:
	.word	NRam
	.word	0x8ca
	.word	0x8c8
	thumb_func_end np_game_code_sort
