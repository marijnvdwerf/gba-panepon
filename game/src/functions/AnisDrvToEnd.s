	thumb_func_start AnisDrvToEnd
AnisDrvToEnd:
	push	{r4, r5, lr}
	add	r4, r0, #0
	mov	r5, #0x2
.LAnisDrvToEnd_1:
	add	r0, r4, #0
	bl	AnisDrvMain
	ldrh	r1, [r4, #0x1e]
	add	r0, r5, #0
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LAnisDrvToEnd_1	@cond_branch
	pop	{r4, r5}
	pop	{r0}
	bx	r0
	thumb_func_end AnisDrvToEnd
