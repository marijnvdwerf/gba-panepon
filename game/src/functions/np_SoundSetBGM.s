	thumb_func_start np_SoundSetBGM
np_SoundSetBGM:
	push	{lr}
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	ldr	r0, .Lnp_SoundSetBGM_2 @ ARam
	ldrb	r0, [r0, #0x1a]
	cmp	r0, #0
	bne	.Lnp_SoundSetBGM_1	@cond_branch
	add	r0, r1, #0
	bl	m4aSongNumStart
.Lnp_SoundSetBGM_1:
	pop	{r0}
	bx	r0
.Lnp_SoundSetBGM_3:
	.align	2, 0
.Lnp_SoundSetBGM_2:
	.word	ARam
	thumb_func_end np_SoundSetBGM
