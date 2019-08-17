	thumb_func_start AnisDrvStart2
AnisDrvStart2:
	push	{r4, r5, lr}
	add	r4, r0, #0
	add	r5, r2, #0
	bl	AnisDrvStart1
	str	r5, [r4, #0xc]
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvStart2
