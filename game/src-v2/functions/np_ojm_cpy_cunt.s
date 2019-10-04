	thumb_func_start np_ojm_cpy_cunt
np_ojm_cpy_cunt:
	push	{lr}
	add	r2, r0, #0
	ldr	r1, .Lnp_ojm_cpy_cunt_3 @ nojpt_tbl
	ldrb	r0, [r2]
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	ldrb	r1, [r0]
	ldr	r0, .Lnp_ojm_cpy_cunt_3 + 4 @ NRam+0x154
	sub	r0, r2, r0
	lsr	r0, r0, #0x3
	add	r0, r0, #0x1
	cmp	r1, r0
	ble	.Lnp_ojm_cpy_cunt_1	@cond_branch
	add	r1, r0, #0
.Lnp_ojm_cpy_cunt_1:
	ldrb	r0, [r2, #0x5]
	b	.Lnp_ojm_cpy_cunt_2
.Lnp_ojm_cpy_cunt_4:
	.align	2, 0
.Lnp_ojm_cpy_cunt_3:
	.word	nojpt_tbl
	.word	NRam+0x154
.Lnp_ojm_cpy_cunt_5:
	strb	r0, [r2, #0x5]
.Lnp_ojm_cpy_cunt_2:
	sub	r1, r1, #0x1
	sub	r2, r2, #0x8
	cmp	r1, #0
	bne	.Lnp_ojm_cpy_cunt_5	@cond_branch
	pop	{r0}
	bx	r0
	thumb_func_end np_ojm_cpy_cunt
