	thumb_func_start nis_game_init
nis_game_init:
	push	{lr}
	bl	nis_game_ram_clr
	bl	np_game_start_set0
	bl	np_game_chr_scr
	bl	np_game_start_set1
	bl	srw_init
	bl	Obj1AllClear
	bl	nis_game_vinit
	mov	r0, #0x1
	bl	np_PutObjMascot_Init
	bl	SoundVSyncOn_rev01
	mov	r0, #0x64
	bl	m4aSongNumStart
	ldr	r0, .Lnis_game_init_1 @ nis_game_main + 1
	bl	MainSeqSearchNear
	pop	{r0}
	bx	r0
.Lnis_game_init_2:
	.align	2, 0
.Lnis_game_init_1:
	.word	nis_game_main + 1
	thumb_func_end nis_game_init
