	thumb_func_start mac_nbck_idxinc
mac_nbck_idxinc:
	add	r0, r0, #0x1
	mov	r1, #0xff
	and	r0, r0, r1
	bx	lr
	thumb_func_end mac_nbck_idxinc
