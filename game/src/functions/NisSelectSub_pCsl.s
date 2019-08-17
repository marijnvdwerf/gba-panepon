	thumb_func_start NisSelectSub_pCsl
NisSelectSub_pCsl:
	ldr	r1, .LNisSelectSub_pCsl_2 @ count.268
	ldr	r0, [r1]
	add	r0, r0, #0x1
	str	r0, [r1]
	cmp	r0, #0x1c
	bls	.LNisSelectSub_pCsl_1	@cond_branch
	mov	r0, #0x0
	str	r0, [r1]
.LNisSelectSub_pCsl_1:
	ldr	r0, .LNisSelectSub_pCsl_2 + 4 @ NisSelectSub_pCslDat
	ldr	r1, [r1]
	lsl	r1, r1, #0x2
	add	r1, r1, r0
	ldr	r0, [r1]
	bx	lr
.LNisSelectSub_pCsl_3:
	.align	2, 0
.LNisSelectSub_pCsl_2:
	.word	count.268
	.word	NisSelectSub_pCslDat
	thumb_func_end NisSelectSub_pCsl
