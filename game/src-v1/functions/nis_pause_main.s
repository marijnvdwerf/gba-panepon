	thumb_func_start nis_pause_main
nis_pause_main:
	push	{lr}
	ldr	r0, .Lnis_pause_main_2 @ NRam
	ldr	r1, .Lnis_pause_main_2 + 4 @ 0xa66
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #0x6
	bhi	.Lnis_pause_main_17	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnis_pause_main_2 + 8 @ .Lnis_pause_main_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnis_pause_main_3:
	.align	2, 0
.Lnis_pause_main_2:
	.word	NRam
	.word	0xa66
	.word	.Lnis_pause_main_4
.Lnis_pause_main_4:
	.word	.Lnis_pause_main_5
	.word	.Lnis_pause_main_6
	.word	.Lnis_pause_main_7
	.word	.Lnis_pause_main_8
	.word	.Lnis_pause_main_9
	.word	.Lnis_pause_main_10
	.word	.Lnis_pause_main_11
.Lnis_pause_main_5:
	bl	nis_pause_init
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_6:
	mov	r0, #0xa
	bl	nis_pause_wait
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_7:
	mov	r0, #0x1
	bl	nis_pause_window
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_8:
	bl	nis_pause_select
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_9:
	mov	r0, #0x0
	bl	nis_pause_window
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_10:
	mov	r0, #0xa
	bl	nis_pause_wait
	cmp	r0, #0
	beq	.Lnis_pause_main_17	@cond_branch
.Lnis_pause_main_11:
	bl	nis_pause_exit
.Lnis_pause_main_17:
	pop	{r0}
	bx	r0
	thumb_func_end nis_pause_main
