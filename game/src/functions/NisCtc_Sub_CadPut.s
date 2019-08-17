	thumb_func_start NisCtc_Sub_CadPut
NisCtc_Sub_CadPut:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	ldr	r4, [r7, #0x18]
	cmp	r4, #0
	beq	.LNisCtc_Sub_CadPut_9	@cond_branch
	ldr	r1, .LNisCtc_Sub_CadPut_12 @ OamParaIdx
	ldrh	r0, [r1]
	mov	ip, r0
	ldrh	r5, [r4]
	add	r4, r4, #0x2
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r5
	add	r6, r1, #0
	cmp	r0, #0
	beq	.LNisCtc_Sub_CadPut_2	@cond_branch
.LNisCtc_Sub_CadPut_6:
	ldr	r0, .LNisCtc_Sub_CadPut_12 + 4 @ 0x7fff
	and	r5, r5, r0
	ldrh	r1, [r6]
	add	r2, r1, r5
	cmp	r2, #0x20
	bgt	.LNisCtc_Sub_CadPut_9	@cond_branch
	lsl	r1, r1, #0x5
	ldr	r0, .LNisCtc_Sub_CadPut_12 + 8 @ OamBak
	add	r3, r1, r0
	add	r3, r3, #0x6
	strh	r2, [r6]
	cmp	r5, #0
	ble	.LNisCtc_Sub_CadPut_4	@cond_branch
.LNisCtc_Sub_CadPut_5:
	ldrh	r0, [r4]
	strh	r0, [r3]
	add	r4, r4, #0x2
	add	r3, r3, #0x8
	ldrh	r0, [r4]
	strh	r0, [r3]
	add	r4, r4, #0x2
	add	r3, r3, #0x8
	ldrh	r0, [r4]
	strh	r0, [r3]
	add	r4, r4, #0x2
	add	r3, r3, #0x8
	ldrh	r0, [r4]
	strh	r0, [r3]
	add	r4, r4, #0x2
	add	r3, r3, #0x8
	sub	r5, r5, #0x1
	cmp	r5, #0
	bgt	.LNisCtc_Sub_CadPut_5	@cond_branch
.LNisCtc_Sub_CadPut_4:
	ldrh	r5, [r4]
	add	r4, r4, #0x2
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r5
	cmp	r0, #0
	bne	.LNisCtc_Sub_CadPut_6	@cond_branch
.LNisCtc_Sub_CadPut_2:
	ldr	r6, .LNisCtc_Sub_CadPut_12 + 12 @ OamIdx
	ldrh	r2, [r6]
	mov	r0, #0x80
	sub	r0, r0, r2
	cmp	r0, #0
	ble	.LNisCtc_Sub_CadPut_9	@cond_branch
	cmp	r5, r0
	ble	.LNisCtc_Sub_CadPut_8	@cond_branch
	add	r5, r0, #0
.LNisCtc_Sub_CadPut_8:
	lsl	r0, r2, #0x3
	ldr	r1, .LNisCtc_Sub_CadPut_12 + 8 @ OamBak
	add	r3, r0, r1
	add	r0, r2, r5
	strh	r0, [r6]
	cmp	r5, #0
	ble	.LNisCtc_Sub_CadPut_9	@cond_branch
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	mov	sl, r1
	mov	r2, #0x80
	lsl	r2, r2, #0x6
	mov	r9, r2
	mov	r0, #0xf0
	lsl	r0, r0, #0x5
	mov	r8, r0
	ldr	r6, .LNisCtc_Sub_CadPut_12 + 16 @ 0xc1ff
.LNisCtc_Sub_CadPut_11:
	ldrh	r2, [r4]
	add	r4, r4, #0x2
	ldr	r1, [r7, #0xc]
	add	r1, r2, r1
	lsl	r1, r1, #0x10
	mov	r0, #0xff
	lsl	r0, r0, #0x10
	and	r0, r0, r1
	mov	r1, sl
	and	r2, r2, r1
	lsr	r0, r0, #0x10
	orr	r0, r0, r2
	strh	r0, [r3]
	add	r3, r3, #0x2
	ldrh	r1, [r4]
	add	r4, r4, #0x2
	add	r0, r1, #0
	mov	r2, r9
	and	r0, r0, r2
	cmp	r0, #0
	beq	.LNisCtc_Sub_CadPut_10	@cond_branch
	mov	r2, ip
	lsl	r0, r2, #0x9
	add	r0, r1, r0
	mov	r2, r8
	and	r0, r0, r2
	and	r1, r1, r6
	orr	r1, r1, r0
.LNisCtc_Sub_CadPut_10:
	ldr	r0, [r7, #0x10]
	add	r0, r1, r0
	lsl	r0, r0, #0x17
	lsr	r2, r0, #0x17
	mov	r0, #0xfe
	lsl	r0, r0, #0x8
	and	r1, r1, r0
	orr	r1, r1, r2
	strh	r1, [r3]
	add	r3, r3, #0x2
	ldrh	r0, [r4]
	add	r4, r4, #0x2
	strh	r0, [r3]
	add	r3, r3, #0x4
	sub	r5, r5, #0x1
	cmp	r5, #0
	bgt	.LNisCtc_Sub_CadPut_11	@cond_branch
.LNisCtc_Sub_CadPut_9:
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtc_Sub_CadPut_13:
	.align	2, 0
.LNisCtc_Sub_CadPut_12:
	.word	OamParaIdx
	.word	0x7fff
	.word	OamBak
	.word	OamIdx
	.word	0xc1ff
	thumb_func_end NisCtc_Sub_CadPut
