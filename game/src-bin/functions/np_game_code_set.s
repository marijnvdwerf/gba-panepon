	thumb_func_start np_game_code_set
np_game_code_set:
	push	{r4, r5, r6, r7, lr}
	add	r5, r0, #0
	mov	r1, #0x0
	ldr	r6, .Lnp_game_code_set_9 @ NRam
	ldr	r0, .Lnp_game_code_set_9 + 4 @ 0x848
	add	r2, r6, r0
	add	r4, r6, #0
.Lnp_game_code_set_3:
	add	r3, r4, #0
	ldrh	r0, [r2, #0x2]
	cmp	r0, r5
	beq	.Lnp_game_code_set_1	@cond_branch
	ldrh	r0, [r2]
	cmp	r0, #0
	beq	.Lnp_game_code_set_2	@cond_branch
	add	r2, r2, #0x4
	add	r4, r3, #4
	add	r1, r1, #0x1
	cmp	r1, #0x7f
	ble	.Lnp_game_code_set_3	@cond_branch
	mov	r4, #0x1
	neg	r4, r4
	mov	r3, #0x80
	lsl	r3, r3, #0x9
	cmp	r5, #0x64
	bgt	.Lnp_game_code_set_4	@cond_branch
	mov	r1, #0x0
	ldr	r0, .Lnp_game_code_set_9 @ NRam
	ldr	r7, .Lnp_game_code_set_9 + 8 @ 0x84a
	add	r2, r0, r7
.Lnp_game_code_set_7:
	ldrh	r0, [r2]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0x63
	bhi	.Lnp_game_code_set_6	@cond_branch
	ldrh	r0, [r2]
	cmp	r3, r0
	blt	.Lnp_game_code_set_6	@cond_branch
	add	r3, r0, #0
	add	r4, r1, #0
.Lnp_game_code_set_6:
	add	r2, r2, #0x4
	add	r1, r1, #0x1
	cmp	r1, #0x7f
	ble	.Lnp_game_code_set_7	@cond_branch
	b	.Lnp_game_code_set_8
.Lnp_game_code_set_10:
	.align	2, 0
.Lnp_game_code_set_9:
	.word	NRam
	.word	0x848
	.word	0x84a
.Lnp_game_code_set_4:
	mov	r1, #0x0
	ldr	r0, .Lnp_game_code_set_16 @ NRam
	ldr	r7, .Lnp_game_code_set_16 + 4 @ 0x84a
	add	r2, r0, r7
.Lnp_game_code_set_13:
	ldrh	r0, [r2]
	cmp	r0, #0x64
	bls	.Lnp_game_code_set_12	@cond_branch
	cmp	r3, r0
	blt	.Lnp_game_code_set_12	@cond_branch
	add	r3, r0, #0
	add	r4, r1, #0
.Lnp_game_code_set_12:
	add	r2, r2, #0x4
	add	r1, r1, #0x1
	cmp	r1, #0x7f
	ble	.Lnp_game_code_set_13	@cond_branch
.Lnp_game_code_set_8:
	cmp	r3, r5
	bgt	.Lnp_game_code_set_18	@cond_branch
	add	r1, r4, #0
.Lnp_game_code_set_2:
	lsl	r0, r1, #0x2
	add	r0, r0, r6
	ldr	r2, .Lnp_game_code_set_16 + 4 @ 0x84a
	add	r1, r0, r2
	strh	r5, [r1]
	ldr	r7, .Lnp_game_code_set_16 + 8 @ 0x848
	add	r0, r0, r7
	mov	r1, #0x1
	strh	r1, [r0]
	b	.Lnp_game_code_set_18
.Lnp_game_code_set_17:
	.align	2, 0
.Lnp_game_code_set_16:
	.word	NRam
	.word	0x84a
	.word	0x848
.Lnp_game_code_set_1:
	ldr	r0, .Lnp_game_code_set_19 @ 0x848
	add	r2, r4, r0
	ldrh	r1, [r2]
	ldr	r0, .Lnp_game_code_set_19 + 4 @ 0xffff
	cmp	r1, r0
	beq	.Lnp_game_code_set_18	@cond_branch
	add	r0, r1, #1
	strh	r0, [r2]
.Lnp_game_code_set_18:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_game_code_set_20:
	.align	2, 0
.Lnp_game_code_set_19:
	.word	0x848
	.word	0xffff
	thumb_func_end np_game_code_set
