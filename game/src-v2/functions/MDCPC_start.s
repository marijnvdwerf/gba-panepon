	thumb_func_start MDCPC_start
MDCPC_start:
	push	{lr}
	add	r2, r0, #0
	cmp	r1, #0
	bne	.LMDCPC_start_1	@cond_branch
	str	r1, [r2, #0xc]
	ldrb	r1, [r2, #0x8]
	mov	r0, #0xfe
	and	r0, r0, r1
	b	.LMDCPC_start_2
.LMDCPC_start_1:
	str	r1, [r2, #0xc]
	ldrb	r1, [r2, #0x8]
	mov	r0, #0x1
	orr	r0, r0, r1
.LMDCPC_start_2:
	strb	r0, [r2, #0x8]
	mov	r0, #0x0
	strh	r0, [r2, #0x16]
	pop	{r0}
	bx	r0
	thumb_func_end MDCPC_start
