	thumb_func_start np_srwreq_score
np_srwreq_score:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #0xfffffff4
	ldr	r0, .Lnp_srwreq_score_3 @ ARam
	ldrb	r1, [r0, #0x17]
	mov	r6, #0x0
	add	r3, r0, #0
	cmp	r1, #0
	beq	.Lnp_srwreq_score_1	@cond_branch
	ldr	r6, .Lnp_srwreq_score_3 + 4 @ 0xffff
.Lnp_srwreq_score_1:
	ldrb	r0, [r3, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_srwreq_score_16	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_srwreq_score_3 + 8 @ .Lnp_srwreq_score_5
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_srwreq_score_4:
	.align	2, 0
.Lnp_srwreq_score_3:
	.word	ARam
	.word	0xffff
	.word	.Lnp_srwreq_score_5
.Lnp_srwreq_score_5:
	.word	.Lnp_srwreq_score_6
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_10
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_21
	.word	.Lnp_srwreq_score_15
.Lnp_srwreq_score_16:
	b	.Lnp_srwreq_score_16
.Lnp_srwreq_score_15:
	ldr	r0, .Lnp_srwreq_score_18 @ Asc_KAZ2_Size12_NML_Tbl
	ldr	r5, .Lnp_srwreq_score_18 + 4 @ CRAM_BGA_SCR_GameFrame+0x12e
	mov	r4, #0x0
	str	r4, [sp]
	mov	r6, #0x6
	str	r6, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r5, #0
	bl	PutBgBigDex
	ldr	r0, .Lnp_srwreq_score_18 + 8 @ Asc_KAZU_Size12_NML_Tbl
	add	r5, r5, #0xc0
	str	r4, [sp]
	str	r6, [sp, #0x4]
	str	r4, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r5, #0
	bl	PutBgBigDex
	b	.Lnp_srwreq_score_21
.Lnp_srwreq_score_19:
	.align	2, 0
.Lnp_srwreq_score_18:
	.word	Asc_KAZ2_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x12e
	.word	Asc_KAZU_Size12_NML_Tbl
.Lnp_srwreq_score_6:
	ldr	r0, .Lnp_srwreq_score_22 @ NRam
	ldr	r1, .Lnp_srwreq_score_22 + 4 @ 0xb0c
	add	r7, r0, r1
	ldr	r0, [r3, #0x30]
	ldr	r1, [r7]
	cmp	r0, r1
	bcs	.Lnp_srwreq_score_20	@cond_branch
	str	r1, [r3, #0x30]
.Lnp_srwreq_score_20:
	ldr	r0, .Lnp_srwreq_score_22 + 8 @ Asc_KAZ2_Size12_NML_Tbl
	ldr	r4, .Lnp_srwreq_score_22 + 12 @ CRAM_BGA_SCR_GameFrame+0x12e
	mov	r1, #0x0
	str	r1, [sp]
	mov	r5, #0x6
	str	r5, [sp, #0x4]
	ldr	r1, [r3, #0x30]
	str	r1, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r4, #0
	bl	PutBgBigDex
	ldr	r0, .Lnp_srwreq_score_22 + 16 @ Asc_KAZU_Size12_NML_Tbl
	add	r4, r4, #0xc0
	str	r6, [sp]
	str	r5, [sp, #0x4]
	ldr	r1, [r7]
	str	r1, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r4, #0
	bl	PutBgBigDex
	b	.Lnp_srwreq_score_21
.Lnp_srwreq_score_23:
	.align	2, 0
.Lnp_srwreq_score_22:
	.word	NRam
	.word	0xb0c
	.word	Asc_KAZ2_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x12e
	.word	Asc_KAZU_Size12_NML_Tbl
.Lnp_srwreq_score_10:
	add	r2, r3, #0
	ldr	r0, .Lnp_srwreq_score_25 @ NRam
	ldr	r1, .Lnp_srwreq_score_25 + 4 @ 0xb0c
	add	r7, r0, r1
	ldr	r0, [r2, #0x34]
	ldr	r1, [r7]
	cmp	r0, r1
	bcs	.Lnp_srwreq_score_24	@cond_branch
	str	r1, [r2, #0x34]
.Lnp_srwreq_score_24:
	ldr	r0, .Lnp_srwreq_score_25 + 8 @ Asc_KAZ2_Size12_NML_Tbl
	ldr	r4, .Lnp_srwreq_score_25 + 12 @ CRAM_BGA_SCR_GameFrame+0x12e
	mov	r1, #0x0
	str	r1, [sp]
	mov	r5, #0x6
	str	r5, [sp, #0x4]
	ldr	r1, [r3, #0x34]
	str	r1, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r4, #0
	bl	PutBgBigDex
	ldr	r0, .Lnp_srwreq_score_25 + 16 @ Asc_KAZU_Size12_NML_Tbl
	add	r4, r4, #0xc0
	str	r6, [sp]
	str	r5, [sp, #0x4]
	ldr	r1, [r7]
	str	r1, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r4, #0
	bl	PutBgBigDex
.Lnp_srwreq_score_21:
	add	sp, sp, #0xc
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_srwreq_score_26:
	.align	2, 0
.Lnp_srwreq_score_25:
	.word	NRam
	.word	0xb0c
	.word	Asc_KAZ2_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x12e
	.word	Asc_KAZU_Size12_NML_Tbl
	thumb_func_end np_srwreq_score
