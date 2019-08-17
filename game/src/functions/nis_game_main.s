	thumb_func_start nis_game_main
nis_game_main:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .Lnis_game_main_5 @ NRam
	ldr	r1, .Lnis_game_main_5 + 4 @ 0xae1
	add	r4, r0, r1
	ldrb	r2, [r4]
	add	r3, r0, #0
	cmp	r2, #0
	bne	.Lnis_game_main_2	@cond_branch
	ldr	r0, .Lnis_game_main_5 + 8 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnis_game_main_2	@cond_branch
	mov	r0, #0x1
	strb	r0, [r4]
	ldr	r1, .Lnis_game_main_5 + 12 @ 0xae6
	add	r0, r3, r1
	strb	r2, [r0]
.Lnis_game_main_2:
	add	r7, r3, #0
	ldr	r1, .Lnis_game_main_5 + 16 @ 0xadc
	add	r0, r7, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	beq	.Lnis_game_main_3	@cond_branch
	bl	nis_game_over
	bl	np_PutObjPnl
	b	.Lnis_game_main_20
.Lnis_game_main_6:
	.align	2, 0
.Lnis_game_main_5:
	.word	NRam
	.word	0xae1
	.word	KeyRead_Trg
	.word	0xae6
	.word	0xadc
.Lnis_game_main_3:
	ldr	r0, .Lnis_game_main_13 @ 0xae1
	add	r5, r7, r0
	ldrb	r0, [r5]
	cmp	r0, #0
	beq	.Lnis_game_main_7	@cond_branch
	bl	nis_pause_main
	bl	np_PutObjPnl
	ldrb	r6, [r5]
	cmp	r6, #0
	bne	.Lnis_game_main_20	@cond_branch
	ldr	r1, .Lnis_game_main_13 + 4 @ ARam
	add	r0, r1, #0
	add	r0, r0, #0x2c
	ldrb	r0, [r0]
	cmp	r0, #0x1
	beq	.Lnis_game_main_12	@cond_branch
	cmp	r0, #0x1
	bgt	.Lnis_game_main_10	@cond_branch
	cmp	r0, #0
	beq	.Lnis_game_main_20	@cond_branch
	b	.Lnis_game_main_12
.Lnis_game_main_14:
	.align	2, 0
.Lnis_game_main_13:
	.word	0xae1
	.word	ARam
.Lnis_game_main_10:
	cmp	r0, #0x2
	bne	.Lnis_game_main_15	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x38
	mov	r4, #0x1
	strb	r4, [r0]
	ldr	r0, .Lnis_game_main_17 @ NisMsgSleepInit + 1
	bl	MainSeqSearchNear
	strb	r4, [r5]
	ldr	r1, .Lnis_game_main_17 + 4 @ 0xae6
	add	r0, r7, r1
	strb	r6, [r0]
	b	.Lnis_game_main_20
.Lnis_game_main_18:
	.align	2, 0
.Lnis_game_main_17:
	.word	NisMsgSleepInit + 1
	.word	0xae6
.Lnis_game_main_15:
	cmp	r0, #0x3
	beq	.Lnis_game_main_20	@cond_branch
.Lnis_game_main_12:
	ldr	r0, .Lnis_game_main_21 @ NisTitleInit + 1
	bl	MainSeqSearchNear
	b	.Lnis_game_main_20
.Lnis_game_main_22:
	.align	2, 0
.Lnis_game_main_21:
	.word	NisTitleInit + 1
.Lnis_game_main_7:
	ldrb	r0, [r3, #0x9]
	cmp	r0, #0
	beq	.Lnis_game_main_23	@cond_branch
	bl	np_ready_start
.Lnis_game_main_23:
	bl	np_DemoKeyDat_Play
	bl	np_rakka_main
	bl	np_field_yure
	bl	np_set_scfg
	bl	np_otai_test
	bl	np_ojmten_dn
	bl	np_ojm_atahas
	bl	np_ojm_has
	bl	np_tenmetu_spdlv
	bl	np_csl_main
	bl	np_shoukyo_kensaku
	bl	np_Put_GOCnt_main
	bl	np_zenkeshi_demo_main
	bl	np_pchk_dan
	bl	np_kiken_bgm
	bl	np_panel_anm
	bl	np_PutObjPnl
	bl	np_srwreq_time
	bl	np_time_cnt
	bl	srw_main
.Lnis_game_main_20:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end nis_game_main
