	thumb_func_start np_mk_put_stop
np_mk_put_stop:
	push	{r4, lr}
	ldr	r4, .Lnp_mk_put_stop_1 @ NRam
	ldr	r1, .Lnp_mk_put_stop_1 + 4 @ 0xc3d
	add	r0, r4, r1
	ldrb	r0, [r0]
	mov	r2, #0x80
	lsl	r2, r2, #0x7
	add	r1, r2, #0
	orr	r0, r0, r1
	ldr	r3, .Lnp_mk_put_stop_1 + 8 @ 0xc3c
	add	r4, r4, r3
	ldrb	r1, [r4]
	mov	r3, #0x80
	lsl	r3, r3, #0x8
	add	r2, r3, #0
	orr	r1, r1, r2
	ldr	r2, .Lnp_mk_put_stop_1 + 12 @ 0xa1e0
	bl	NisCtc_Obj1Put
	ldrb	r0, [r4]
	add	r0, r0, #0x1c
	strb	r0, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_mk_put_stop_2:
	.align	2, 0
.Lnp_mk_put_stop_1:
	.word	NRam
	.word	0xc3d
	.word	0xc3c
	.word	0xa1e0
	thumb_func_end np_mk_put_stop
