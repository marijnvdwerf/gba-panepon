	thumb_func_start npgmov_kuro_ss
npgmov_kuro_ss:
	push	{r4, r5, lr}
	add	r5, r0, #0
	ldrh	r2, [r5]
	lsr	r1, r2, #0xa
	mov	r0, #0x1f
	and	r1, r1, r0
	lsr	r3, r2, #0x5
	and	r3, r3, r0
	mov	r4, #0x1f
	and	r4, r4, r2
	cmp	r1, #0
	beq	.Lnpgmov_kuro_ss_1	@cond_branch
	sub	r0, r1, #1
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.Lnpgmov_kuro_ss_1:
	cmp	r3, #0
	beq	.Lnpgmov_kuro_ss_2	@cond_branch
	sub	r0, r3, #1
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
.Lnpgmov_kuro_ss_2:
	cmp	r4, #0
	beq	.Lnpgmov_kuro_ss_3	@cond_branch
	sub	r0, r4, #1
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
.Lnpgmov_kuro_ss_3:
	lsl	r1, r1, #0x1a
	lsl	r0, r3, #0x15
	orr	r0, r0, r1
	lsr	r2, r0, #0x10
	orr	r2, r2, r4
	strh	r2, [r5]
	add	r0, r2, #0
	pop	{r4, r5}
	pop	{r1}
	bx	r1
	thumb_func_end npgmov_kuro_ss
