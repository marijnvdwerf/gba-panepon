	thumb_func_start RandomGet03
RandomGet03:
	push	{lr}
	bl	Pon_RandomNORM
	add	r1, r0, #0
	lsl	r1, r1, #0x18
	mov	r0, #0xc0
	lsl	r0, r0, #0x12
	and	r0, r0, r1
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
	thumb_func_end RandomGet03
