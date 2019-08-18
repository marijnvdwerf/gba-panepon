	thumb_func_start np_PutObjPnl
np_PutObjPnl:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r2, #0x4
	ldr	r1, .Lnp_PutObjPnl_4 @ NRam
	ldrb	r0, [r1, #0x6]
	sub	r2, r2, r0
	ldrb	r0, [r1, #0x5]
	sub	r2, r2, r0
	ldr	r3, .Lnp_PutObjPnl_4 + 4 @ 0xbcc
	add	r0, r1, r3
	ldrb	r0, [r0]
	sub	r2, r2, r0
	mov	r0, #0x0
	ldr	r1, .Lnp_PutObjPnl_4 + 8 @ 0xffff
	mov	sl, r1
.Lnp_PutObjPnl_3:
	mov	r6, #0x5c
	mov	r5, #0x0
	lsl	r1, r0, #0x1
	mov	r3, #0xd
	add	r3, r3, r2
	mov	r8, r3
	add	r3, r0, #1
	mov	r9, r3
	mov	r3, #0xff
	and	r2, r2, r3
	orr	r2, r2, r5
	lsl	r7, r2, #0x10
	add	r1, r1, r0
	lsl	r1, r1, #0x4
	ldr	r2, .Lnp_PutObjPnl_4 @ NRam
	add	r3, r3, #0x56
	add	r0, r2, r3
	add	r4, r1, r0
.Lnp_PutObjPnl_2:
	mov	r0, #0x80
	lsl	r0, r0, #0x7
	orr	r0, r0, r6
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	ldrb	r0, [r4]
	lsl	r0, r0, #0x1
	ldr	r2, .Lnp_PutObjPnl_4 + 12 @ np_pictuescr
	add	r0, r0, r2
	ldrh	r2, [r0]
	cmp	r2, sl
	beq	.Lnp_PutObjPnl_1	@cond_branch
	lsr	r0, r7, #0x10
	bl	NisCtc_Obj1Put
.Lnp_PutObjPnl_1:
	add	r6, r6, #0xe
	add	r4, r4, #0x8
	add	r5, r5, #0x1
	cmp	r5, #0x5
	ble	.Lnp_PutObjPnl_2	@cond_branch
	mov	r2, r8
	mov	r0, r9
	cmp	r0, #0xc
	ble	.Lnp_PutObjPnl_3	@cond_branch
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_PutObjPnl_5:
	.align	2, 0
.Lnp_PutObjPnl_4:
	.word	NRam
	.word	0xbcc
	.word	0xffff
	.word	np_pictuescr
	thumb_func_end np_PutObjPnl
