	thumb_func_start JoyReboot
JoyReboot:
	ldr	r3, .LJoyReboot_3 @ 0x80000b2
	ldrb	r0, [r3]
	sub	r0, r0, #0x96
	beq	.LJoyReboot_2	@cond_branch
	ldr	r2, .LJoyReboot_3 + 4 @ 0x4000134
	ldrh	r0, [r2]
	lsr	r0, r0, #0xe
	cmp	r0, #0x3
	bne	.LJoyReboot_2	@cond_branch
	swi	#0x26
.LJoyReboot_2:
	bx	lr
.LJoyReboot_4:
	.align	2, 0
.LJoyReboot_3:
	.word	0x80000b2
	.word	0x4000134
	thumb_func_end JoyReboot
