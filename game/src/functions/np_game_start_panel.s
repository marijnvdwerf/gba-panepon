	thumb_func_start np_game_start_panel
np_game_start_panel:
	push	{lr}
	ldr	r0, .Lnp_game_start_panel_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_game_start_panel_18	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_game_start_panel_2 + 4 @ .Lnp_game_start_panel_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_game_start_panel_3:
	.align	2, 0
.Lnp_game_start_panel_2:
	.word	ARam
	.word	.Lnp_game_start_panel_4
.Lnp_game_start_panel_4:
	.word	.Lnp_game_start_panel_10
	.word	.Lnp_game_start_panel_10
	.word	.Lnp_game_start_panel_7
	.word	.Lnp_game_start_panel_8
	.word	.Lnp_game_start_panel_10
	.word	.Lnp_game_start_panel_10
	.word	.Lnp_game_start_panel_13
	.word	.Lnp_game_start_panel_13
	.word	.Lnp_game_start_panel_13
	.word	.Lnp_game_start_panel_14
.Lnp_game_start_panel_7:
	bl	npgmstpnl_stg
	b	.Lnp_game_start_panel_18
.Lnp_game_start_panel_8:
	bl	npgmstpnl_pzl
	b	.Lnp_game_start_panel_18
.Lnp_game_start_panel_10:
	bl	npgmstpnl_rnd
	b	.Lnp_game_start_panel_18
.Lnp_game_start_panel_13:
	bl	npgmstpnl_2vs
	b	.Lnp_game_start_panel_18
.Lnp_game_start_panel_14:
	bl	npgmstpnl_dem
.Lnp_game_start_panel_18:
	pop	{r0}
	bx	r0
	thumb_func_end np_game_start_panel
