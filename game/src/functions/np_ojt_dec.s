	thumb_func_start np_ojt_dec
np_ojt_dec:
	add	r0, r0, #0x1
	mov	r1, #0x1f
	and	r0, r0, r1
	bx	lr
	thumb_func_end np_ojt_dec
