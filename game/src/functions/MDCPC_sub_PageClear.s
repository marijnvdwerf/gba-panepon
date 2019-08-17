	thumb_func_start MDCPC_sub_PageClear
MDCPC_sub_PageClear:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	r3, r0, #0
	ldrb	r0, [r3, #0x4]
	mov	ip, r0
	ldrb	r6, [r3, #0x6]
	ldrb	r1, [r3, #0x7]
	mov	r9, r1
	ldrb	r0, [r3, #0x5]
	cmp	r0, r9
	bgt	.LMDCPC_sub_PageClear_1	@cond_branch
	mov	r7, ip
	lsl	r7, r7, #0x1
	mov	r8, r7
.LMDCPC_sub_PageClear_4:
	mov	r2, ip
	add	r4, r0, #1
	cmp	r2, r6
	bgt	.LMDCPC_sub_PageClear_2	@cond_branch
	ldr	r1, [r3]
	ldr	r7, .LMDCPC_sub_PageClear_5 @ 0x203f
	add	r5, r7, #0
	lsl	r0, r0, #0x6
	add	r0, r0, r1
	add r0, r0, r8
.LMDCPC_sub_PageClear_3:
	strh	r5, [r0]
	add	r0, r0, #0x2
	add	r2, r2, #0x1
	cmp	r2, r6
	ble	.LMDCPC_sub_PageClear_3	@cond_branch
.LMDCPC_sub_PageClear_2:
	add	r0, r4, #0
	cmp	r0, r9
	ble	.LMDCPC_sub_PageClear_4	@cond_branch
.LMDCPC_sub_PageClear_1:
	mov	r0, #0x0
	strb	r0, [r3, #0x10]
	strb	r0, [r3, #0x11]
	mov	r0, #0x1
	strh	r0, [r3, #0x16]
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LMDCPC_sub_PageClear_6:
	.align	2, 0
.LMDCPC_sub_PageClear_5:
	.word	0x203f
	thumb_func_end MDCPC_sub_PageClear
