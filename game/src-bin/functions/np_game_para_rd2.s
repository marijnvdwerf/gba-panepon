	thumb_func_start np_game_para_rd2
np_game_para_rd2:
	push	{r4, lr}
	bl	npgpr_TENMETU
	ldr	r4, .Lnp_game_para_rd2_1 @ NRam
	mov	r2, #0xa5
	lsl	r2, r2, #0x4
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_KAOFRM
	ldr	r2, .Lnp_game_para_rd2_1 + 4 @ 0xa51
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_KAOKAN
	ldr	r2, .Lnp_game_para_rd2_1 + 8 @ 0xa52
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_FLOAT
	ldr	r2, .Lnp_game_para_rd2_1 + 12 @ 0xa53
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_OFLOAT
	ldr	r2, .Lnp_game_para_rd2_1 + 16 @ 0xa54
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_STTSPDLVL
	ldr	r2, .Lnp_game_para_rd2_1 + 20 @ 0xaa5
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_SPNLCHK
	ldr	r2, .Lnp_game_para_rd2_1 + 24 @ 0xa55
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_PNLKIND
	ldr	r2, .Lnp_game_para_rd2_1 + 28 @ 0xa56
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_BIKSHU
	ldr	r2, .Lnp_game_para_rd2_1 + 32 @ 0xa57
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_BIKMAX
	ldr	r2, .Lnp_game_para_rd2_1 + 36 @ 0xa58
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_DEADWAIT
	ldr	r2, .Lnp_game_para_rd2_1 + 40 @ 0xa59
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_OPNLCHK
	ldr	r2, .Lnp_game_para_rd2_1 + 44 @ 0xa5a
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_PNLSWAP
	ldr	r1, .Lnp_game_para_rd2_1 + 48 @ 0xa5b
	add	r4, r4, r1
	strb	r0, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_game_para_rd2_2:
	.align	2, 0
.Lnp_game_para_rd2_1:
	.word	NRam
	.word	0xa51
	.word	0xa52
	.word	0xa53
	.word	0xa54
	.word	0xaa5
	.word	0xa55
	.word	0xa56
	.word	0xa57
	.word	0xa58
	.word	0xa59
	.word	0xa5a
	.word	0xa5b
	thumb_func_end np_game_para_rd2
