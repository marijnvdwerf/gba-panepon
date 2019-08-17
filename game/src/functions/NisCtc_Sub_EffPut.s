	thumb_func_start NisCtc_Sub_EffPut
NisCtc_Sub_EffPut:
	push	{r4, r5, r6, r7, lr}
	add	r7, r0, #0
	ldr	r3, [r7, #0x18]
	cmp	r3, #0
	bne	.LNisCtc_Sub_EffPut_1	@cond_branch
	b	.LNisCtc_Sub_EffPut_11
.LNisCtc_Sub_EffPut_1:
	ldr	r1, .LNisCtc_Sub_EffPut_14 @ OamParaIdx
	ldrh	r0, [r1]
	mov	ip, r0
	ldrh	r6, [r3]
	add	r3, r3, #0x2
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r6
	add	r5, r1, #0
	cmp	r0, #0
	beq	.LNisCtc_Sub_EffPut_3	@cond_branch
.LNisCtc_Sub_EffPut_8:
	ldr	r0, .LNisCtc_Sub_EffPut_14 + 4 @ 0x7fff
	and	r6, r6, r0
	ldrh	r1, [r5]
	add	r2, r1, r6
	cmp	r2, #0x20
	ble	.LNisCtc_Sub_EffPut_4	@cond_branch
	b	.LNisCtc_Sub_EffPut_11
.LNisCtc_Sub_EffPut_4:
	lsl	r1, r1, #0x5
	ldr	r0, .LNisCtc_Sub_EffPut_14 + 8 @ OamBak
	add	r4, r1, r0
	add	r4, r4, #0x6
	strh	r2, [r5]
	cmp	r6, #0
	ble	.LNisCtc_Sub_EffPut_6	@cond_branch
.LNisCtc_Sub_EffPut_7:
	ldrh	r0, [r3]
	strh	r0, [r4]
	add	r3, r3, #0x2
	add	r4, r4, #0x8
	ldrh	r0, [r3]
	strh	r0, [r4]
	add	r3, r3, #0x2
	add	r4, r4, #0x8
	ldrh	r0, [r3]
	strh	r0, [r4]
	add	r3, r3, #0x2
	add	r4, r4, #0x8
	ldrh	r0, [r3]
	strh	r0, [r4]
	add	r3, r3, #0x2
	add	r4, r4, #0x8
	sub	r6, r6, #0x1
	cmp	r6, #0
	bgt	.LNisCtc_Sub_EffPut_7	@cond_branch
.LNisCtc_Sub_EffPut_6:
	ldrh	r6, [r3]
	add	r3, r3, #0x2
	mov	r0, #0x80
	lsl	r0, r0, #0x8
	and	r0, r0, r6
	cmp	r0, #0
	bne	.LNisCtc_Sub_EffPut_8	@cond_branch
.LNisCtc_Sub_EffPut_3:
	ldr	r5, .LNisCtc_Sub_EffPut_14 + 12 @ OamIdx
	ldrh	r2, [r5]
	mov	r0, #0x80
	sub	r0, r0, r2
	cmp	r0, #0
	ble	.LNisCtc_Sub_EffPut_11	@cond_branch
	cmp	r6, r0
	ble	.LNisCtc_Sub_EffPut_10	@cond_branch
	add	r6, r0, #0
.LNisCtc_Sub_EffPut_10:
	lsl	r0, r2, #0x3
	ldr	r1, .LNisCtc_Sub_EffPut_14 + 8 @ OamBak
	add	r4, r0, r1
	add	r0, r2, r6
	strh	r0, [r5]
	cmp	r6, #0
	ble	.LNisCtc_Sub_EffPut_11	@cond_branch
.LNisCtc_Sub_EffPut_13:
	ldrh	r2, [r3]
	add	r3, r3, #0x2
	ldr	r1, [r7, #0xc]
	add	r1, r2, r1
	lsl	r1, r1, #0x10
	mov	r0, #0xff
	lsl	r0, r0, #0x10
	and	r0, r0, r1
	mov	r1, #0xff
	lsl	r1, r1, #0x8
	and	r2, r2, r1
	lsr	r0, r0, #0x10
	orr	r0, r0, r2
	strh	r0, [r4]
	add	r4, r4, #0x2
	ldrh	r2, [r3]
	add	r3, r3, #0x2
	mov	r0, #0x80
	lsl	r0, r0, #0x6
	and	r0, r0, r2
	cmp	r0, #0
	beq	.LNisCtc_Sub_EffPut_12	@cond_branch
	mov	r1, ip
	lsl	r0, r1, #0x9
	add	r0, r2, r0
	lsl	r0, r0, #0x10
	mov	r1, #0xf0
	lsl	r1, r1, #0x15
	and	r1, r1, r0
	ldr	r0, .LNisCtc_Sub_EffPut_14 + 16 @ 0xc1ff
	and	r2, r2, r0
	lsr	r1, r1, #0x10
	orr	r2, r2, r1
.LNisCtc_Sub_EffPut_12:
	ldr	r0, [r7, #0x10]
	add	r0, r2, r0
	lsl	r0, r0, #0x17
	lsr	r5, r0, #0x17
	mov	r0, #0xfe
	lsl	r0, r0, #0x8
	and	r2, r2, r0
	orr	r2, r2, r5
	strh	r2, [r4]
	add	r4, r4, #0x2
	ldrh	r2, [r3]
	add	r3, r3, #0x2
	ldrh	r5, [r7, #0x1c]
	add	r0, r5, r2
	lsl	r0, r0, #0x16
	lsr	r5, r0, #0x16
	mov	r1, #0xfc
	lsl	r1, r1, #0x8
	and	r1, r1, r2
	orr	r1, r1, r5
	ldrh	r5, [r7, #0x1e]
	lsl	r0, r5, #0x1c
	lsr	r5, r0, #0x10
	add	r0, r5, r1
	lsl	r0, r0, #0x10
	mov	r2, #0xf0
	lsl	r2, r2, #0x18
	and	r2, r2, r0
	ldr	r0, .LNisCtc_Sub_EffPut_14 + 20 @ 0xfff
	and	r1, r1, r0
	lsr	r2, r2, #0x10
	orr	r2, r2, r1
	ldrh	r5, [r7, #0x20]
	lsl	r0, r5, #0x1a
	lsr	r5, r0, #0x10
	add	r1, r5, r2
	lsl	r1, r1, #0x10
	mov	r0, #0xc0
	lsl	r0, r0, #0x14
	and	r0, r0, r1
	ldr	r1, .LNisCtc_Sub_EffPut_14 + 24 @ 0xf3ff
	and	r2, r2, r1
	lsr	r0, r0, #0x10
	orr	r0, r0, r2
	strh	r0, [r4]
	add	r4, r4, #0x4
	sub	r6, r6, #0x1
	cmp	r6, #0
	bgt	.LNisCtc_Sub_EffPut_13	@cond_branch
.LNisCtc_Sub_EffPut_11:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.LNisCtc_Sub_EffPut_15:
	.align	2, 0
.LNisCtc_Sub_EffPut_14:
	.word	OamParaIdx
	.word	0x7fff
	.word	OamBak
	.word	OamIdx
	.word	0xc1ff
	.word	0xfff
	.word	0xf3ff
	thumb_func_end NisCtc_Sub_EffPut
