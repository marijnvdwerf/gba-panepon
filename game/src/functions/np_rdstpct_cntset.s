	thumb_func_start np_rdstpct_cntset
np_rdstpct_cntset:
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	ldr	r0, .Lnp_rdstpct_cntset_2 @ NRam
	ldr	r3, .Lnp_rdstpct_cntset_2 + 4 @ 0xb34
	add	r2, r0, r3
	ldrh	r0, [r2]
	cmp	r0, r1
	bcs	.Lnp_rdstpct_cntset_1	@cond_branch
	strh	r1, [r2]
.Lnp_rdstpct_cntset_1:
	bx	lr
.Lnp_rdstpct_cntset_3:
	.align	2, 0
.Lnp_rdstpct_cntset_2:
	.word	NRam
	.word	0xb34
	thumb_func_end np_rdstpct_cntset
