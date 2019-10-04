	thumb_func_start NisKabegamiRoll
NisKabegamiRoll:
	push	{lr}
	ldr	r1, .LNisKabegamiRoll_2 @ counter.153
	ldr	r0, [r1]
	add	r0, r0, #0x1
	str	r0, [r1]
	cmp	r0, #0x2
	bls	.LNisKabegamiRoll_1	@cond_branch
	mov	r0, #0x0
	str	r0, [r1]
	ldr	r1, .LNisKabegamiRoll_2 + 4 @ b_BG3HOFS
	ldrh	r0, [r1]
	add	r0, r0, #0x1
	strh	r0, [r1]
	ldr	r1, .LNisKabegamiRoll_2 + 8 @ b_BG3VOFS
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
.LNisKabegamiRoll_1:
	pop	{r0}
	bx	r0
.LNisKabegamiRoll_3:
	.align	2, 0
.LNisKabegamiRoll_2:
	.word	counter.153
	.word	b_BG3HOFS
	.word	b_BG3VOFS
	thumb_func_end NisKabegamiRoll
