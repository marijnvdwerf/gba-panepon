	thumb_func_start npojmsh_ojbkph
npojmsh_ojbkph:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	ip, r0
	mov	r7, #0x0
	ldr	r4, .Lnpojmsh_ojbkph_3 @ NRam+0x38c
	mov	r3, #0x47
	ldr	r0, .Lnpojmsh_ojbkph_3 + 4 @ 0xfffffc74
	add	r0, r0, r4
	mov	r8, r0
	add	r2, r4, #0
	add	r2, r2, #0xb8
	ldr	r0, .Lnpojmsh_ojbkph_3 + 8 @ 0xfffffc97
	add	r6, r4, r0
	mov	r5, #0xff
.Lnpojmsh_ojbkph_2:
	ldrb	r1, [r4, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnpojmsh_ojbkph_1	@cond_branch
	add	r7, r7, #0x1
	ldrh	r0, [r2]
	add	r0, r0, r6
	strb	r3, [r0]
	ldrh	r0, [r2]
	add	r0, r0, #0x1
	and	r0, r0, r5
	strh	r0, [r2]
	ldrh	r0, [r2]
	add	r0, r0, r6
	asr	r1, r3, #0x8
	strb	r1, [r0]
	ldrh	r0, [r2]
	add	r0, r0, #0x1
	and	r0, r0, r5
	strh	r0, [r2]
.Lnpojmsh_ojbkph_1:
	sub	r3, r3, #0x1
	sub	r4, r4, #0x8
	cmp	r3, #0
	bge	.Lnpojmsh_ojbkph_2	@cond_branch
	mov	r2, ip
	strb	r7, [r2, #0xb]
	mov	r1, r8
	add	r1, r1, #0x23
	ldrh	r0, [r2, #0x2]
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, r7
	strb	r0, [r1]
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnpojmsh_ojbkph_4:
	.align	2, 0
.Lnpojmsh_ojbkph_3:
	.word	NRam+0x38c
	.word	0xfffffc74
	.word	0xfffffc97
	thumb_func_end npojmsh_ojbkph
