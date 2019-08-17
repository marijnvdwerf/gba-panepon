	thumb_func_start np_ojm_set_NR
np_ojm_set_NR:
	add	r3, r0, #0
	ldr	r1, .Lnp_ojm_set_NR_4 @ nojpt_tbl
	ldrb	r0, [r3]
	sub	r0, r0, #0xb
	lsl	r0, r0, #0x2
	add	r0, r0, r1
	ldr	r0, [r0]
	ldrb	r2, [r0]
	ldr	r0, .Lnp_ojm_set_NR_4 + 4 @ NRam+0x154
	sub	r0, r3, r0
	lsr	r0, r0, #0x3
	add	r0, r0, #0x1
	cmp	r2, r0
	ble	.Lnp_ojm_set_NR_1	@cond_branch
	add	r2, r0, #0
.Lnp_ojm_set_NR_1:
	ldrb	r1, [r3, #0x4]
	mov	r0, #0xef
	and	r0, r0, r1
	strb	r0, [r3, #0x4]
	cmp	r2, #0
	beq	.Lnp_ojm_set_NR_2	@cond_branch
	mov	r0, #0x1
.Lnp_ojm_set_NR_3:
	strb	r0, [r3, #0x2]
	sub	r2, r2, #0x1
	sub	r3, r3, #0x8
	cmp	r2, #0
	bne	.Lnp_ojm_set_NR_3	@cond_branch
.Lnp_ojm_set_NR_2:
	bx	lr
.Lnp_ojm_set_NR_5:
	.align	2, 0
.Lnp_ojm_set_NR_4:
	.word	nojpt_tbl
	.word	NRam+0x154
	thumb_func_end np_ojm_set_NR
