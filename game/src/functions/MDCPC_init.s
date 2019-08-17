	thumb_func_start MDCPC_init
MDCPC_init:
	push	{r4, r5, r6, lr}
	add	r4, r0, #0
	add	r5, r1, #0
	add	r6, r2, #0
	mov	r1, #0x18
	mov	r2, #0x0
.LMDCPC_init_1:
	strb	r2, [r0]
	add	r0, r0, #0x1
	sub	r1, r1, #0x1
	cmp	r1, #0
	bne	.LMDCPC_init_1	@cond_branch
	str	r5, [r4]
	strb	r6, [r4, #0x4]
	strb	r3, [r4, #0x5]
	ldr	r0, [sp, #0x10]
	strb	r0, [r4, #0x6]
	ldr	r0, [sp, #0x14]
	strb	r0, [r4, #0x7]
	ldr	r0, [sp, #0x18]
	strb	r0, [r4, #0x12]
	ldr	r0, [sp, #0x1c]
	strb	r0, [r4, #0x13]
	ldr	r0, [sp, #0x20]
	strb	r0, [r4, #0x15]
	add	r0, r4, #0
	ldr	r1, [sp, #0x24]
	bl	MDCPC_start
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end MDCPC_init
