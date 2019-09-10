	thumb_func_start NisOptSel_np_sw_field_color
NisOptSel_np_sw_field_color:
	push	{r4, lr}
	add	sp, sp, #0xfffffffc
	add	r4, r0, #0
	ldr	r0, .LNisOptSel_np_sw_field_color_1 @ Asc_KAZU_v2_gm_logo
	ldr	r2, .LNisOptSel_np_sw_field_color_1 + 4 @ 0xffff
	ldr	r1, .LNisOptSel_np_sw_field_color_1 + 8 @ ARam
	add	r1, r1, #0x23
	ldrb	r1, [r1]
	str	r1, [sp]
	add	r1, r4, #0
	mov	r3, #0x2
	bl	PutBgDex
	ldr	r1, .LNisOptSel_np_sw_field_color_1 + 12 @ 0x203f
	add	r0, r1, #0
	strh	r0, [r4, #0x4]
	add	sp, sp, #0x4
	pop	{r4}
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_field_color_2:
	.align	2, 0
.LNisOptSel_np_sw_field_color_1:
	.word	Asc_KAZU_v2_gm_logo
	.word	0xffff
	.word	ARam
	.word	0x203f
	thumb_func_end NisOptSel_np_sw_field_color
