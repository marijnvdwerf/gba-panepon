	thumb_func_start np_DemoKeyDat_Play
np_DemoKeyDat_Play:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r0, .Lnp_DemoKeyDat_Play_20 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	beq	.Lnp_DemoKeyDat_Play_1	@cond_branch
	b	.Lnp_DemoKeyDat_Play_19
.Lnp_DemoKeyDat_Play_1:
	ldr	r6, .Lnp_DemoKeyDat_Play_20 + 4 @ KeyRead_Trg
	ldrh	r1, [r6]
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 8 @ 0x3f7
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_3	@cond_branch
	ldr	r5, .Lnp_DemoKeyDat_Play_20 + 12 @ NRam
	mov	r0, #0xbe
	lsl	r0, r0, #0x4
	add	r7, r5, r0
	ldrb	r4, [r7]
	cmp	r4, #0
	bne	.Lnp_DemoKeyDat_Play_4	@cond_branch
	mov	r0, #0x64
	bl	m4aSongNumStart
	mov	r0, #0x6
	strb	r0, [r5, #0x9]
	ldr	r1, .Lnp_DemoKeyDat_Play_20 + 16 @ 0xa9c
	add	r0, r5, r1
	strb	r4, [r0]
	mov	r0, #0x1
	strb	r0, [r5, #0x4]
	ldr	r4, .Lnp_DemoKeyDat_Play_20 + 20 @ 0xfc0c
	ldrh	r0, [r6]
	and	r0, r0, r4
	strh	r0, [r6]
	ldr	r1, .Lnp_DemoKeyDat_Play_20 + 24 @ KeyRead_Now
	ldrh	r0, [r1]
	and	r0, r0, r4
	strh	r0, [r1]
	ldr	r1, .Lnp_DemoKeyDat_Play_20 + 28 @ KeyRead_Rpt
	ldrh	r0, [r1]
	and	r0, r0, r4
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_4:
	mov	r1, #0x0
	mov	r0, #0x1
	strb	r0, [r7]
	ldr	r2, .Lnp_DemoKeyDat_Play_20 + 32 @ 0xbd8
	add	r0, r5, r2
	str	r1, [r0]
	ldr	r3, .Lnp_DemoKeyDat_Play_20 + 36 @ 0xbdc
	add	r1, r5, r3
	mov	r0, #0x96
	lsl	r0, r0, #0x2
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_3:
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 12 @ NRam
	mov	r1, #0xbe
	lsl	r1, r1, #0x4
	add	r4, r0, r1
	ldrb	r1, [r4]
	mov	r8, r0
	cmp	r1, #0
	beq	.Lnp_DemoKeyDat_Play_5	@cond_branch
	ldrb	r0, [r0, #0x7]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_6	@cond_branch
	ldr	r1, .Lnp_DemoKeyDat_Play_20 + 36 @ 0xbdc
	add r1, r1, r8
	mov	r0, #0x96
	lsl	r0, r0, #0x2
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_6:
	ldr	r1, .Lnp_DemoKeyDat_Play_20 + 36 @ 0xbdc
	add r1, r1, r8
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_7	@cond_branch
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 40 @ NisTitleInit + 1
	bl	MainSeqSearchNear
.Lnp_DemoKeyDat_Play_7:
	ldrb	r0, [r4]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_8	@cond_branch
.Lnp_DemoKeyDat_Play_5:
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 32 @ 0xbd8
	add r0, r0, r8
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_9	@cond_branch
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 40 @ NisTitleInit + 1
	bl	MainSeqSearchNear
.Lnp_DemoKeyDat_Play_8:
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 12 @ NRam
	ldr	r2, .Lnp_DemoKeyDat_Play_20 + 32 @ 0xbd8
	add	r1, r0, r2
	ldr	r1, [r1]
	mov	r8, r0
	cmp	r1, #0
	beq	.Lnp_DemoKeyDat_Play_19	@cond_branch
.Lnp_DemoKeyDat_Play_9:
	ldr	r4, .Lnp_DemoKeyDat_Play_20 + 20 @ 0xfc0c
	ldr	r6, .Lnp_DemoKeyDat_Play_20 + 4 @ KeyRead_Trg
	ldrh	r5, [r6]
	and	r5, r5, r4
	strh	r5, [r6]
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 24 @ KeyRead_Now
	ldrh	r1, [r0]
	and	r1, r1, r4
	strh	r1, [r0]
	ldr	r3, .Lnp_DemoKeyDat_Play_20 + 28 @ KeyRead_Rpt
	ldrh	r2, [r3]
	and	r2, r2, r4
	strh	r2, [r3]
	ldr	r7, .Lnp_DemoKeyDat_Play_20 + 36 @ 0xbdc
	add r7, r7, r8
	ldrh	r0, [r7]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_18	@cond_branch
	ldr	r0, .Lnp_DemoKeyDat_Play_20 + 44 @ 0xbde
	add r0, r0, r8
	mov	ip, r0
	ldrh	r4, [r0]
	mov	r0, #0x1
	and	r0, r0, r4
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_12	@cond_branch
	mov	r1, #0x40
	add	r0, r2, #0
	orr	r0, r0, r1
	strh	r0, [r3]
.Lnp_DemoKeyDat_Play_12:
	mov	r0, #0x2
	and	r0, r0, r4
	add	r2, r4, #0
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_13	@cond_branch
	ldrh	r0, [r3]
	mov	r1, #0x80
	orr	r0, r0, r1
	strh	r0, [r3]
.Lnp_DemoKeyDat_Play_13:
	mov	r0, #0x4
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_14	@cond_branch
	ldrh	r0, [r3]
	mov	r1, #0x20
	orr	r0, r0, r1
	strh	r0, [r3]
.Lnp_DemoKeyDat_Play_14:
	mov	r0, #0x8
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_15	@cond_branch
	ldrh	r0, [r3]
	mov	r1, #0x10
	orr	r0, r0, r1
	strh	r0, [r3]
.Lnp_DemoKeyDat_Play_15:
	mov	r0, #0x10
	and	r0, r0, r2
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_16	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x1
	orr	r0, r0, r1
	strh	r0, [r6]
.Lnp_DemoKeyDat_Play_16:
	mov	r0, #0x20
	and	r0, r0, r4
	cmp	r0, #0
	beq	.Lnp_DemoKeyDat_Play_17	@cond_branch
	ldrh	r0, [r6]
	mov	r2, #0x80
	lsl	r2, r2, #0x1
	add	r1, r2, #0
	orr	r0, r0, r1
	strh	r0, [r6]
.Lnp_DemoKeyDat_Play_17:
	ldr	r2, .Lnp_DemoKeyDat_Play_20 + 32 @ 0xbd8
	add r2, r2, r8
	ldr	r0, [r2]
	ldrb	r1, [r0]
	strh	r1, [r7]
	add	r0, r0, #0x1
	str	r0, [r2]
	ldrb	r1, [r0]
	mov	r3, ip
	strh	r1, [r3]
	add	r0, r0, #0x1
	str	r0, [r2]
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.Lnp_DemoKeyDat_Play_18	@cond_branch
	str	r0, [r2]
	b	.Lnp_DemoKeyDat_Play_19
.Lnp_DemoKeyDat_Play_21:
	.align	2, 0
.Lnp_DemoKeyDat_Play_20:
	.word	ARam
	.word	KeyRead_Trg
	.word	0x3f7
	.word	NRam
	.word	0xa9c
	.word	0xfc0c
	.word	KeyRead_Now
	.word	KeyRead_Rpt
	.word	0xbd8
	.word	0xbdc
	.word	NisTitleInit + 1
	.word	0xbde
.Lnp_DemoKeyDat_Play_18:
	ldr	r1, .Lnp_DemoKeyDat_Play_22 @ 0xbdc
	add r1, r1, r8
	ldrh	r0, [r1]
	sub	r0, r0, #0x1
	strh	r0, [r1]
.Lnp_DemoKeyDat_Play_19:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_DemoKeyDat_Play_23:
	.align	2, 0
.Lnp_DemoKeyDat_Play_22:
	.word	0xbdc
	thumb_func_end np_DemoKeyDat_Play
