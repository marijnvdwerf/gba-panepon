	thumb_func_start npgoWLD_panelfacelose_loop
npgoWLD_panelfacelose_loop:
	push	{lr}
	bl	np_BigMojiYure_main
	ldr	r0, .LnpgoWLD_panelfacelose_loop_4 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x1
	and	r0, r0, r1
	cmp	r0, #0
	bne	.LnpgoWLD_panelfacelose_loop_1	@cond_branch
	bl	npgmov_kuro_sub
.LnpgoWLD_panelfacelose_loop_1:
	ldr	r1, .LnpgoWLD_panelfacelose_loop_4 + 4 @ NRam
	ldr	r2, .LnpgoWLD_panelfacelose_loop_4 + 8 @ 0xc2c
	add	r0, r1, r2
	ldr	r0, [r0]
	cmp	r0, #0
	bne	.LnpgoWLD_panelfacelose_loop_3	@cond_branch
	ldrb	r0, [r1, #0xb]
	cmp	r0, #0
	bne	.LnpgoWLD_panelfacelose_loop_3	@cond_branch
	ldr	r0, .LnpgoWLD_panelfacelose_loop_4 + 12 @ 0xc48
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.LnpgoWLD_panelfacelose_loop_3:
	mov	r0, #0x0
	pop	{r1}
	bx	r1
.LnpgoWLD_panelfacelose_loop_5:
	.align	2, 0
.LnpgoWLD_panelfacelose_loop_4:
	.word	NmiInc
	.word	NRam
	.word	0xc2c
	.word	0xc48
	thumb_func_end npgoWLD_panelfacelose_loop
