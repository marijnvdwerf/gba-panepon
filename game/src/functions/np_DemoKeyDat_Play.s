	thumb_func_start np_DemoKeyDat_Play
np_DemoKeyDat_Play:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	ldr	r0, .Lnp_DemoKeyDat_Play_19 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	beq	.Lnp_DemoKeyDat_Play_1	@cond_branch
	b	.Lnp_DemoKeyDat_Play_18
.Lnp_DemoKeyDat_Play_1:
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 4 @ KeyRead_Trg
	ldrh	r1, [r0]
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 8 @ 0x3f7
	and	r0, r0, r1
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 12 @ NRam
	mov	r8, r1
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_3	@cond_branch
	mov	r1, #0xc6
	lsl	r1, r1, #0x4
	add r1, r1, r8
	mov	r2, #0x0
	mov	r0, #0x1
	strb	r0, [r1]
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 16 @ 0xc58
	add r0, r0, r8
	str	r2, [r0]
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 20 @ 0xc5c
	add r1, r1, r8
	mov	r0, #0x96
	lsl	r0, r0, #0x2
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_3:
	mov	r4, #0xc6
	lsl	r4, r4, #0x4
	add r4, r4, r8
	ldrb	r0, [r4]
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_4	@cond_branch
	mov	r2, r8
	ldrb	r0, [r2, #0x7]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_5	@cond_branch
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 20 @ 0xc5c
	add r1, r1, r8
	mov	r0, #0x96
	lsl	r0, r0, #0x2
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_5:
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 20 @ 0xc5c
	add r1, r1, r8
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_6	@cond_branch
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 24 @ NisTitleInit + 1
	bl	MainSeqSearchNear
.Lnp_DemoKeyDat_Play_6:
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_7	@cond_branch
.Lnp_DemoKeyDat_Play_4:
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 16 @ 0xc58
	add r0, r0, r8
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_8	@cond_branch
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 24 @ NisTitleInit + 1
	bl	MainSeqSearchNear
.Lnp_DemoKeyDat_Play_7:
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 12 @ NRam
	ldr	r3, .Lnp_DemoKeyDat_Play_19 + 16 @ 0xc58
	add	r1, r0, r3
	ldr	r1, [r1]
	mov	r8, r0
	cmp	r1, #0
	beq	.Lnp_DemoKeyDat_Play_18	@cond_branch
.Lnp_DemoKeyDat_Play_8:
	ldr	r2, .Lnp_DemoKeyDat_Play_19 + 28 @ 0xfc0c
	ldr	r7, .Lnp_DemoKeyDat_Play_19 + 4 @ KeyRead_Trg
	ldrh	r6, [r7]
	and	r6, r6, r2
	strh	r6, [r7]
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 32 @ KeyRead_Now
	ldrh	r0, [r1]
	and	r0, r0, r2
	strh	r0, [r1]
	ldr	r4, .Lnp_DemoKeyDat_Play_19 + 36 @ KeyRead_Rpt
	ldrh	r3, [r4]
	and	r3, r3, r2
	strh	r3, [r4]
	ldr	r0, .Lnp_DemoKeyDat_Play_19 + 20 @ 0xc5c
	add r0, r0, r8
	mov	ip, r0
	ldrh	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_17	@cond_branch
	ldr	r1, .Lnp_DemoKeyDat_Play_19 + 40 @ 0xc5e
	add r1, r1, r8
	mov	r9, r1
	ldrh	r5, [r1]
	mov	r0, #0x1
	and	r0, r0, r5
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_11	@cond_branch
	mov	r1, #0x40
	add	r0, r3, #0
	orr	r0, r0, r1
	strh	r0, [r4]
.Lnp_DemoKeyDat_Play_11:
	mov	r0, #0x2
	and	r0, r0, r5
	add	r2, r5, #0
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_12	@cond_branch
	ldrh	r0, [r4]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r4]
.Lnp_DemoKeyDat_Play_12:
	mov	r0, #0x4
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_13	@cond_branch
	ldrh	r0, [r4]
	mov	r1, #0x20
	orr	r0, r0, r1
	strh	r0, [r4]
.Lnp_DemoKeyDat_Play_13:
	mov	r0, #0x8
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_14	@cond_branch
	ldrh	r0, [r4]
	mov	r1, #0x10
	orr	r0, r0, r1
	strh	r0, [r4]
.Lnp_DemoKeyDat_Play_14:
	mov	r0, #0x10
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_15	@cond_branch
	add	r0, r6, #0
	mov	r1, #0x1
	orr	r0, r0, r1
	strh	r0, [r7]
.Lnp_DemoKeyDat_Play_15:
	mov	r0, #0x20
	and	r0, r0, r5
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_16	@cond_branch
	ldrh	r0, [r7]
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	add	r1, r2, #0
	orr	r0, r0, r1
	strh	r0, [r7]
.Lnp_DemoKeyDat_Play_16:
	ldr	r2, .Lnp_DemoKeyDat_Play_19 + 16 @ 0xc58
	add r2, r2, r8
	ldr	r0, [r2]
	ldrb	r1, [r0]
	mov	r3, ip
	strh	r1, [r3]
	add	r0, r0, #0x1
	str	r0, [r2]
	ldrb	r1, [r0]
	mov	r3, r9
	strh	r1, [r3]
	add	r0, r0, #0x1
	str	r0, [r2]
	mov	r1, ip
	ldr	r0, [r1]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_17	@cond_branch
	str	r0, [r2]
	b	.Lnp_DemoKeyDat_Play_18
.Lnp_DemoKeyDat_Play_20:
	.align	2, 0
.Lnp_DemoKeyDat_Play_19:
	.word	ARam
	.word	KeyRead_Trg
	.word	0x3f7
	.word	NRam
	.word	0xc58
	.word	0xc5c
	.word	NisTitleInit + 1
	.word	0xfc0c
	.word	KeyRead_Now
	.word	KeyRead_Rpt
	.word	0xc5e
.Lnp_DemoKeyDat_Play_17:
	ldr	r1, .Lnp_DemoKeyDat_Play_21 @ 0xc5c
	add r1, r1, r8
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_18:
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_DemoKeyDat_Play_22:
	.align	2, 0
.Lnp_DemoKeyDat_Play_21:
	.word	0xc5c
	thumb_func_end np_DemoKeyDat_Play
