	thumb_func_start NisOptSel_np_sw_kage_color
NisOptSel_np_sw_kage_color:
	push	{lr}
	add	sp, sp, #0xfffffffc
	add	r1, r0, #0
	ldr	r0, .LNisOptSel_np_sw_kage_color_1 @ Asc_KAZU_v2_gm_logo
	ldr	r2, .LNisOptSel_np_sw_kage_color_1 + 4 @ 0xffff
	ldr	r3, .LNisOptSel_np_sw_kage_color_1 + 8 @ ARam
	add	r3, r3, #0x22
	ldrb	r3, [r3]
	str	r3, [sp]
	mov	r3, #0x2
	bl	PutBgDex
	add	sp, sp, #0x4
	pop	{r0}
	bx	r0
.LNisOptSel_np_sw_kage_color_2:
	.align	2, 0
.LNisOptSel_np_sw_kage_color_1:
	.word	Asc_KAZU_v2_gm_logo
	.word	0xffff
	.word	ARam
	thumb_func_end NisOptSel_np_sw_kage_color
