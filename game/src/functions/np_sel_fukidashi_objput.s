	thumb_func_start np_sel_fukidashi_objput
np_sel_fukidashi_objput:
	push	{r4, r5, r6, lr}
	mov	r6, r8
	push	{r6}
	ldr	r0, .Lnp_sel_fukidashi_objput_1 @ b_BG0VOFS
	mov	r2, #0x0
	ldsh	r1, [r0, r2]
	mov	r8, r1
	ldr	r0, .Lnp_sel_fukidashi_objput_1 + 4 @ b_BG1VOFS
	mov	r1, #0x0
	ldsh	r4, [r0, r1]
	sub	r4, r4, #0x14
	mov	r2, r8
	sub	r4, r2, r4
	add	r0, r4, #0
	mov	r1, #0x5
	bl	__divsi3
	add	r6, r0, #0
	lsl	r0, r4, #0x1
	add	r0, r0, r4
	lsl	r0, r0, #0x2
	mov	r1, #0x14
	bl	__divsi3
	add	r5, r0, #0
	lsl	r4, r4, #0x4
	add	r0, r4, #0
	mov	r1, #0x14
	bl	__divsi3
	add	r4, r0, #0
	add	r6, r6, #0x47
	mov	r0, r8
	sub	r6, r6, r0
	add	r5, r5, #0x47
	sub	r5, r5, r0
	add	r4, r4, #0x47
	sub	r4, r4, r0
	ldr	r2, .Lnp_sel_fukidashi_objput_1 + 8 @ Aob_Panel_Select_07
	mov	r0, #0x8d
	add	r1, r6, #0
	bl	NisCtc_PutCtc
	ldr	r2, .Lnp_sel_fukidashi_objput_1 + 12 @ Aob_Panel_Select_06
	mov	r0, #0x91
	add	r1, r5, #0
	bl	NisCtc_PutCtc
	ldr	r2, .Lnp_sel_fukidashi_objput_1 + 16 @ Aob_Panel_Select_05
	mov	r0, #0x96
	add	r1, r4, #0
	bl	NisCtc_PutCtc
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_sel_fukidashi_objput_2:
	.align	2, 0
.Lnp_sel_fukidashi_objput_1:
	.word	b_BG0VOFS
	.word	b_BG1VOFS
	.word	Aob_Panel_Select_07
	.word	Aob_Panel_Select_06
	.word	Aob_Panel_Select_05
	thumb_func_end np_sel_fukidashi_objput
