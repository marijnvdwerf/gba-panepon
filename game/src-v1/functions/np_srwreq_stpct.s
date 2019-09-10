	thumb_func_start np_srwreq_stpct
np_srwreq_stpct:
	push	{r4, r5, lr}
	add	sp, sp, #0xfffffff4
	ldr	r0, .Lnp_srwreq_stpct_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_srwreq_stpct_9	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_srwreq_stpct_2 + 4 @ .Lnp_srwreq_stpct_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_srwreq_stpct_3:
	.align	2, 0
.Lnp_srwreq_stpct_2:
	.word	ARam
	.word	.Lnp_srwreq_stpct_4
.Lnp_srwreq_stpct_4:
	.word	.Lnp_srwreq_stpct_9
	.word	.Lnp_srwreq_stpct_9
	.word	.Lnp_srwreq_stpct_9
	.word	.Lnp_srwreq_stpct_14
	.word	.Lnp_srwreq_stpct_9
	.word	.Lnp_srwreq_stpct_14
	.word	.Lnp_srwreq_stpct_14
	.word	.Lnp_srwreq_stpct_14
	.word	.Lnp_srwreq_stpct_14
	.word	.Lnp_srwreq_stpct_14
.Lnp_srwreq_stpct_9:
	bl	np_srwreq_e_spdlv
	ldr	r5, .Lnp_srwreq_stpct_15 @ Asc_KAZ2_Size12_NML_Tbl
	ldr	r4, .Lnp_srwreq_stpct_15 + 4 @ CRAM_BGA_SCR_GameFrame+0x2b6
	ldr	r0, .Lnp_srwreq_stpct_15 + 8 @ 0xffff
	str	r0, [sp]
	mov	r0, #0x2
	str	r0, [sp, #0x4]
	ldr	r0, .Lnp_srwreq_stpct_15 + 12 @ NRam
	ldr	r1, .Lnp_srwreq_stpct_15 + 16 @ 0xab4
	add	r0, r0, r1
	ldrh	r0, [r0]
	mov	r1, #0x3c
	bl	__udivsi3
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	str	r0, [sp, #0x8]
	add	r0, r5, #0
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r4, #0
	bl	PutBgBigDex
	add	r1, r4, #0
	sub	r1, r1, #0x8
	ldr	r0, .Lnp_srwreq_stpct_15 + 20 @ 0x62b4
	strh	r0, [r1]
	sub	r1, r4, #6
	add	r0, r0, #0x1
	strh	r0, [r1]
	sub	r1, r4, #4
	add	r0, r0, #0x1
	strh	r0, [r1]
	sub	r1, r4, #2
	add	r0, r0, #0x1
	strh	r0, [r1]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x38]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x3a]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x3c]
	add	r0, r0, #0x1
	strh	r0, [r4, #0x3e]
.Lnp_srwreq_stpct_14:
	add	sp, sp, #0xc
	pop	{r4, r5}
	pop	{r0}
	bx	r0
.Lnp_srwreq_stpct_16:
	.align	2, 0
.Lnp_srwreq_stpct_15:
	.word	Asc_KAZ2_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x2b6
	.word	0xffff
	.word	NRam
	.word	0xab4
	.word	0x62b4
	thumb_func_end np_srwreq_stpct
