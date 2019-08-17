	thumb_func_start MDCPC_sub_CRLF
MDCPC_sub_CRLF:
	mov	r1, #0x0
	strb	r1, [r0, #0x10]
	ldrb	r1, [r0, #0x13]
	ldrb	r2, [r0, #0x11]
	add	r1, r1, r2
	strb	r1, [r0, #0x11]
	bx	lr
	thumb_func_end MDCPC_sub_CRLF
