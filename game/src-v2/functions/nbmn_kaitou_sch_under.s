	thumb_func_start nbmn_kaitou_sch_under
nbmn_kaitou_sch_under:
	push	{lr}
	add	r2, r0, #0
	ldr	r1, .Lnbmn_kaitou_sch_under_5 @ NRam
	lsl	r0, r2, #0x3
	mov	r3, #0xaa
	lsl	r3, r3, #0x1
	add	r0, r0, r3
	add	r1, r0, r1
.Lnbmn_kaitou_sch_under_2:
	add	r1, r1, #0x30
	add	r2, r2, #0x6
	cmp	r2, #0x47
	bgt	.Lnbmn_kaitou_sch_under_3	@cond_branch
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.Lnbmn_kaitou_sch_under_2	@cond_branch
	cmp	r0, #0
	blt	.Lnbmn_kaitou_sch_under_3	@cond_branch
	cmp	r0, #0x6
	ble	.Lnbmn_kaitou_sch_under_4	@cond_branch
.Lnbmn_kaitou_sch_under_3:
	mov	r0, #0x1
	neg	r0, r0
.Lnbmn_kaitou_sch_under_4:
	pop	{r1}
	bx	r1
.Lnbmn_kaitou_sch_under_6:
	.align	2, 0
.Lnbmn_kaitou_sch_under_5:
	.word	NRam
	thumb_func_end nbmn_kaitou_sch_under
