	thumb_func_start Pon_RandomNORM
Pon_RandomNORM:
	push	{lr}
	bl	RndRnd
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	pop	{r1}
	bx	r1
	thumb_func_end Pon_RandomNORM
