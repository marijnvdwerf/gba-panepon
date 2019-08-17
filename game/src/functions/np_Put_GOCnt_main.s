	thumb_func_start np_Put_GOCnt_main
np_Put_GOCnt_main:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .Lnp_Put_GOCnt_main_6 @ ARam
	ldrb	r0, [r0, #0x1e]
	cmp	r0, #0
	beq	.Lnp_Put_GOCnt_main_2	@cond_branch
	ldr	r0, .Lnp_Put_GOCnt_main_6 + 4 @ NRam
	ldr	r2, .Lnp_Put_GOCnt_main_6 + 8 @ 0xad9
	add	r1, r0, r2
	ldrb	r1, [r1]
	add	r6, r0, #0
	cmp	r1, #0
	beq	.Lnp_Put_GOCnt_main_2	@cond_branch
	ldr	r1, .Lnp_Put_GOCnt_main_6 + 12 @ 0xadd
	add	r0, r6, r1
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnp_Put_GOCnt_main_4	@cond_branch
	add	r2, r2, #0x7
	add	r1, r6, r2
	ldrb	r0, [r1]
	add	r0, r0, #0x2
	strb	r0, [r1]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0xa8
	bls	.Lnp_Put_GOCnt_main_4	@cond_branch
	mov	r0, #0xa8
	strb	r0, [r1]
.Lnp_Put_GOCnt_main_4:
	add	r4, r6, #0
	ldr	r0, .Lnp_Put_GOCnt_main_6 + 16 @ 0xadf
	add	r7, r4, r0
	ldr	r1, .Lnp_Put_GOCnt_main_6 + 12 @ 0xadd
	add	r5, r4, r1
	ldrb	r0, [r7]
	ldrb	r2, [r5]
	cmp	r0, r2
	bcs	.Lnp_Put_GOCnt_main_5	@cond_branch
	ldrb	r1, [r5]
	mov	r0, #0x9c
	mul	r0, r0, r1
	ldr	r2, .Lnp_Put_GOCnt_main_6 + 8 @ 0xad9
	add	r1, r4, r2
	ldrb	r1, [r1]
	bl	__divsi3
	mov	r2, #0x60
	neg	r2, r2
	add	r1, r2, #0
	sub	r1, r1, r0
	mov	r2, #0xae
	lsl	r2, r2, #0x4
	add	r0, r4, r2
	strb	r1, [r0]
.Lnp_Put_GOCnt_main_5:
	mov	r1, #0xae
	lsl	r1, r1, #0x4
	add	r0, r6, r1
	ldrb	r1, [r0]
	ldr	r2, .Lnp_Put_GOCnt_main_6 + 20 @ Aob_Panel_TryAgain_07
	mov	r0, #0x5c
	bl	NisCtc_PutCtc
	ldrb	r0, [r5]
	strb	r0, [r7]
.Lnp_Put_GOCnt_main_2:
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.Lnp_Put_GOCnt_main_7:
	.align	2, 0
.Lnp_Put_GOCnt_main_6:
	.word	ARam
	.word	NRam
	.word	0xad9
	.word	0xadd
	.word	0xadf
	.word	Aob_Panel_TryAgain_07
	thumb_func_end np_Put_GOCnt_main
