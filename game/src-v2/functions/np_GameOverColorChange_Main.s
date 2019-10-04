	thumb_func_start np_GameOverColorChange_Main
np_GameOverColorChange_Main:
	push	{lr}
	ldr	r0, .Lnp_GameOverColorChange_Main_4 @ NmiInc
	ldr	r0, [r0]
	mov	r1, #0x3
	and	r0, r0, r1
	ldr	r2, .Lnp_GameOverColorChange_Main_4 + 4 @ ARam
	cmp	r0, #0
	bne	.Lnp_GameOverColorChange_Main_1	@cond_branch
	add	r1, r2, #0
	add	r1, r1, #0x39
	ldrb	r0, [r1]
	add	r0, r0, #0x1
	strb	r0, [r1]
.Lnp_GameOverColorChange_Main_1:
	add	r1, r2, #0
	add	r1, r1, #0x39
	ldrb	r0, [r1]
	cmp	r0, #0x35
	bls	.Lnp_GameOverColorChange_Main_2	@cond_branch
	mov	r0, #0x0
	strb	r0, [r1]
.Lnp_GameOverColorChange_Main_2:
	ldr	r3, .Lnp_GameOverColorChange_Main_4 + 8 @ 0x50000e2
	ldrb	r0, [r1]
	lsl	r0, r0, #0x1
	ldr	r1, .Lnp_GameOverColorChange_Main_4 + 12 @ ponagb2m_GAME_OVER_CLC_Acl
	add	r1, r0, r1
	mov	r2, #0x8
.Lnp_GameOverColorChange_Main_3:
	ldrh	r0, [r1]
	strh	r0, [r3]
	add	r1, r1, #0x2
	add	r3, r3, #0x2
	sub	r2, r2, #0x1
	cmp	r2, #0
	bne	.Lnp_GameOverColorChange_Main_3	@cond_branch
	pop	{r0}
	bx	r0
.Lnp_GameOverColorChange_Main_5:
	.align	2, 0
.Lnp_GameOverColorChange_Main_4:
	.word	NmiInc
	.word	ARam
	.word	0x50000e2
	.word	ponagb2m_GAME_OVER_CLC_Acl
	thumb_func_end np_GameOverColorChange_Main
