	thumb_func_start np_PutObjMascot_Ctc
np_PutObjMascot_Ctc:
	push	{r4, r5, r6, lr}
	ldr	r1, .Lnp_PutObjMascot_Ctc_3 @ ARam+0x3c
	add	r6, r1, #0
	add	r6, r6, #0x30
	sub	r0, r1, #2
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_PutObjMascot_Ctc_1	@cond_branch
	mov	r4, #0x60
	ldr	r0, .Lnp_PutObjMascot_Ctc_3 + 4 @ b_BG1VOFS
	ldrh	r0, [r0]
	sub	r4, r4, r0
	mov	r5, #0x86
	lsl	r5, r5, #0x5
	ldr	r2, [r1, #0x28]
	add	r0, r5, #0
	add	r1, r4, #0
	bl	NisCtc_PutCtc_R
	ldr	r2, [r6, #0x28]
	add	r0, r5, #0
	add	r1, r4, #0
	bl	NisCtc_PutCtc_R
	b	.Lnp_PutObjMascot_Ctc_2
.Lnp_PutObjMascot_Ctc_4:
	.align	2, 0
.Lnp_PutObjMascot_Ctc_3:
	.word	ARam+0x3c
	.word	b_BG1VOFS
.Lnp_PutObjMascot_Ctc_1:
	ldr	r2, [r1, #0x28]
	mov	r0, #0x28
	mov	r1, #0x60
	bl	NisCtc_PutCtc
	ldr	r2, [r6, #0x28]
	mov	r0, #0x28
	mov	r1, #0x60
	bl	NisCtc_PutCtc
.Lnp_PutObjMascot_Ctc_2:
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
	thumb_func_end np_PutObjMascot_Ctc
