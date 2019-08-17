	thumb_func_start np_mks_uzuuput
np_mks_uzuuput:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	r5, r0, #0
	ldr	r2, .Lnp_mks_uzuuput_3 @ nis_shuuketu
	ldrh	r0, [r5, #0x14]
	lsl	r1, r0, #0x1
	add	r1, r1, r2
	mov	r3, #0x0
	ldsh	r4, [r1, r3]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x1
	add	r0, r0, r2
	mov	r1, #0x0
	ldsh	r0, [r0, r1]
	orr	r4, r4, r0
	cmp	r4, #0
	beq	.Lnp_mks_uzuuput_1	@cond_branch
	ldrh	r0, [r5, #0x16]
	lsr	r0, r0, #0x8
	add	r0, r0, #0x3
	mov	r8, r0
	ldrh	r0, [r5, #0x18]
	lsr	r0, r0, #0x8
	add	r7, r0, #2
	mov	r4, #0x5
	add	r6, r2, #0
.Lnp_mks_uzuuput_2:
	ldrh	r0, [r5, #0x14]
	add	r2, r0, #1
	strh	r2, [r5, #0x14]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0xf
	add	r0, r0, r6
	mov	r3, #0x0
	ldsh	r1, [r0, r3]
	add r1, r1, r8
	add	r0, r2, #1
	strh	r0, [r5, #0x14]
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0xf
	add	r2, r2, r6
	mov	r3, #0x0
	ldsh	r0, [r2, r3]
	add	r0, r0, r7
	ldr	r2, .Lnp_mks_uzuuput_3 + 4 @ 0x8202
	bl	NisCtc_Obj1Put
	sub	r4, r4, #0x1
	cmp	r4, #0
	bge	.Lnp_mks_uzuuput_2	@cond_branch
.Lnp_mks_uzuuput_1:
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_mks_uzuuput_4:
	.align	2, 0
.Lnp_mks_uzuuput_3:
	.word	nis_shuuketu
	.word	0x8202
	thumb_func_end np_mks_uzuuput
