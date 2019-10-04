	thumb_func_start np_ojama_shoukyo
np_ojama_shoukyo:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	mov	r9, r0
	ldrh	r4, [r0, #0x2]
	ldr	r2, .Lnp_ojama_shoukyo_4 @ NRam
	add	r3, r2, #0
	add	r3, r3, #0x23
	add	r0, r4, r3
	ldrb	r5, [r0]
	add	r4, r4, #0x1
	mov	r0, #0xff
	and	r4, r4, r0
	ldr	r0, .Lnp_ojama_shoukyo_4 + 4 @ 0xbc3
	add	r1, r2, r0
	mov	r0, #0x0
	strb	r0, [r1]
	cmp	r5, #0
	beq	.Lnp_ojama_shoukyo_1	@cond_branch
	add	r7, r3, #0
	mov	r6, #0xff
	mov	r1, #0xaa
	lsl	r1, r1, #0x1
	add	r1, r1, r2
	mov	r8, r1
.Lnp_ojama_shoukyo_2:
	add	r0, r4, r7
	ldrb	r0, [r0]
	add	r4, r4, #0x1
	and	r4, r4, r6
	add	r1, r4, r7
	ldrb	r1, [r1]
	add	r4, r4, #0x1
	and	r4, r4, r6
	lsl	r1, r1, #0x8
	orr	r0, r0, r1
	lsl	r0, r0, #0x3
	add r0, r0, r8
	bl	npojmsh_ojmsch
	sub	r0, r5, #1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0
	bne	.Lnp_ojama_shoukyo_2	@cond_branch
.Lnp_ojama_shoukyo_1:
	ldr	r0, .Lnp_ojama_shoukyo_4 @ NRam
	ldr	r1, .Lnp_ojama_shoukyo_4 + 4 @ 0xbc3
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_ojama_shoukyo_3	@cond_branch
	mov	r0, r9
	bl	npojmsh_ojbkph
.Lnp_ojama_shoukyo_3:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_ojama_shoukyo_5:
	.align	2, 0
.Lnp_ojama_shoukyo_4:
	.word	NRam
	.word	0xbc3
	thumb_func_end np_ojama_shoukyo
