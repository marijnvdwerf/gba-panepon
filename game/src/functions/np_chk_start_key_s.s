	thumb_func_start np_chk_start_key_s
np_chk_start_key_s:
	push	{lr}
	ldr	r0, .Lnp_chk_start_key_s_3 @ KeyRead_Trg
	ldrh	r1, [r0]
	mov	r0, #0x8
	and	r0, r0, r1
	cmp	r0, #0
	beq	.Lnp_chk_start_key_s_1	@cond_branch
	mov	r0, #0x2
	bl	m4aSongNumStart
	mov	r0, #0x1
	b	.Lnp_chk_start_key_s_2
.Lnp_chk_start_key_s_4:
	.align	2, 0
.Lnp_chk_start_key_s_3:
	.word	KeyRead_Trg
.Lnp_chk_start_key_s_1:
	mov	r0, #0x0
.Lnp_chk_start_key_s_2:
	pop	{r1}
	bx	r1
	thumb_func_end np_chk_start_key_s
