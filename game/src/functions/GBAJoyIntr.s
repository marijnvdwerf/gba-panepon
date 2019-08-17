	thumb_func_start GBAJoyIntr
GBAJoyIntr:
	push	{r4, lr}
	ldr	r0, .LGBAJoyIntr_6 @ 0x4000140
	ldrh	r0, [r0]
	add	r4, r0, #0
	mov	r2, #0x1
	and	r2, r2, r4
	cmp	r2, #0
	beq	.LGBAJoyIntr_1	@cond_branch
	ldr	r0, .LGBAJoyIntr_6 + 4 @ joy_reboot_count_work.1083
	ldr	r0, [r0]
	cmp	r0, #0x2
	bhi	.LGBAJoyIntr_4	@cond_branch
	ldr	r1, .LGBAJoyIntr_6 + 8 @ joy_reboot_count.1082
	ldr	r0, [r1]
	add	r0, r0, #0x1
	str	r0, [r1]
	cmp	r0, #0x1d
	bls	.LGBAJoyIntr_4	@cond_branch
	ldr	r0, .LGBAJoyIntr_6 + 12 @ g_bEnableJoyReboot
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.LGBAJoyIntr_4	@cond_branch
	bl	JoyReboot
.LGBAJoyIntr_4:
	ldr	r1, .LGBAJoyIntr_6 + 4 @ joy_reboot_count_work.1083
	mov	r0, #0x0
	b	.LGBAJoyIntr_5
.LGBAJoyIntr_7:
	.align	2, 0
.LGBAJoyIntr_6:
	.word	0x4000140
	.word	joy_reboot_count_work.1083
	.word	joy_reboot_count.1082
	.word	g_bEnableJoyReboot
.LGBAJoyIntr_1:
	ldr	r1, .LGBAJoyIntr_10 @ joy_reboot_count_work.1083
	ldr	r0, [r1]
	cmp	r0, #0x1
	bls	.LGBAJoyIntr_8	@cond_branch
	mov	r0, #0x2
	str	r0, [r1]
	ldr	r0, .LGBAJoyIntr_10 + 4 @ joy_reboot_count.1082
	str	r2, [r0]
	b	.LGBAJoyIntr_9
.LGBAJoyIntr_11:
	.align	2, 0
.LGBAJoyIntr_10:
	.word	joy_reboot_count_work.1083
	.word	joy_reboot_count.1082
.LGBAJoyIntr_8:
	add	r0, r0, #0x1
.LGBAJoyIntr_5:
	str	r0, [r1]
.LGBAJoyIntr_9:
	ldr	r0, .LGBAJoyIntr_12 @ 0x4000140
	strh	r4, [r0]
	ldr	r1, .LGBAJoyIntr_12 + 4 @ joy_timeout_counter
	mov	r0, #0x0
	str	r0, [r1]
	pop	{r4}
	pop	{r0}
	bx	r0
.LGBAJoyIntr_13:
	.align	2, 0
.LGBAJoyIntr_12:
	.word	0x4000140
	.word	joy_timeout_counter
	thumb_func_end GBAJoyIntr
