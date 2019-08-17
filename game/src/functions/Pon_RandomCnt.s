	thumb_func_start Pon_RandomCnt
Pon_RandomCnt:
	push	{lr}
	bl	RndRnd
	pop	{r0}
	bx	r0
	thumb_func_end Pon_RandomCnt
