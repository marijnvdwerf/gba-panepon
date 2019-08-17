	thumb_func_start nswp_objput
nswp_objput:
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .Lnswp_objput_3 @ NRam
	ldr	r1, .Lnswp_objput_3 + 4 @ 0xafe
	add	r0, r5, r1
	ldrb	r4, [r0]
	ldrb	r0, [r5, #0x6]
	sub	r0, r4, r0
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	ldrb	r1, [r5, #0x5]
	sub	r1, r4, r1
	lsl	r1, r1, #0x10
	mov	r0, #0xff
	lsl	r0, r0, #0x10
	and	r0, r0, r1
	lsr	r3, r0, #0x10
	add	r4, r3, #0
	mov	r7, #0xb0
	lsl	r7, r7, #0x4
	add	r2, r5, r7
	ldrh	r0, [r2]
	ldr	r6, .Lnswp_objput_3 + 8 @ 0xffff
	cmp	r0, r6
	beq	.Lnswp_objput_1	@cond_branch
	ldr	r1, .Lnswp_objput_3 + 12 @ 0xafc
	add	r0, r5, r1
	ldrb	r1, [r0]
	mov	r7, #0x80
	lsl	r7, r7, #0x7
	add	r0, r7, #0
	orr	r1, r1, r0
	ldrh	r2, [r2]
	add	r0, r3, #0
	bl	NisCtc_Obj1Put
.Lnswp_objput_1:
	ldr	r0, .Lnswp_objput_3 + 16 @ 0xb02
	add	r2, r5, r0
	ldrh	r0, [r2]
	cmp	r0, r6
	beq	.Lnswp_objput_2	@cond_branch
	ldr	r1, .Lnswp_objput_3 + 20 @ 0xafd
	add	r0, r5, r1
	ldrb	r1, [r0]
	mov	r3, #0x80
	lsl	r3, r3, #0x7
	add	r0, r3, #0
	orr	r1, r1, r0
	ldrh	r2, [r2]
	add	r0, r4, #0
	bl	NisCtc_Obj1Put
.Lnswp_objput_2:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnswp_objput_4:
	.align	2, 0
.Lnswp_objput_3:
	.word	NRam
	.word	0xafe
	.word	0xffff
	.word	0xafc
	.word	0xb02
	.word	0xafd
	thumb_func_end nswp_objput
