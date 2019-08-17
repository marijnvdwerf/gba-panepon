	thumb_func_start inc_otai_idx
inc_otai_idx:
	add	r1, r0, #0
	add	r1, r1, #0x1
	mov	r0, #0x3f
	and	r0, r0, r1
	bx	lr
	thumb_func_end inc_otai_idx
