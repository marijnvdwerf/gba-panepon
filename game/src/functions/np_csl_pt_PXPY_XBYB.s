	thumb_func_start np_csl_pt_PXPY_XBYB
np_csl_pt_PXPY_XBYB:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	r7, r0, #0
	mov	r8, r1
	add	r4, r2, #0
	mov	sl, r3
	add	r0, r0, #0xa
	sub	r7, r0, r4
	mov	r0, #0x4
	sub	r0, r0, r3
	lsr	r1, r0, #0x1f
	add	r0, r0, r1
	asr	r0, r0, #0x1
	add r8, r8, r0
	mov	r6, r8
	mov	r0, #0xff
	and	r6, r6, r0
	lsl	r1, r7, #0x10
	lsr	r1, r1, #0x10
	add	r0, r6, #0
	mov	r2, #0xe4
	lsl	r2, r2, #0x7
	bl	NisCtc_Obj1Put
	add	r5, r7, r4
	lsl	r1, r5, #0x10
	lsr	r1, r1, #0x10
	add	r0, r6, #0
	ldr	r2, .Lnp_csl_pt_PXPY_XBYB_1 @ 0x7201
	bl	NisCtc_Obj1Put
	add	r4, r5, r4
	mov	r1, #0x80
	lsl	r1, r1, #0x5
	mov	r9, r1
	add	r1, r4, #0
	mov	r0, r9
	orr	r1, r1, r0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	add	r0, r6, #0
	mov	r2, #0xe4
	lsl	r2, r2, #0x7
	bl	NisCtc_Obj1Put
	mov	r6, #0x80
	lsl	r6, r6, #0x6
	add r8, r8, sl
	mov	r1, #0xff
	mov	r0, r8
	and	r1, r1, r0
	mov	r8, r1
	orr	r4, r4, r6
	mov	r1, r9
	orr	r4, r4, r1
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	mov	r0, r8
	add	r1, r4, #0
	mov	r2, #0xe4
	lsl	r2, r2, #0x7
	bl	NisCtc_Obj1Put
	orr	r5, r5, r6
	lsl	r5, r5, #0x10
	lsr	r5, r5, #0x10
	mov	r0, r8
	add	r1, r5, #0
	ldr	r2, .Lnp_csl_pt_PXPY_XBYB_1 @ 0x7201
	bl	NisCtc_Obj1Put
	orr	r7, r7, r6
	lsl	r1, r7, #0x10
	lsr	r1, r1, #0x10
	mov	r0, r8
	mov	r2, #0xe4
	lsl	r2, r2, #0x7
	bl	NisCtc_Obj1Put
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_csl_pt_PXPY_XBYB_2:
	.align	2, 0
.Lnp_csl_pt_PXPY_XBYB_1:
	.word	0x7201
	thumb_func_end np_csl_pt_PXPY_XBYB
