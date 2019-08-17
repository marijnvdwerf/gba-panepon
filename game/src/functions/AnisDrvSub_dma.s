	thumb_func_start AnisDrvSub_dma
AnisDrvSub_dma:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #0xfffffffc
	ldr	r2, [r0]
	ldrb	r4, [r2]
	ldr	r3, .LAnisDrvSub_dma_3 @ 0xffffff00
	ldr	r1, [sp]
	and	r1, r1, r3
	orr	r1, r1, r4
	str	r1, [sp]
	add	r2, r2, #0x1
	str	r2, [r0]
	mov	r4, sp
	ldrb	r1, [r2]
	strb	r1, [r4, #0x1]
	add	r3, r2, #1
	str	r3, [r0]
	ldrb	r1, [r2, #0x1]
	strb	r1, [r4, #0x2]
	add	r1, r3, #1
	str	r1, [r0]
	ldrb	r2, [r3, #0x1]
	strb	r2, [r4, #0x3]
	add	r1, r1, #0x1
	str	r1, [r0]
	ldr	r2, [sp]
	ldmia	r2!, {r1}
	lsl	r1, r1, #0x10
	lsr	r7, r1, #0x10
	str	r2, [sp]
	ldr	r6, [r0, #0x24]
	ldr	r4, .LAnisDrvSub_dma_3 + 4 @ PrbRam
	add	r5, r2, #0
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.LAnisDrvSub_dma_1	@cond_branch
	strb	r0, [r4, #0x8]
	b	.LAnisDrvSub_dma_5
.LAnisDrvSub_dma_4:
	.align	2, 0
.LAnisDrvSub_dma_3:
	.word	0xffffff00
	.word	PrbRam
.LAnisDrvSub_dma_1:
	ldrb	r0, [r4, #0x8]
	cmp	r0, #0x1f
	bls	.LAnisDrvSub_dma_5	@cond_branch
.LAnisDrvSub_dma_6:
	b	.LAnisDrvSub_dma_6
.LAnisDrvSub_dma_5:
	ldrb	r1, [r4, #0x8]
	add	r0, r1, #1
	mov	r2, #0x0
	strb	r0, [r4, #0x8]
	lsl	r3, r1, #0x4
	add	r0, r3, r4
	str	r2, [r0, #0xc]
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.LAnisDrvSub_dma_7	@cond_branch
	add	r0, r3, #0
	add	r0, r0, #0xc
	add	r0, r4, r0
	str	r0, [r4, #0x4]
	str	r0, [r4]
	b	.LAnisDrvSub_dma_8
.LAnisDrvSub_dma_7:
	ldr	r1, [r4, #0x4]
	add	r0, r3, #0
	add	r0, r0, #0xc
	add	r0, r4, r0
	str	r0, [r1]
	str	r0, [r4, #0x4]
.LAnisDrvSub_dma_8:
	ldr	r0, [r4, #0x4]
	str	r5, [r0, #0x4]
	str	r6, [r0, #0x8]
	strh	r7, [r0, #0xc]
	add	sp, sp, #0x4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvSub_dma
