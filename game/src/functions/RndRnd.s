	thumb_func_start RndRnd
RndRnd:
	push	{lr}
	bl	NisRnd_Read
	pop	{r1}
	bx	r1
	thumb_func_end RndRnd
