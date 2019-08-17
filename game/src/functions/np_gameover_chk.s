	thumb_func_start np_gameover_chk
np_gameover_chk:
	push	{r4, lr}
	ldr	r0, .Lnp_gameover_chk_6 @ NRam
	ldr	r2, .Lnp_gameover_chk_6 + 4 @ 0xb1c
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r3, r0, #0
	cmp	r1, #0
	bne	.Lnp_gameover_chk_1	@cond_branch
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_1:
	ldr	r1, .Lnp_gameover_chk_6 + 8 @ 0xadc
	add	r0, r3, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnp_gameover_chk_3	@cond_branch
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_3:
	ldr	r0, .Lnp_gameover_chk_6 + 12 @ ARam
	ldrb	r1, [r0, #0x2]
	add	r4, r0, #0
	cmp	r1, #0x9
	bhi	.Lnp_gameover_chk_19	@cond_branch
	lsl	r0, r1, #0x2
	ldr	r1, .Lnp_gameover_chk_6 + 16 @ .Lnp_gameover_chk_8
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_gameover_chk_7:
	.align	2, 0
.Lnp_gameover_chk_6:
	.word	NRam
	.word	0xb1c
	.word	0xadc
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
	ldr	r2, .Lnp_gameover_chk_22 @ 0xb04
	add	r0, r3, r2
	ldrb	r2, [r0]
	cmp	r2, #0
	bne	.Lnp_gameover_chk_20	@cond_branch
	ldr	r1, .Lnp_gameover_chk_22 + 4 @ 0xadd
	add	r0, r3, r1
	strb	r2, [r0]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_23:
	.align	2, 0
.Lnp_gameover_chk_22:
	.word	0xb04
	.word	0xadd
.Lnp_gameover_chk_20:
	ldr	r2, .Lnp_gameover_chk_30 @ 0xb34
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
	ldr	r2, .Lnp_gameover_chk_30 + 8 @ 0xc44
	add	r1, r3, r2
	ldrh	r2, [r0]
	ldrh	r0, [r1]
	and	r0, r0, r2
	cmp	r0, #0
	bne	.Lnp_gameover_chk_28	@cond_branch
	ldr	r0, .Lnp_gameover_chk_30 + 12 @ 0xadd
	add	r2, r3, r0
	ldr	r1, .Lnp_gameover_chk_30 + 16 @ 0xad9
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
	.word	0xb34
	.word	KeyRead_Now
	.word	0xc44
	.word	0xadd
	.word	0xad9
.Lnp_gameover_chk_28:
	ldr	r2, .Lnp_gameover_chk_33 @ 0xadc
	add	r1, r3, r2
	mov	r2, #0x0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r1, .Lnp_gameover_chk_33 + 4 @ 0xc48
	add	r0, r3, r1
	strb	r2, [r0]
	ldrb	r0, [r4, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_gameover_chk_52	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_gameover_chk_33 + 8 @ .Lnp_gameover_chk_35
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_gameover_chk_34:
	.align	2, 0
.Lnp_gameover_chk_33:
	.word	0xadc
	.word	0xc48
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
	ldr	r2, .Lnp_gameover_chk_47 @ 0xade
	add	r1, r3, r2
	mov	r0, #0x0
	strb	r0, [r1]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_48:
	.align	2, 0
.Lnp_gameover_chk_47:
	.word	0xade
.Lnp_gameover_chk_44:
	ldr	r0, .Lnp_gameover_chk_50 @ 0xade
	add	r1, r3, r0
	mov	r0, #0x2
	strb	r0, [r1]
	ldr	r2, .Lnp_gameover_chk_50 + 4 @ 0xc32
	add	r1, r3, r2
	mov	r0, #0x1
	strb	r0, [r1]
	b	.Lnp_gameover_chk_49
.Lnp_gameover_chk_51:
	.align	2, 0
.Lnp_gameover_chk_50:
	.word	0xade
	.word	0xc32
.Lnp_gameover_chk_52:
	b	.Lnp_gameover_chk_52
.Lnp_gameover_chk_49:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end np_gameover_chk
