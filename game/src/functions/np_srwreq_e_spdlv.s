	thumb_func_start np_srwreq_e_spdlv
np_srwreq_e_spdlv:
	ldr	r0, .Lnp_srwreq_e_spdlv_2 @ ARam
	ldrb	r0, [r0, #0x2]
	cmp	r0, #0x9
	bhi	.Lnp_srwreq_e_spdlv_9	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_srwreq_e_spdlv_2 + 4 @ .Lnp_srwreq_e_spdlv_4
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_srwreq_e_spdlv_3:
	.align	2, 0
.Lnp_srwreq_e_spdlv_2:
	.word	ARam
	.word	.Lnp_srwreq_e_spdlv_4
.Lnp_srwreq_e_spdlv_4:
	.word	.Lnp_srwreq_e_spdlv_9
	.word	.Lnp_srwreq_e_spdlv_9
	.word	.Lnp_srwreq_e_spdlv_9
	.word	.Lnp_srwreq_e_spdlv_14
	.word	.Lnp_srwreq_e_spdlv_9
	.word	.Lnp_srwreq_e_spdlv_14
	.word	.Lnp_srwreq_e_spdlv_14
	.word	.Lnp_srwreq_e_spdlv_14
	.word	.Lnp_srwreq_e_spdlv_14
	.word	.Lnp_srwreq_e_spdlv_14
.Lnp_srwreq_e_spdlv_9:
	ldr	r1, .Lnp_srwreq_e_spdlv_15 @ CRAM_BGA_SCR_GameFrame
	ldr	r2, .Lnp_srwreq_e_spdlv_15 + 4 @ 0x2ae
	add	r0, r1, r2
	mov	r2, #0x0
	strh	r2, [r0]
	mov	r3, #0xac
	lsl	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x36
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	add	r3, r3, #0x2
	add	r0, r1, r3
	strh	r2, [r0]
	mov	r0, #0xbe
	lsl	r0, r0, #0x2
	add	r1, r1, r0
	strh	r2, [r1]
.Lnp_srwreq_e_spdlv_14:
	bx	lr
.Lnp_srwreq_e_spdlv_16:
	.align	2, 0
.Lnp_srwreq_e_spdlv_15:
	.word	CRAM_BGA_SCR_GameFrame
	.word	0x2ae
	thumb_func_end np_srwreq_e_spdlv
