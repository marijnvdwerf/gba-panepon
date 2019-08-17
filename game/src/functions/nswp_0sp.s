	thumb_func_start nswp_0sp
nswp_0sp:
	add	r2, r0, #0
	ldrb	r0, [r2]
	cmp	r0, #0
	beq	.Lnswp_0sp_1	@cond_branch
	mov	r0, #0x0
	strb	r0, [r2, #0x1]
	ldrb	r1, [r2, #0x4]
	mov	r0, #0x87
	and	r0, r0, r1
	strb	r0, [r2, #0x4]
	add	r0, r2, #0
	add	r0, r0, #0x32
	ldrb	r0, [r0]
	cmp	r0, #0
	bne	.Lnswp_0sp_2	@cond_branch
	mov	r0, #0x4
	b	.Lnswp_0sp_3
.Lnswp_0sp_2:
	mov	r0, #0x3
.Lnswp_0sp_3:
	strb	r0, [r2, #0x2]
.Lnswp_0sp_1:
	bx	lr
	thumb_func_end nswp_0sp
