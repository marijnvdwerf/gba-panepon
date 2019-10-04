	thumb_func_start nis_game_over
nis_game_over:
	push	{lr}
	ldr	r0, .Lnis_game_over_3 @ NRam
	ldr	r1, .Lnis_game_over_3 + 4 @ 0xbcc
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0x13
	bls	.Lnis_game_over_1	@cond_branch
	b	.Lnis_game_over_46
.Lnis_game_over_1:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnis_game_over_3 + 8 @ .Lnis_game_over_5
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnis_game_over_4:
	.align	2, 0
.Lnis_game_over_3:
	.word	NRam
	.word	0xbcc
	.word	.Lnis_game_over_5
.Lnis_game_over_5:
	.word	.Lnis_game_over_6
	.word	.Lnis_game_over_7
	.word	.Lnis_game_over_8
	.word	.Lnis_game_over_9
	.word	.Lnis_game_over_10
	.word	.Lnis_game_over_11
	.word	.Lnis_game_over_12
	.word	.Lnis_game_over_13
	.word	.Lnis_game_over_14
	.word	.Lnis_game_over_15
	.word	.Lnis_game_over_16
	.word	.Lnis_game_over_17
	.word	.Lnis_game_over_18
	.word	.Lnis_game_over_19
	.word	.Lnis_game_over_20
	.word	.Lnis_game_over_21
	.word	.Lnis_game_over_22
	.word	.Lnis_game_over_23
	.word	.Lnis_game_over_24
	.word	.Lnis_game_over_25
.Lnis_game_over_6:
	bl	npgo_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_7:
	bl	npgo_WinLoseDraw
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_8:
	bl	npgoWLD_bikkuri
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_9:
	bl	npgoWLD_panelfacelose_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_10:
	bl	npgoWLD_panelfacelose_loop
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_11:
	mov	r0, #0x3c
	bl	npgoWLD_wait2
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_12:
	bl	npgoWLD_keshite_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_13:
	bl	npgoWLD_keshite_main
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_14:
	bl	npgoWLD_objcolor_set
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_15:
	bl	npgoWLD_result_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_16:
	bl	npgoWLD_result_appear
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_17:
	bl	npgoWLD_result_main
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_18:
	mov	r0, #0xa
	bl	npgoWLD_wait2
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_19:
	bl	npgoWLD_bigchr_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_20:
	bl	npgoWLD_bigchr_main
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_21:
	bl	npgoWLD_YreLopSet
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_22:
	bl	npgoWLD_TryAgainYesNo_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_23:
	bl	npgoWLD_TryAgainYesNo_main
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_24:
	bl	npgoWLD_TryAgainYesNo_Af_init
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_25:
	bl	npgoWLD_TryAgainYesNo_Af_main
	cmp	r0, #0
	beq	.Lnis_game_over_45	@cond_branch
.Lnis_game_over_46:
	b	.Lnis_game_over_46
.Lnis_game_over_45:
	pop	{r0}
	bx	r0
	thumb_func_end nis_game_over
