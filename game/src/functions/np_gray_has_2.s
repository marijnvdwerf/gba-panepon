	thumb_func_start np_gray_has_2
np_gray_has_2:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #0xfffffffc
	mov	r4, #0x0
	ldr	r0, .Lnp_gray_has_2_5 @ NRam
	mov	r9, r0
	mov	r1, #0xaa
	lsl	r1, r1, #0x1
	mov	sl, r1
	mov	r3, #0x0
.Lnp_gray_has_2_4:
	add	r0, r4, #0
	add	r0, r0, #0x42
	lsl	r7, r4, #0x3
	add	r1, r4, #1
	mov	r8, r1
	lsl	r0, r0, #0x3
	add r0, r0, r9
	mov	r1, sl
	add	r6, r0, r1
	add	r0, r4, #0
	add	r0, r0, #0x47
	lsl	r0, r0, #0x3
	add r0, r0, r9
	add	r5, r0, r1
.Lnp_gray_has_2_3:
	str	r3, [sp]
	bl	np_gp_GAMEPARA_CMD_PNLKIND
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	add	r2, r1, #1
	ldr	r3, [sp]
	ldrb	r0, [r6]
	cmp	r2, r0
	beq	.Lnp_gray_has_2_3	@cond_branch
	cmp	r4, #0
	ble	.Lnp_gray_has_2_2	@cond_branch
	ldrb	r0, [r5]
	cmp	r2, r0
	beq	.Lnp_gray_has_2_3	@cond_branch
.Lnp_gray_has_2_2:
	ldr	r4, .Lnp_gray_has_2_5 + 4 @ NRam+0x394
	add	r0, r7, r4
	strb	r2, [r0]
	add	r1, r1, #0x3e
	strb	r1, [r0, #0x1]
	mov	r1, #0x2
	strb	r1, [r0, #0x2]
	strb	r3, [r0, #0x3]
	strb	r3, [r0, #0x4]
	strb	r3, [r0, #0x5]
	mov	r4, r8
	cmp	r4, #0x5
	ble	.Lnp_gray_has_2_4	@cond_branch
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_gray_has_2_6:
	.align	2, 0
.Lnp_gray_has_2_5:
	.word	NRam
	.word	NRam+0x394
	thumb_func_end np_gray_has_2
