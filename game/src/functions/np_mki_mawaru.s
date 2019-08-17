	thumb_func_start np_mki_mawaru
np_mki_mawaru:
	mov	r1, #0x0
	strb	r1, [r0]
	ldrb	r2, [r0, #0x11]
	mov	r1, #0xfe
	and	r1, r1, r2
	strb	r1, [r0, #0x11]
	bx	lr
	thumb_func_end np_mki_mawaru
