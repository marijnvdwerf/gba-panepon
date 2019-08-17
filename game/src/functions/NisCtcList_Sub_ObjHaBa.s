	thumb_func_start NisCtcList_Sub_ObjHaBa
NisCtcList_Sub_ObjHaBa:
	lsl	r0, r0, #0x10
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x1e
	lsr	r0, r0, #0x1c
	mov	r2, #0xc
	and	r0, r0, r2
	orr	r1, r1, r0
	ldr	r0, .LNisCtcList_Sub_ObjHaBa_1 @ haba.39
	lsl	r1, r1, #0x1
	add	r1, r1, r0
	ldrh	r0, [r1]
	bx	lr
.LNisCtcList_Sub_ObjHaBa_2:
	.align	2, 0
.LNisCtcList_Sub_ObjHaBa_1:
	.word	haba.39
	thumb_func_end NisCtcList_Sub_ObjHaBa
