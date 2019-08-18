	thumb_func_start np_mem_roll_up
np_mem_roll_up:
	push	{r4, r5, lr}
	bl	np_gray_colors
	mov	r4, #0x90
	lsl	r4, r4, #0x2
	ldr	r1, .Lnp_mem_roll_up_3 @ NRam+0x184
	add	r2, r1, #0
	sub	r2, r2, #0x30
.Lnp_mem_roll_up_1:
	ldrb	r0, [r1]
	strb	r0, [r2]
	add	r1, r1, #0x1
	add	r2, r2, #0x1
	sub	r4, r4, #0x1
	cmp	r4, #0
	bne	.Lnp_mem_roll_up_1	@cond_branch
	ldr	r5, .Lnp_mem_roll_up_3 + 4 @ NRam
	ldrh	r1, [r5, #0x2]
	mov	r2, #0x2
	ldsh	r0, [r5, r2]
	cmp	r0, #0
	beq	.Lnp_mem_roll_up_2	@cond_branch
	sub	r0, r1, #1
	strh	r0, [r5, #0x2]
.Lnp_mem_roll_up_2:
	bl	np_bak_roll_up
	bl	np_stgclr_py_1up
	bl	np_gp_GAMEPARA_CMD_SPNLCHK
	ldr	r1, .Lnp_mem_roll_up_3 + 8 @ 0xaae
	add	r0, r5, r1
	strb	r4, [r0]
	ldr	r2, .Lnp_mem_roll_up_3 + 12 @ 0xaaf
	add	r0, r5, r2
	strb	r4, [r0]
	mov	r0, #0xab
	lsl	r0, r0, #0x4
	add	r1, r5, r0
	mov	r0, #0x4
	strb	r0, [r1]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_mem_roll_up_4:
	.align	2, 0
.Lnp_mem_roll_up_3:
	.word	NRam+0x184
	.word	NRam
	.word	0xaae
	.word	0xaaf
	thumb_func_end np_mem_roll_up
