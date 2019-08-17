	thumb_func_start NisSelectSub_Csl
NisSelectSub_Csl:
	push	{r4, r5, lr}
	bl	NisSelectSub_Search
	ldrb	r4, [r0, #0x8]
	ldrb	r5, [r0, #0x9]
	bl	NisSelectSub_pCsl
	add	r2, r0, #0
	lsl	r4, r4, #0x3
	lsl	r5, r5, #0x3
	add	r0, r4, #0
	add	r1, r5, #0
	bl	NisCtc_PutCtc
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end NisSelectSub_Csl
