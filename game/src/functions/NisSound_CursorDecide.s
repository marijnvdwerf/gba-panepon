	thumb_func_start NisSound_CursorDecide
NisSound_CursorDecide:
	push	{r4, lr}
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r4, r0, #0
	mov	r0, #0x2
	and	r0, r0, r4
	cmp	r0, #0
	beq	.LNisSound_CursorDecide_1	@cond_branch
	mov	r0, #0x3
	bl	m4aSongNumStart
.LNisSound_CursorDecide_1:
	mov	r0, #0x9
	and	r0, r0, r4
	cmp	r0, #0
	beq	.LNisSound_CursorDecide_2	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
.LNisSound_CursorDecide_2:
	pop	{r4}
	pop	{r0}
	bx	r0
	thumb_func_end NisSound_CursorDecide
