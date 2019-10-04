	thumb_func_start npgoWLD_objcolor_set
npgoWLD_objcolor_set:
	ldr	r1, .LnpgoWLD_objcolor_set_1 @ 0x40000d4
	ldr	r0, .LnpgoWLD_objcolor_set_1 + 4 @ ponagb2m_obj_Acl
	str	r0, [r1]
	ldr	r0, .LnpgoWLD_objcolor_set_1 + 8 @ 0x5000200
	str	r0, [r1, #0x4]
	ldr	r0, .LnpgoWLD_objcolor_set_1 + 12 @ 0x84000080
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	ldr	r1, .LnpgoWLD_objcolor_set_1 + 16 @ NRam
	ldr	r0, .LnpgoWLD_objcolor_set_1 + 20 @ 0xbcc
	add	r1, r1, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	mov	r0, #0x0
	bx	lr
.LnpgoWLD_objcolor_set_2:
	.align	2, 0
.LnpgoWLD_objcolor_set_1:
	.word	0x40000d4
	.word	ponagb2m_obj_Acl
	.word	0x5000200
	.word	0x84000080
	.word	NRam
	.word	0xbcc
	thumb_func_end npgoWLD_objcolor_set
