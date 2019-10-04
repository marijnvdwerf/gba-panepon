	thumb_func_start nswp_objend
nswp_objend:
	push	{r4, lr}
	ldr	r4, .Lnswp_objend_1 @ NRam
	ldr	r0, .Lnswp_objend_1 + 4 @ 0xa74
	add	r1, r4, r0
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
	ldr	r0, .Lnswp_objend_1 + 8 @ 0xa78
	add	r4, r4, r0
	ldr	r0, [r4]
	bl	nswp_1switchend
	ldr	r0, [r4]
	add	r0, r0, #0x8
	bl	nswp_1switchend
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnswp_objend_2:
	.align	2, 0
.Lnswp_objend_1:
	.word	NRam
	.word	0xa74
	.word	0xa78
	thumb_func_end nswp_objend
