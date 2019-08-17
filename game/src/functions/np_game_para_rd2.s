	thumb_func_start np_game_para_rd2
np_game_para_rd2:
	push	{r4, lr}
	bl	npgpr_TENMETU
	ldr	r4, .Lnp_game_para_rd2_1 @ NRam
	mov	r2, #0xad
	lsl	r2, r2, #0x4
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_KAOFRM
	ldr	r2, .Lnp_game_para_rd2_1 + 4 @ 0xad1
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_KAOKAN
	ldr	r2, .Lnp_game_para_rd2_1 + 8 @ 0xad2
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_FLOAT
	ldr	r2, .Lnp_game_para_rd2_1 + 12 @ 0xad3
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_OFLOAT
	ldr	r2, .Lnp_game_para_rd2_1 + 16 @ 0xad4
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_STTSPDLVL
	ldr	r2, .Lnp_game_para_rd2_1 + 20 @ 0xb25
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_SPNLCHK
	ldr	r2, .Lnp_game_para_rd2_1 + 24 @ 0xad5
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_PNLKIND
	ldr	r2, .Lnp_game_para_rd2_1 + 28 @ 0xad6
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_BIKSHU
	ldr	r2, .Lnp_game_para_rd2_1 + 32 @ 0xad7
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_BIKMAX
	ldr	r2, .Lnp_game_para_rd2_1 + 36 @ 0xad8
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_DEADWAIT
	ldr	r2, .Lnp_game_para_rd2_1 + 40 @ 0xad9
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_OPNLCHK
	ldr	r2, .Lnp_game_para_rd2_1 + 44 @ 0xada
	add	r1, r4, r2
	strb	r0, [r1]
	bl	npgpr_PNLSWAP
	ldr	r1, .Lnp_game_para_rd2_1 + 48 @ 0xadb
	add	r4, r4, r1
	strb	r0, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.Lnp_game_para_rd2_2:
	.align	2, 0
.Lnp_game_para_rd2_1:
	.word	NRam
	.word	0xad1
	.word	0xad2
	.word	0xad3
	.word	0xad4
	.word	0xb25
	.word	0xad5
	.word	0xad6
	.word	0xad7
	.word	0xad8
	.word	0xad9
	.word	0xada
	.word	0xadb
	thumb_func_end np_game_para_rd2
