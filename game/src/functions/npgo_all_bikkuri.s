	thumb_func_start npgo_all_bikkuri
npgo_all_bikkuri:
	ldr	r2, .Lnpgo_all_bikkuri_3 @ NRam+0x154
	mov	r3, #0x48
.Lnpgo_all_bikkuri_2:
	ldrb	r1, [r2]
	sub	r0, r1, #1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	cmp	r0, #0x5
	bhi	.Lnpgo_all_bikkuri_1	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x6a
	strb	r0, [r2, #0x1]
.Lnpgo_all_bikkuri_1:
	sub	r3, r3, #0x1
	add	r2, r2, #0x8
	cmp	r3, #0
	bne	.Lnpgo_all_bikkuri_2	@cond_branch
	bx	lr
.Lnpgo_all_bikkuri_4:
	.align	2, 0
.Lnpgo_all_bikkuri_3:
	.word	NRam+0x154
	thumb_func_end npgo_all_bikkuri
