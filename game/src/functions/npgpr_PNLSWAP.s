	thumb_func_start npgpr_PNLSWAP
npgpr_PNLSWAP:
	push	{lr}
	mov	r0, #0x4
	bl	npgpr_x_slow
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
	thumb_func_end npgpr_PNLSWAP
