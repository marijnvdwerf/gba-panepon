	thumb_func_start RandomGet01
RandomGet01:
	push	{lr}
	bl	Pon_RandomNORM
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r1, #0x1
	and	r0, r0, r1
	pop	{r1}
	bx	r1
	thumb_func_end RandomGet01
