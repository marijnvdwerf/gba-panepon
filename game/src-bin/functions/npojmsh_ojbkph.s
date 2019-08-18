	thumb_func_start npojmsh_ojbkph
npojmsh_ojbkph:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r9, r0
	ldr	r2, .Lnpojmsh_ojbkph_3 @ NRam
	ldr	r1, .Lnpojmsh_ojbkph_3 + 4 @ 0x446
	add	r0, r2, r1
	ldrb	r1, [r0]
	neg	r0, r1
	orr	r0, r0, r1
	asr	r6, r0, #0x1f
	mov	r0, #0x80
	and	r6, r6, r0
	mov	r7, #0x0
	mov	r0, #0xe3
	lsl	r0, r0, #0x2
	add	r5, r2, r0
	mov	r4, #0x47
	mov	r8, r2
	ldr	r3, .Lnpojmsh_ojbkph_3 + 8 @ 0x444
	add r3, r3, r8
	mov	r1, #0x23
	add r1, r1, r8
	mov	ip, r1
	mov	r2, #0xff
.Lnpojmsh_ojbkph_2:
	ldrb	r1, [r5, #0x4]
	mov	r0, #0x20
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnpojmsh_ojbkph_1	@cond_branch
	add	r0, r6, #0
	orr	r0, r0, r1
	strb	r0, [r5, #0x4]
	add	r7, r7, #0x1
	ldrh	r0, [r3]
	add r0, r0, ip
	strb	r4, [r0]
	ldrh	r0, [r3]
	add	r0, r0, #0x1
	and	r0, r0, r2
	strh	r0, [r3]
	ldrh	r0, [r3]
	add r0, r0, ip
	asr	r1, r4, #0x8
	strb	r1, [r0]
	ldrh	r0, [r3]
	add	r0, r0, #0x1
	and	r0, r0, r2
	strh	r0, [r3]
.Lnpojmsh_ojbkph_1:
	sub	r4, r4, #0x1
	sub	r5, r5, #0x8
	cmp	r4, #0
	bge	.Lnpojmsh_ojbkph_2	@cond_branch
	mov	r2, r9
	strb	r7, [r2, #0xb]
	mov	r1, r8
	add	r1, r1, #0x23
	ldrh	r0, [r2, #0x2]
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, r7
	strb	r0, [r1]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnpojmsh_ojbkph_4:
	.align	2, 0
.Lnpojmsh_ojbkph_3:
	.word	NRam
	.word	0x446
	.word	0x444
	thumb_func_end npojmsh_ojbkph
