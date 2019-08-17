	thumb_func_start NisSound_CursorMove
NisSound_CursorMove:
	push	{lr}
	lsl	r0, r0, #0x10
	mov	r1, #0xf0
	lsl	r1, r1, #0x10
	and	r1, r1, r0
	cmp	r1, #0
	beq	.LNisSound_CursorMove_1	@cond_branch
	mov	r0, #0x1
	bl	m4aSongNumStart
.LNisSound_CursorMove_1:
	pop	{r0}
	bx	r0
	thumb_func_end NisSound_CursorMove
