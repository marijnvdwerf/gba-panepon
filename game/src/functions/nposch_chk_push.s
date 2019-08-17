	thumb_func_start nposch_chk_push
nposch_chk_push:
	push	{lr}
	add	r2, r0, #0
	cmp	r2, #0
	blt	.Lnposch_chk_push_4	@cond_branch
	cmp	r2, #0x5
	bgt	.Lnposch_chk_push_4	@cond_branch
	cmp	r1, #0
	blt	.Lnposch_chk_push_4	@cond_branch
	cmp	r1, #0xb
	bgt	.Lnposch_chk_push_4	@cond_branch
	lsl	r0, r1, #0x1
	add	r0, r0, r1
	lsl	r0, r0, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x3
	ldr	r1, .Lnposch_chk_push_5 @ NRam+0x154
	add	r0, r0, r1
	bl	np_rksch_push
.Lnposch_chk_push_4:
	pop	{r0}
	bx	r0
.Lnposch_chk_push_6:
	.align	2, 0
.Lnposch_chk_push_5:
	.word	NRam+0x154
	thumb_func_end nposch_chk_push
