	thumb_func_start AS_Mascot_RndWait
AS_Mascot_RndWait:
	push	{r4, lr}
	add	r4, r0, #0
	bl	RndRnd
	asr	r0, r0, #0x1
	add	r0, r0, #0x2
	strh	r0, [r4, #0x20]
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end AS_Mascot_RndWait
