	thumb_func_start NisMoveKabeColor_Main
NisMoveKabeColor_Main:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r0, .LNisMoveKabeColor_Main_4 @ NisMoveKabeColor_Tbl
	ldr	r1, .LNisMoveKabeColor_Main_4 + 4 @ ARam
	add	r1, r1, #0x22
	ldrb	r1, [r1]
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r1, [r1]
	mov	ip, r1
	ldr	r0, .LNisMoveKabeColor_Main_4 + 8 @ 0x5000002
	mov	r8, r0
	mov	r7, #0x1f
	mov	r0, #0x1f
	mov	sl, r0
	mov	r0, #0xe
	mov	r9, r0
.LNisMoveKabeColor_Main_13:
	mov	r0, r8
	ldrh	r2, [r0]
	mov	r0, ip
	ldrh	r5, [r0]
	ldr	r1, .LNisMoveKabeColor_Main_4 + 12 @ 0x7fff
	and	r1, r1, r2
	ldr	r0, .LNisMoveKabeColor_Main_4 + 12 @ 0x7fff
	and	r0, r0, r5
	cmp	r1, r0
	beq	.LNisMoveKabeColor_Main_1	@cond_branch
	mov	r3, sl
	and	r3, r3, r2
	lsl	r0, r2, #0x10
	lsr	r4, r0, #0x15
	and	r4, r4, r7
	lsr	r1, r0, #0x1a
	and	r1, r1, r7
	mov	r2, sl
	and	r2, r2, r5
	lsl	r0, r5, #0x10
	lsr	r5, r0, #0x15
	and	r5, r5, r7
	lsr	r6, r0, #0x1a
	and	r6, r6, r7
	cmp	r3, r2
	bls	.LNisMoveKabeColor_Main_2	@cond_branch
	sub	r0, r3, #1
	b	.LNisMoveKabeColor_Main_3
.LNisMoveKabeColor_Main_5:
	.align	2, 0
.LNisMoveKabeColor_Main_4:
	.word	NisMoveKabeColor_Tbl
	.word	ARam
	.word	0x5000002
	.word	0x7fff
.LNisMoveKabeColor_Main_2:
	cmp	r3, r2
	bcs	.LNisMoveKabeColor_Main_6	@cond_branch
	add	r0, r3, #1
.LNisMoveKabeColor_Main_3:
	lsl	r0, r0, #0x10
	lsr	r3, r0, #0x10
.LNisMoveKabeColor_Main_6:
	cmp	r4, r5
	bls	.LNisMoveKabeColor_Main_7	@cond_branch
	sub	r0, r4, #1
	b	.LNisMoveKabeColor_Main_8
.LNisMoveKabeColor_Main_7:
	cmp	r4, r5
	bcs	.LNisMoveKabeColor_Main_9	@cond_branch
	add	r0, r4, #1
.LNisMoveKabeColor_Main_8:
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
.LNisMoveKabeColor_Main_9:
	cmp	r1, r6
	bls	.LNisMoveKabeColor_Main_10	@cond_branch
	sub	r0, r1, #1
	b	.LNisMoveKabeColor_Main_11
.LNisMoveKabeColor_Main_10:
	cmp	r1, r6
	bcs	.LNisMoveKabeColor_Main_12	@cond_branch
	add	r0, r1, #1
.LNisMoveKabeColor_Main_11:
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.LNisMoveKabeColor_Main_12:
	lsl	r0, r1, #0xa
	lsl	r1, r4, #0x5
	orr	r0, r0, r1
	orr	r3, r3, r0
	mov	r0, r8
	strh	r3, [r0]
.LNisMoveKabeColor_Main_1:
	mov	r0, #0x1
	neg	r0, r0
	add r9, r9, r0
	mov	r0, #0x2
	add r8, r8, r0
	add ip, ip, r0
	mov	r0, r9
	cmp	r0, #0
	bge	.LNisMoveKabeColor_Main_13	@cond_branch
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
	thumb_func_end NisMoveKabeColor_Main
