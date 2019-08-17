	thumb_func_start nis_game_vinit
nis_game_vinit:
	push	{lr}
	ldr	r1, .Lnis_game_vinit_1 @ 0x4000008
	ldr	r2, .Lnis_game_vinit_1 + 4 @ 0x1f03
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r2, .Lnis_game_vinit_1 + 8 @ 0x1c01
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	ldr	r2, .Lnis_game_vinit_1 + 12 @ 0x1e02
	add	r0, r2, #0
	strh	r0, [r1]
	add	r1, r1, #0x2
	add	r2, r2, #0x1
	add	r0, r2, #0
	strh	r0, [r1]
	bl	NisHako_BLD_Set
	ldr	r1, .Lnis_game_vinit_1 + 16 @ 0x10001
	mov	r0, #0x2
	bl	irq_set_ie
	ldr	r1, .Lnis_game_vinit_1 + 20 @ 0x4000004
	mov	r0, #0x8
	strh	r0, [r1]
	sub	r1, r1, #0x4
	mov	r2, #0xda
	lsl	r2, r2, #0x5
	add	r0, r2, #0
	strh	r0, [r1]
	ldr	r0, .Lnis_game_vinit_1 + 24 @ b_BG0HOFS
	mov	r1, #0x0
	strh	r1, [r0]
	ldr	r0, .Lnis_game_vinit_1 + 28 @ b_BG0VOFS
	strh	r1, [r0]
	ldr	r0, .Lnis_game_vinit_1 + 32 @ b_BG1HOFS
	strh	r1, [r0]
	ldr	r0, .Lnis_game_vinit_1 + 36 @ b_BG1VOFS
	strh	r1, [r0]
	ldr	r0, .Lnis_game_vinit_1 + 40 @ b_BG2HOFS
	strh	r1, [r0]
	ldr	r0, .Lnis_game_vinit_1 + 44 @ b_BG2VOFS
	strh	r1, [r0]
	pop	{r0}
	bx	r0
.Lnis_game_vinit_2:
	.align	2, 0
.Lnis_game_vinit_1:
	.word	0x4000008
	.word	0x1f03
	.word	0x1c01
	.word	0x1e02
	.word	0x10001
	.word	0x4000004
	.word	b_BG0HOFS
	.word	b_BG0VOFS
	.word	b_BG1HOFS
	.word	b_BG1VOFS
	.word	b_BG2HOFS
	.word	b_BG2VOFS
	thumb_func_end nis_game_vinit
