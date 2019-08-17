	thumb_func_start npojmsh_ojmsch
npojmsh_ojmsch:
	push	{r4, r5, lr}
	bl	np_fadr_xy
	ldr	r0, .Lnpojmsh_ojmsch_5 @ np_fadr_xy_X
	ldr	r5, [r0]
	ldr	r0, .Lnpojmsh_ojmsch_5 + 4 @ np_fadr_xy_Y
	ldr	r4, [r0]
	cmp	r5, #0x4
	bgt	.Lnpojmsh_ojmsch_1	@cond_branch
	add	r0, r5, #1
	add	r1, r4, #0
	bl	npojmsh_fgset
.Lnpojmsh_ojmsch_1:
	cmp	r4, #0xa
	bgt	.Lnpojmsh_ojmsch_2	@cond_branch
	add	r1, r4, #1
	add	r0, r5, #0
	bl	npojmsh_fgset
.Lnpojmsh_ojmsch_2:
	cmp	r5, #0
	ble	.Lnpojmsh_ojmsch_3	@cond_branch
	sub	r0, r5, #1
	add	r1, r4, #0
	bl	npojmsh_fgset
.Lnpojmsh_ojmsch_3:
	cmp	r4, #0
	ble	.Lnpojmsh_ojmsch_4	@cond_branch
	sub	r1, r4, #1
	add	r0, r5, #0
	bl	npojmsh_fgset
.Lnpojmsh_ojmsch_4:
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnpojmsh_ojmsch_6:
	.align	2, 0
.Lnpojmsh_ojmsch_5:
	.word	np_fadr_xy_X
	.word	np_fadr_xy_Y
	thumb_func_end npojmsh_ojmsch
