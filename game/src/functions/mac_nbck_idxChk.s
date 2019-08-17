	thumb_func_start mac_nbck_idxChk
mac_nbck_idxChk:
	add	r1, r0, #0
	mov	r0, #0xff
	and	r0, r0, r1
	bx	lr
	thumb_func_end mac_nbck_idxChk
