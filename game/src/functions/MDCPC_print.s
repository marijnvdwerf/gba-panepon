	thumb_func_start MDCPC_print
MDCPC_print:
	push	{r4, r5, lr}
	add	r5, r1, #0
	mov	r4, #0x0
	mov	r1, #0xf
	and	r1, r1, r5
	lsl	r5, r1, #0xc
	add	r3, r0, #0
.LMDCPC_print_14:
	ldrb	r0, [r2]
	add	r2, r2, #0x1
	cmp	r0, #0xdf
	ble	.LMDCPC_print_1	@cond_branch
	sub	r0, r0, #0xfb
	cmp	r0, #0x4
	bhi	.LMDCPC_print_10	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .LMDCPC_print_4 @ .LMDCPC_print_3
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LMDCPC_print_5:
	.align	2, 0
.LMDCPC_print_4:
	.word	.LMDCPC_print_3
.LMDCPC_print_3:
	.word	.LMDCPC_print_6
	.word	.LMDCPC_print_7
	.word	.LMDCPC_print_8
	.word	.LMDCPC_print_10
	.word	.LMDCPC_print_10
.LMDCPC_print_8:
	mov	r4, #0x0
	b	.LMDCPC_print_14
.LMDCPC_print_7:
	mov	r4, #0xe0
	b	.LMDCPC_print_14
.LMDCPC_print_6:
	mov	r4, #0xe0
	lsl	r4, r4, #0x1
	b	.LMDCPC_print_14
.LMDCPC_print_1:
	add	r0, r0, r4
	orr	r0, r0, r5
	strh	r0, [r3]
	add	r3, r3, #0x2
	b	.LMDCPC_print_14
.LMDCPC_print_10:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end MDCPC_print
