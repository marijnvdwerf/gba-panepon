	thumb_func_start nswp_1switchend
nswp_1switchend:
	push	{lr}
	add	r2, r0, #0
	ldrb	r0, [r2, #0x2]
	cmp	r0, #0
	bne	.Lnswp_1switchend_1	@cond_branch
	ldr	r1, .Lnswp_1switchend_4 @ NRam
	ldr	r3, .Lnswp_1switchend_4 + 4 @ 0xaf2
	add	r0, r1, r3
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnswp_1switchend_26	@cond_branch
	add	r0, r2, #0
	sub	r0, r0, #0x30
	ldr	r2, .Lnswp_1switchend_4 + 8 @ 0xad3
	add	r1, r1, r2
	ldrb	r1, [r1]
	b	.Lnswp_1switchend_3
.Lnswp_1switchend_5:
	.align	2, 0
.Lnswp_1switchend_4:
	.word	NRam
	.word	0xaf2
	.word	0xad3
.Lnswp_1switchend_1:
	cmp	r0, #0
	blt	.Lnswp_1switchend_26	@cond_branch
	cmp	r0, #0x4
	bgt	.Lnswp_1switchend_26	@cond_branch
	cmp	r0, #0x3
	blt	.Lnswp_1switchend_26	@cond_branch
	ldrb	r1, [r2]
	cmp	r1, #0x9
	beq	.Lnswp_1switchend_26	@cond_branch
	cmp	r1, #0xa
	beq	.Lnswp_1switchend_26	@cond_branch
	add	r0, r1, #0
	sub	r0, r0, #0xb
	cmp	r0, #0x1a
	bls	.Lnswp_1switchend_26	@cond_branch
	strb	r1, [r2, #0x1]
	add	r0, r2, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0x8
	bhi	.Lnswp_1switchend_29	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnswp_1switchend_14 @ .Lnswp_1switchend_13
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnswp_1switchend_15:
	.align	2, 0
.Lnswp_1switchend_14:
	.word	.Lnswp_1switchend_13
.Lnswp_1switchend_13:
	.word	.Lnswp_1switchend_23
	.word	.Lnswp_1switchend_24
	.word	.Lnswp_1switchend_24
	.word	.Lnswp_1switchend_29
	.word	.Lnswp_1switchend_29
	.word	.Lnswp_1switchend_23
	.word	.Lnswp_1switchend_23
	.word	.Lnswp_1switchend_23
	.word	.Lnswp_1switchend_24
.Lnswp_1switchend_24:
	mov	r0, #0x1
	strb	r0, [r2, #0x2]
	b	.Lnswp_1switchend_26
.Lnswp_1switchend_23:
	mov	r0, #0x1
	strb	r0, [r2, #0x2]
	ldr	r0, .Lnswp_1switchend_27 @ NRam
	ldr	r3, .Lnswp_1switchend_27 + 4 @ 0xad3
	add	r0, r0, r3
	ldrb	r1, [r0]
	add	r0, r2, #0
.Lnswp_1switchend_3:
	mov	r2, #0x0
	bl	np_rakka_stto_nf
	b	.Lnswp_1switchend_26
.Lnswp_1switchend_28:
	.align	2, 0
.Lnswp_1switchend_27:
	.word	NRam
	.word	0xad3
.Lnswp_1switchend_29:
	b	.Lnswp_1switchend_29
.Lnswp_1switchend_26:
	pop	{r0}
	bx	r0
	thumb_func_end nswp_1switchend
