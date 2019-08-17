	thumb_func_start np_srwreq_time
np_srwreq_time:
	push	{r4, r5, r6, lr}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	add	sp, sp, #0xfffffff4
	ldr	r0, .Lnp_srwreq_time_1 @ Asc_KAZ2_Size12_NML_Tbl
	mov	r9, r0
	ldr	r6, .Lnp_srwreq_time_1 + 4 @ CRAM_BGA_SCR_GameFrame+0x102
	ldr	r1, .Lnp_srwreq_time_1 + 8 @ 0xffff
	mov	r8, r1
	str	r1, [sp]
	mov	r0, #0x1
	str	r0, [sp, #0x4]
	ldr	r4, .Lnp_srwreq_time_1 + 12 @ NRam
	ldr	r1, .Lnp_srwreq_time_1 + 16 @ 0xb1b
	add	r0, r4, r1
	ldrb	r0, [r0]
	str	r0, [sp, #0x8]
	mov	r0, r9
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r6, #0
	bl	PutBgBigDex
	add	r3, r6, #4
	mov	r0, r8
	str	r0, [sp]
	mov	r5, #0x2
	str	r5, [sp, #0x4]
	ldr	r1, .Lnp_srwreq_time_1 + 20 @ 0xb1a
	add	r0, r4, r1
	ldrb	r0, [r0]
	str	r0, [sp, #0x8]
	mov	r0, r9
	mov	r1, #0x1
	mov	r2, #0x2
	bl	PutBgBigDex
	add	r3, r6, #0
	add	r3, r3, #0xa
	mov	r0, r8
	str	r0, [sp]
	str	r5, [sp, #0x4]
	ldr	r1, .Lnp_srwreq_time_1 + 24 @ 0xb19
	add	r0, r4, r1
	ldrb	r0, [r0]
	str	r0, [sp, #0x8]
	mov	r0, r9
	mov	r1, #0x1
	mov	r2, #0x2
	bl	PutBgBigDex
	add	r6, r6, #0x10
	mov	r0, r8
	str	r0, [sp]
	str	r5, [sp, #0x4]
	ldr	r1, .Lnp_srwreq_time_1 + 28 @ np_srwreq_time3_data
	ldr	r0, .Lnp_srwreq_time_1 + 32 @ 0xb18
	add	r4, r4, r0
	ldrb	r0, [r4]
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #0x8]
	mov	r0, r9
	mov	r1, #0x1
	mov	r2, #0x2
	add	r3, r6, #0
	bl	PutBgBigDex
	add	sp, sp, #0xc
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.Lnp_srwreq_time_2:
	.align	2, 0
.Lnp_srwreq_time_1:
	.word	Asc_KAZ2_Size12_NML_Tbl
	.word	CRAM_BGA_SCR_GameFrame+0x102
	.word	0xffff
	.word	NRam
	.word	0xb1b
	.word	0xb1a
	.word	0xb19
	.word	np_srwreq_time3_data
	.word	0xb18
	thumb_func_end np_srwreq_time
