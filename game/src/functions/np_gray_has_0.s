	thumb_func_start np_gray_has_0
np_gray_has_0:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffff8
	mov	r4, #0x0
	ldr	r2, .Lnp_gray_has_0_6 @ NRam
	mov	r7, #0xaa
	lsl	r7, r7, #0x1
	mov	r3, #0x0
.Lnp_gray_has_0_5:
	add	r0, r4, #0
	add	r0, r0, #0x42
	lsl	r1, r4, #0x3
	mov	r8, r1
	add	r6, r4, #1
	mov	r9, r6
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	add	r0, r0, r7
	mov	sl, r0
	add	r0, r4, #0
	add	r0, r0, #0x46
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	add	r5, r0, r7
.Lnp_gray_has_0_4:
	str	r2, [sp]
	str	r3, [sp, #0x4]
	bl	np_gp_GAMEPARA_CMD_PNLKIND
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r1, r0, #1
	ldr	r2, [sp]
	ldr	r3, [sp, #0x4]
	mov	r0, sl
	ldrb	r0, [r0]
	cmp	r1, r0
	beq	.Lnp_gray_has_0_4	@cond_branch
	cmp	r4, #0x1
	ble	.Lnp_gray_has_0_3	@cond_branch
	add	r0, r4, #0
	add	r0, r0, #0x47
	lsl	r0, r0, #0x3
	add	r0, r0, r2
	add	r0, r0, r7
	ldrb	r0, [r0]
	ldrb	r6, [r5]
	cmp	r0, r6
	bne	.Lnp_gray_has_0_3	@cond_branch
	cmp	r1, r0
	beq	.Lnp_gray_has_0_4	@cond_branch
.Lnp_gray_has_0_3:
	ldr	r0, .Lnp_gray_has_0_6 + 4 @ NRam+0x394
	add r0, r0, r8
	strb	r1, [r0]
	add	r1, r1, #0x3d
	strb	r1, [r0, #0x1]
	mov	r1, #0x2
	strb	r1, [r0, #0x2]
	strb	r3, [r0, #0x3]
	strb	r3, [r0, #0x4]
	strb	r3, [r0, #0x5]
	mov	r4, r9
	cmp	r4, #0x5
	ble	.Lnp_gray_has_0_5	@cond_branch
	add	sp, sp, #0x8
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_gray_has_0_7:
	.align	2, 0
.Lnp_gray_has_0_6:
	.word	NRam
	.word	NRam+0x394
	thumb_func_end np_gray_has_0
