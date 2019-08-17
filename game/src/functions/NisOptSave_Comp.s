	thumb_func_start NisOptSave_Comp
NisOptSave_Comp:
	ldr	r1, .LNisOptSave_Comp_15 @ ARam
	ldr	r2, .LNisOptSave_Comp_15 + 4 @ Svrm
	ldrb	r0, [r1, #0x13]
	ldrb	r3, [r2]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x17]
	ldrb	r3, [r2, #0x1]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x18]
	ldrb	r3, [r2, #0x2]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x1f]
	ldrb	r3, [r2, #0x3]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x21
	ldrb	r0, [r0]
	ldrb	r3, [r2, #0x4]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x20
	ldrb	r0, [r0]
	ldrb	r3, [r2, #0x5]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x1e]
	ldrb	r3, [r2, #0x6]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x1c]
	ldrb	r3, [r2, #0x7]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x1d]
	ldrb	r3, [r2, #0x8]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	ldrb	r0, [r1, #0x19]
	ldrb	r3, [r2, #0x9]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x22
	ldrb	r0, [r0]
	ldrb	r3, [r2, #0xa]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x23
	ldrb	r0, [r0]
	ldrb	r3, [r2, #0xb]
	cmp	r0, r3
	bne	.LNisOptSave_Comp_13	@cond_branch
	add	r0, r1, #0
	add	r0, r0, #0x24
	ldrb	r0, [r0]
	ldrb	r2, [r2, #0xc]
	cmp	r0, r2
	bne	.LNisOptSave_Comp_13	@cond_branch
	mov	r0, #0x0
	b	.LNisOptSave_Comp_14
.LNisOptSave_Comp_16:
	.align	2, 0
.LNisOptSave_Comp_15:
	.word	ARam
	.word	Svrm
.LNisOptSave_Comp_13:
	mov	r0, #0x1
.LNisOptSave_Comp_14:
	bx	lr
	thumb_func_end NisOptSave_Comp
