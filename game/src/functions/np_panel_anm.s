	thumb_func_start np_panel_anm
np_panel_anm:
	push	{lr}
	ldr	r0, .Lnp_panel_anm_2 @ ARam
	ldrb	r0, [r0, #0x19]
	cmp	r0, #0
	bne	.Lnp_panel_anm_1	@cond_branch
	bl	np_kiken_anm
	bl	np_chakuchi_anm
.Lnp_panel_anm_1:
	pop	{r0}
	bx	r0
.Lnp_panel_anm_3:
	.align	2, 0
.Lnp_panel_anm_2:
	.word	ARam
	thumb_func_end np_panel_anm
