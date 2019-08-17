	thumb_func_start np_srwreq_spdlv
np_srwreq_spdlv:
	push	{lr}
	add	sp, sp, #0xfffffff4
	ldr	r0, .Lnp_srwreq_spdlv_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_srwreq_spdlv_18	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_srwreq_spdlv_2 + 4 @ .Lnp_srwreq_spdlv_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_srwreq_spdlv_3:
	.align	2, 0
.Lnp_srwreq_spdlv_2:
	.word	ARam
	.word	.Lnp_srwreq_spdlv_4
.Lnp_srwreq_spdlv_4:
	.word	.Lnp_srwreq_spdlv_7
	.word	.Lnp_srwreq_spdlv_7
	.word	.Lnp_srwreq_spdlv_7
	.word	.Lnp_srwreq_spdlv_18
	.word	.Lnp_srwreq_spdlv_9
	.word	.Lnp_srwreq_spdlv_18
	.word	.Lnp_srwreq_spdlv_18
	.word	.Lnp_srwreq_spdlv_18
	.word	.Lnp_srwreq_spdlv_18
	.word	.Lnp_srwreq_spdlv_14
.Lnp_srwreq_spdlv_7:
	bl	np_srwreq_e_spdlv
	ldr	r0, .Lnp_srwreq_spdlv_16 @ Asc_KAZU_Size12_NML_Tbl
	ldr	r3, .Lnp_srwreq_spdlv_16 + 4 @ CRAM_BGA_SCR_GameFrame+0x2b6
	mov	r1, #0x0
	str	r1, [sp]
	mov	r1, #0x2
	str	r1, [sp, #0x4]
	ldr	r1, .Lnp_srwreq_spdlv_16 + 8 @ NRam
	ldr	r2, .Lnp_srwreq_spdlv_16 + 12 @ 0xb25
	add	r1, r1, r2
	b	.Lnp_srwreq_spdlv_15
.Lnp_srwreq_spdlv_17:
	.align	2, 0
.Lnp_srwreq_spdlv_16:
	.word	Asc_KAZU_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x2b6
	.word	NRam
	.word	0xb25
.Lnp_srwreq_spdlv_9:
	bl	np_srwreq_e_spdlv
	ldr	r0, .Lnp_srwreq_spdlv_19 @ Asc_KAZU_Size12_NML_Tbl
	ldr	r3, .Lnp_srwreq_spdlv_19 + 4 @ CRAM_BGA_SCR_GameFrame+0x2b6
	mov	r1, #0x0
	str	r1, [sp]
	mov	r1, #0x2
	str	r1, [sp, #0x4]
	ldr	r1, .Lnp_srwreq_spdlv_19 + 8 @ NRam
	add	r1, r1, #0x20
.Lnp_srwreq_spdlv_15:
	ldrb	r1, [r1]
	str	r1, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	bl	PutBgBigDex
	b	.Lnp_srwreq_spdlv_18
.Lnp_srwreq_spdlv_20:
	.align	2, 0
.Lnp_srwreq_spdlv_19:
	.word	Asc_KAZU_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x2b6
	.word	NRam
.Lnp_srwreq_spdlv_14:
	bl	np_srwreq_e_spdlv
	ldr	r0, .Lnp_srwreq_spdlv_21 @ Asc_KAZU_Size12_NML_Tbl
	ldr	r3, .Lnp_srwreq_spdlv_21 + 4 @ CRAM_BGA_SCR_GameFrame+0x2b6
	mov	r2, #0x0
	str	r2, [sp]
	mov	r1, #0x2
	str	r1, [sp, #0x4]
	str	r2, [sp, #0x8]
	mov	r1, #0x1
	mov	r2, #0x2
	bl	PutBgBigDex
.Lnp_srwreq_spdlv_18:
	add	sp, sp, #0xc
	pop	{r0}
	bx	r0
.Lnp_srwreq_spdlv_22:
	.align	2, 0
.Lnp_srwreq_spdlv_21:
	.word	Asc_KAZU_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x2b6
	thumb_func_end np_srwreq_spdlv
