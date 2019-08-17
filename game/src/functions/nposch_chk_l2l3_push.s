	thumb_func_start nposch_chk_l2l3_push
nposch_chk_l2l3_push:
	push	{r4, r5, lr}
	add	r5, r0, #0
	cmp	r5, #0xb
	bhi	.Lnposch_chk_l2l3_push_3	@cond_branch
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x4
	ldr	r1, .Lnposch_chk_l2l3_push_4 @ NRam+0x154
	add	r4, r0, r1
	add	r0, r4, #0
	add	r0, r0, #0x10
	bl	np_rksch_push
	add	r0, r4, #0
	add	r0, r0, #0x18
	bl	np_rksch_push
	cmp	r5, #0x1
	bne	.Lnposch_chk_l2l3_push_3	@cond_branch
	ldr	r2, .Lnposch_chk_l2l3_push_4 + 4 @ nojpt_usutbl
	add	r1, r4, #0
	add	r1, r1, #0x28
	ldrb	r1, [r1]
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #0
	beq	.Lnposch_chk_l2l3_push_3	@cond_branch
	add	r0, r1, #0
	bl	np_otai_ph
.Lnposch_chk_l2l3_push_3:
	pop	{r4, r5}
	pop	{r1}
	bx	r1
.Lnposch_chk_l2l3_push_5:
	.align	2, 0
.Lnposch_chk_l2l3_push_4:
	.word	NRam+0x154
	.word	nojpt_usutbl
	thumb_func_end nposch_chk_l2l3_push
