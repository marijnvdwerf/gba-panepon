	thumb_func_start MDCPC_main
MDCPC_main:
	push	{r4, r5, lr}
	add	r4, r0, #0
.LMDCPC_main_47:
	ldrb	r1, [r4, #0x8]
	mov	r0, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LMDCPC_main_1	@cond_branch
	b	.LMDCPC_main_2
.LMDCPC_main_1:
	mov	r0, #0xfd
	and	r0, r0, r1
	strb	r0, [r4, #0x8]
	ldrh	r0, [r4, #0x16]
	cmp	r0, #0
	beq	.LMDCPC_main_3	@cond_branch
	b	.LMDCPC_main_46
.LMDCPC_main_3:
	ldr	r0, [r4, #0xc]
	ldrb	r5, [r0]
	add	r0, r0, #0x1
	str	r0, [r4, #0xc]
	cmp	r5, #0xdf
	ble	.LMDCPC_main_5	@cond_branch
	add	r0, r5, #0
	sub	r0, r0, #0xeb
	cmp	r0, #0x14
	bls	.LMDCPC_main_6	@cond_branch
	b	.LMDCPC_main_41
.LMDCPC_main_6:
	lsl	r0, r0, #0x2
	ldr	r1, .LMDCPC_main_9 @ .LMDCPC_main_8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LMDCPC_main_10:
	.align	2, 0
.LMDCPC_main_9:
	.word	.LMDCPC_main_8
.LMDCPC_main_8:
	.word	.LMDCPC_main_11
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_14
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_19
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_41
	.word	.LMDCPC_main_25
	.word	.LMDCPC_main_26
	.word	.LMDCPC_main_27
	.word	.LMDCPC_main_28
	.word	.LMDCPC_main_29
	.word	.LMDCPC_main_30
	.word	.LMDCPC_main_31
.LMDCPC_main_31:
	ldr	r0, [r4, #0xc]
	sub	r0, r0, #0x1
	str	r0, [r4, #0xc]
	ldrb	r1, [r4, #0x8]
	mov	r0, #0xfe
	and	r0, r0, r1
	mov	r1, #0x2
	orr	r0, r0, r1
	strb	r0, [r4, #0x8]
	mov	r0, #0x1
	b	.LMDCPC_main_40
.LMDCPC_main_30:
	ldrb	r0, [r4, #0x8]
	mov	r1, #0x2
	orr	r1, r1, r0
	strb	r1, [r4, #0x8]
	mov	r0, #0x1
	b	.LMDCPC_main_40
.LMDCPC_main_29:
	mov	r0, #0x0
	strb	r0, [r4, #0x14]
	b	.LMDCPC_main_41
.LMDCPC_main_28:
	mov	r0, #0x1
	strb	r0, [r4, #0x14]
	b	.LMDCPC_main_41
.LMDCPC_main_27:
	mov	r0, #0x2
	strb	r0, [r4, #0x14]
	b	.LMDCPC_main_41
.LMDCPC_main_26:
	add	r0, r4, #0
	bl	MDCPC_sub_CRLF
	b	.LMDCPC_main_41
.LMDCPC_main_25:
	add	r0, r4, #0
	bl	MDCPC_sub_PageClear
	b	.LMDCPC_main_41
.LMDCPC_main_19:
	add	r0, r4, #0
	bl	MDCPC_sub_TableJump
	b	.LMDCPC_main_41
.LMDCPC_main_14:
	ldr	r0, [r4, #0xc]
	ldrb	r1, [r0]
	add	r0, r0, #0x1
	str	r0, [r4, #0xc]
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x1
	b	.LMDCPC_main_40
.LMDCPC_main_11:
	ldr	r0, [r4, #0xc]
	ldrb	r1, [r0]
	add	r0, r0, #0x1
	str	r0, [r4, #0xc]
	mov	r0, #0xf
	and	r0, r0, r1
	strb	r0, [r4, #0x15]
	b	.LMDCPC_main_41
.LMDCPC_main_5:
	ldrb	r1, [r4, #0x10]
	ldrb	r0, [r4, #0x4]
	add	r1, r1, r0
	cmp	r1, r0
	blt	.LMDCPC_main_42	@cond_branch
	ldrb	r0, [r4, #0x6]
	cmp	r1, r0
	ble	.LMDCPC_main_43	@cond_branch
.LMDCPC_main_42:
	add	r0, r4, #0
	bl	MDCPC_sub_CRLF
.LMDCPC_main_43:
	ldrb	r1, [r4, #0x11]
	ldrb	r0, [r4, #0x5]
	add	r1, r1, r0
	add	r3, r0, #0
	cmp	r1, r3
	blt	.LMDCPC_main_44	@cond_branch
	ldrb	r0, [r4, #0x7]
	cmp	r1, r0
	ble	.LMDCPC_main_45	@cond_branch
.LMDCPC_main_44:
	mov	r0, #0x0
	strb	r0, [r4, #0x10]
	strb	r0, [r4, #0x11]
.LMDCPC_main_45:
	ldrb	r1, [r4, #0x10]
	ldrb	r0, [r4, #0x4]
	add	r1, r1, r0
	ldrb	r2, [r4, #0x11]
	add	r2, r2, r3
	lsl	r2, r2, #0x5
	add	r2, r2, r1
	ldr	r0, [r4]
	lsl	r2, r2, #0x1
	add	r2, r2, r0
	ldrb	r1, [r4, #0x14]
	lsl	r0, r1, #0x3
	sub	r0, r0, r1
	lsl	r0, r0, #0x5
	add	r0, r0, r5
	ldrb	r1, [r4, #0x15]
	lsl	r1, r1, #0xc
	orr	r0, r0, r1
	strh	r0, [r2]
	ldrb	r0, [r4, #0x10]
	add	r0, r0, #0x1
	strb	r0, [r4, #0x10]
	ldrb	r0, [r4, #0x12]
.LMDCPC_main_40:
	strh	r0, [r4, #0x16]
.LMDCPC_main_41:
	ldrh	r0, [r4, #0x16]
	cmp	r0, #0
	bne	.LMDCPC_main_46	@cond_branch
	b	.LMDCPC_main_47
.LMDCPC_main_46:
	sub	r0, r0, #0x1
	strh	r0, [r4, #0x16]
.LMDCPC_main_2:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end MDCPC_main
