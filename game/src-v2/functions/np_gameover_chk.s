	thumb_func_start np_gameover_chk
np_gameover_chk:
	push	{r4, lr}
	ldr	r0, .Lnp_gameover_chk_6 @ NRam
	mov	r2, #0xaa
	lsl	r2, r2, #0x4
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.Lnp_gameover_chk_1	@cond_branch
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_1:
	mov	r1, #0xa6
	lsl	r1, r1, #0x4
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_gameover_chk_3	@cond_branch
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_3:
	ldr	r0, .Lnp_gameover_chk_6 + 4 @ ARam
	ldrb	r1, [r0, #0x2]
	add	r4, r0, #0
	cmp	r1, #0x9
	bhi	.Lnp_gameover_chk_19	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnp_gameover_chk_6 + 8 @ .Lnp_gameover_chk_8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_gameover_chk_7:
	.align	2, 0
.Lnp_gameover_chk_6:
	.word	NRam
	.word	ARam
	.word	.Lnp_gameover_chk_8
.Lnp_gameover_chk_8:
	.word	.Lnp_gameover_chk_17
	.word	.Lnp_gameover_chk_49
	.word	.Lnp_gameover_chk_17
	.word	.Lnp_gameover_chk_49
	.word	.Lnp_gameover_chk_17
	.word	.Lnp_gameover_chk_49
	.word	.Lnp_gameover_chk_17
	.word	.Lnp_gameover_chk_49
	.word	.Lnp_gameover_chk_17
	.word	.Lnp_gameover_chk_49
.Lnp_gameover_chk_19:
	b	.Lnp_gameover_chk_19
.Lnp_gameover_chk_17:
	ldr	r2, .Lnp_gameover_chk_22 @ 0xa88
	add	r0, r3, r2
	ldrb	r2, [r0]
	cmp	r2, #0
	bne	.Lnp_gameover_chk_20	@cond_branch
	ldr	r1, .Lnp_gameover_chk_22 + 4 @ 0xa61
	add	r0, r3, r1
	strb	r2, [r0]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_23:
	.align	2, 0
.Lnp_gameover_chk_22:
	.word	0xa88
	.word	0xa61
.Lnp_gameover_chk_20:
	ldr	r2, .Lnp_gameover_chk_30 @ 0xab8
	add	r0, r3, r2
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_gameover_chk_49	@cond_branch
	ldrb	r0, [r3, #0x6]
	cmp	r0, #0
	bne	.Lnp_gameover_chk_49	@cond_branch
	ldrb	r0, [r3, #0x7]
	cmp	r0, #0
	beq	.Lnp_gameover_chk_49	@cond_branch
	ldr	r0, .Lnp_gameover_chk_30 + 4 @ KeyRead_Now
	ldr	r2, .Lnp_gameover_chk_30 + 8 @ 0xbc8
	add	r1, r3, r2
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	and	r0, r0, r2
	cmp	r0, #0
	bne	.Lnp_gameover_chk_28	@cond_branch
	ldr	r0, .Lnp_gameover_chk_30 + 12 @ 0xa61
	add	r2, r3, r0
	ldr	r1, .Lnp_gameover_chk_30 + 16 @ 0xa59
	add	r0, r3, r1
	ldrb	r1, [r2]
	ldrb	r0, [r0]
	cmp	r1, r0
	bcs	.Lnp_gameover_chk_28	@cond_branch
	add	r0, r1, #1
	strb	r0, [r2]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_31:
	.align	2, 0
.Lnp_gameover_chk_30:
	.word	0xab8
	.word	KeyRead_Now
	.word	0xbc8
	.word	0xa61
	.word	0xa59
.Lnp_gameover_chk_28:
	mov	r2, #0xa6
	lsl	r2, r2, #0x4
	add	r1, r3, r2
	mov	r2, #0x0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r1, .Lnp_gameover_chk_33 @ 0xbcc
	add	r0, r3, r1
	strb	r2, [r0]
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_gameover_chk_52	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_gameover_chk_33 + 4 @ .Lnp_gameover_chk_35
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_gameover_chk_34:
	.align	2, 0
.Lnp_gameover_chk_33:
	.word	0xbcc
	.word	.Lnp_gameover_chk_35
.Lnp_gameover_chk_35:
	.word	.Lnp_gameover_chk_45
	.word	.Lnp_gameover_chk_45
	.word	.Lnp_gameover_chk_45
	.word	.Lnp_gameover_chk_45
	.word	.Lnp_gameover_chk_45
	.word	.Lnp_gameover_chk_44
	.word	.Lnp_gameover_chk_44
	.word	.Lnp_gameover_chk_44
	.word	.Lnp_gameover_chk_44
	.word	.Lnp_gameover_chk_45
.Lnp_gameover_chk_45:
	ldr	r2, .Lnp_gameover_chk_47 @ 0xa62
	add	r1, r3, r2
	mov	r0, #0x0
	strb	r0, [r1]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_48:
	.align	2, 0
.Lnp_gameover_chk_47:
	.word	0xa62
.Lnp_gameover_chk_44:
	ldr	r0, .Lnp_gameover_chk_50 @ 0xa62
	add	r1, r3, r0
	mov	r0, #0x2
	strb	r0, [r1]
	ldr	r2, .Lnp_gameover_chk_50 + 4 @ 0xbb6
	add	r1, r3, r2
	mov	r0, #0x1
	strb	r0, [r1]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_51:
	.align	2, 0
.Lnp_gameover_chk_50:
	.word	0xa62
	.word	0xbb6
.Lnp_gameover_chk_52:
	b	.Lnp_gameover_chk_52
.Lnp_gameover_chk_49:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_gameover_chk
