	thumb_func_start np_OjamaAttackDown
np_OjamaAttackDown:
	push	{r4, r5, r6, r7, lr}
	ldr	r0, .Lnp_OjamaAttackDown_3 @ NRam
	ldrh	r2, [r0, #0x1e]
	mov	ip, r0
	cmp	r2, #0
	beq	.Lnp_OjamaAttackDown_1	@cond_branch
	sub	r0, r2, #1
	mov	r1, ip
	strh	r0, [r1, #0x1e]
	mov	r0, #0x0
	b	.Lnp_OjamaAttackDown_2
.Lnp_OjamaAttackDown_4:
	.align	2, 0
.Lnp_OjamaAttackDown_3:
	.word	NRam
.Lnp_OjamaAttackDown_1:
	mov	r2, ip
	add	r2, r2, #0x21
	ldrb	r0, [r2]
	add	r0, r0, #0x1
	mov	r1, #0x1
	and	r0, r0, r1
	strb	r0, [r2]
	cmp	r0, #0
	bne	.Lnp_OjamaAttackDown_5	@cond_branch
	mov	r0, ip
	add	r0, r0, #0x20
	ldrb	r1, [r0]
	cmp	r1, #0x63
	bge	.Lnp_OjamaAttackDown_6	@cond_branch
	add	r1, r1, #0x1
	b	.Lnp_OjamaAttackDown_7
.Lnp_OjamaAttackDown_6:
	mov	r1, #0x63
.Lnp_OjamaAttackDown_7:
	mov	r0, ip
	add	r0, r0, #0x20
	strb	r1, [r0]
	mov	r1, ip
	add	r1, r1, #0x22
	mov	r0, #0xb4
	strb	r0, [r1]
.Lnp_OjamaAttackDown_5:
	ldr	r3, .Lnp_OjamaAttackDown_15 @ NRam
	ldrb	r0, [r3, #0x1c]
	ldr	r2, [r3, #0x18]
	add	r0, r2, r0
	ldrb	r7, [r0]
	mov	r0, #0xf
	and	r7, r7, r0
	cmp	r7, #0
	bne	.Lnp_OjamaAttackDown_8	@cond_branch
	mov	r7, #0x10
.Lnp_OjamaAttackDown_8:
	mov	r0, #0x0
	strh	r0, [r3, #0x1e]
	add	r1, r2, #4
	str	r1, [r3, #0x18]
	ldrb	r0, [r2, #0x4]
	cmp	r0, #0
	bne	.Lnp_OjamaAttackDown_12	@cond_branch
	ldrb	r0, [r1, #0x1]
	cmp	r0, #0
	bne	.Lnp_OjamaAttackDown_12	@cond_branch
	ldrb	r0, [r1, #0x2]
	cmp	r0, #0
	bne	.Lnp_OjamaAttackDown_12	@cond_branch
	ldrb	r0, [r1, #0x3]
	cmp	r0, #0
	bne	.Lnp_OjamaAttackDown_12	@cond_branch
	ldr	r0, .Lnp_OjamaAttackDown_15 + 4 @ OjamaAttackData+0x198
	str	r0, [r3, #0x18]
.Lnp_OjamaAttackDown_12:
	bl	RandomGet03
	ldr	r1, .Lnp_OjamaAttackDown_15 @ NRam
	strb	r0, [r1, #0x1c]
	ldrb	r2, [r1, #0x1c]
	ldr	r0, [r1, #0x18]
	add	r0, r0, r2
	ldrb	r3, [r0]
	lsr	r0, r3, #0x4
	cmp	r0, #0xf
	bls	.Lnp_OjamaAttackDown_13	@cond_branch
	b	.Lnp_OjamaAttackDown_82
.Lnp_OjamaAttackDown_13:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_15 + 8 @ .Lnp_OjamaAttackDown_17
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_16:
	.align	2, 0
.Lnp_OjamaAttackDown_15:
	.word	NRam
	.word	OjamaAttackData+0x198
	.word	.Lnp_OjamaAttackDown_17
.Lnp_OjamaAttackDown_17:
	.word	.Lnp_OjamaAttackDown_18
	.word	.Lnp_OjamaAttackDown_19
	.word	.Lnp_OjamaAttackDown_20
	.word	.Lnp_OjamaAttackDown_21
	.word	.Lnp_OjamaAttackDown_22
	.word	.Lnp_OjamaAttackDown_23
	.word	.Lnp_OjamaAttackDown_24
	.word	.Lnp_OjamaAttackDown_25
	.word	.Lnp_OjamaAttackDown_26
	.word	.Lnp_OjamaAttackDown_27
	.word	.Lnp_OjamaAttackDown_28
	.word	.Lnp_OjamaAttackDown_29
	.word	.Lnp_OjamaAttackDown_30
	.word	.Lnp_OjamaAttackDown_31
	.word	.Lnp_OjamaAttackDown_32
	.word	.Lnp_OjamaAttackDown_33
.Lnp_OjamaAttackDown_18:
	ldr	r1, .Lnp_OjamaAttackDown_35 @ NRam
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_46
.Lnp_OjamaAttackDown_36:
	.align	2, 0
.Lnp_OjamaAttackDown_35:
	.word	NRam
.Lnp_OjamaAttackDown_19:
	ldr	r1, .Lnp_OjamaAttackDown_38 @ NRam
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_46
.Lnp_OjamaAttackDown_39:
	.align	2, 0
.Lnp_OjamaAttackDown_38:
	.word	NRam
.Lnp_OjamaAttackDown_20:
	ldr	r1, .Lnp_OjamaAttackDown_41 @ NRam
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, #0x3c
	b	.Lnp_OjamaAttackDown_46
.Lnp_OjamaAttackDown_42:
	.align	2, 0
.Lnp_OjamaAttackDown_41:
	.word	NRam
.Lnp_OjamaAttackDown_21:
	ldr	r1, .Lnp_OjamaAttackDown_44 @ NRam
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, #0x78
	b	.Lnp_OjamaAttackDown_46
.Lnp_OjamaAttackDown_45:
	.align	2, 0
.Lnp_OjamaAttackDown_44:
	.word	NRam
.Lnp_OjamaAttackDown_22:
	ldr	r1, .Lnp_OjamaAttackDown_47 @ NRam
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, #0xf0
	b	.Lnp_OjamaAttackDown_46
.Lnp_OjamaAttackDown_48:
	.align	2, 0
.Lnp_OjamaAttackDown_47:
	.word	NRam
.Lnp_OjamaAttackDown_23:
	ldr	r1, .Lnp_OjamaAttackDown_50 @ NRam
	mov	r2, #0xb4
	lsl	r2, r2, #0x1
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_51:
	.align	2, 0
.Lnp_OjamaAttackDown_50:
	.word	NRam
.Lnp_OjamaAttackDown_24:
	ldr	r1, .Lnp_OjamaAttackDown_53 @ NRam
	mov	r2, #0x96
	lsl	r2, r2, #0x2
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_54:
	.align	2, 0
.Lnp_OjamaAttackDown_53:
	.word	NRam
.Lnp_OjamaAttackDown_25:
	ldr	r1, .Lnp_OjamaAttackDown_56 @ NRam
	mov	r2, #0xb4
	lsl	r2, r2, #0x2
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_57:
	.align	2, 0
.Lnp_OjamaAttackDown_56:
	.word	NRam
.Lnp_OjamaAttackDown_26:
	ldr	r1, .Lnp_OjamaAttackDown_59 @ NRam
	mov	r2, #0xd2
	lsl	r2, r2, #0x2
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_60:
	.align	2, 0
.Lnp_OjamaAttackDown_59:
	.word	NRam
.Lnp_OjamaAttackDown_27:
	ldr	r1, .Lnp_OjamaAttackDown_62 @ NRam
	mov	r2, #0xf0
	lsl	r2, r2, #0x2
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_63:
	.align	2, 0
.Lnp_OjamaAttackDown_62:
	.word	NRam
.Lnp_OjamaAttackDown_28:
	ldr	r1, .Lnp_OjamaAttackDown_65 @ NRam
	mov	r2, #0x87
	lsl	r2, r2, #0x3
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_66:
	.align	2, 0
.Lnp_OjamaAttackDown_65:
	.word	NRam
.Lnp_OjamaAttackDown_29:
	ldr	r1, .Lnp_OjamaAttackDown_68 @ NRam
	mov	r2, #0x96
	lsl	r2, r2, #0x3
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_69:
	.align	2, 0
.Lnp_OjamaAttackDown_68:
	.word	NRam
.Lnp_OjamaAttackDown_30:
	ldr	r1, .Lnp_OjamaAttackDown_71 @ NRam
	mov	r2, #0xa5
	lsl	r2, r2, #0x3
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_72:
	.align	2, 0
.Lnp_OjamaAttackDown_71:
	.word	NRam
.Lnp_OjamaAttackDown_31:
	ldr	r1, .Lnp_OjamaAttackDown_74 @ NRam
	mov	r2, #0xb4
	lsl	r2, r2, #0x3
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_75:
	.align	2, 0
.Lnp_OjamaAttackDown_74:
	.word	NRam
.Lnp_OjamaAttackDown_32:
	ldr	r1, .Lnp_OjamaAttackDown_77 @ NRam
	ldr	r2, .Lnp_OjamaAttackDown_77 + 4 @ 0x654
	b	.Lnp_OjamaAttackDown_76
.Lnp_OjamaAttackDown_78:
	.align	2, 0
.Lnp_OjamaAttackDown_77:
	.word	NRam
	.word	0x654
.Lnp_OjamaAttackDown_33:
	ldr	r1, .Lnp_OjamaAttackDown_80 @ NRam
	mov	r2, #0xe1
	lsl	r2, r2, #0x3
.Lnp_OjamaAttackDown_76:
	add	r0, r2, #0
	ldrh	r2, [r1, #0x1e]
	add	r0, r0, r2
.Lnp_OjamaAttackDown_46:
	strh	r0, [r1, #0x1e]
	mov	ip, r1
	b	.Lnp_OjamaAttackDown_79
.Lnp_OjamaAttackDown_81:
	.align	2, 0
.Lnp_OjamaAttackDown_80:
	.word	NRam
.Lnp_OjamaAttackDown_82:
	b	.Lnp_OjamaAttackDown_82
.Lnp_OjamaAttackDown_79:
	ldr	r0, .Lnp_OjamaAttackDown_85 @ ARam
	ldrb	r1, [r0, #0x6]
	add	r4, r0, #0
	cmp	r1, #0x5
	bls	.Lnp_OjamaAttackDown_83	@cond_branch
	b	.Lnp_OjamaAttackDown_189
.Lnp_OjamaAttackDown_83:
	lsl	r0, r1, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_85 + 4 @ .Lnp_OjamaAttackDown_87
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_86:
	.align	2, 0
.Lnp_OjamaAttackDown_85:
	.word	ARam
	.word	.Lnp_OjamaAttackDown_87
.Lnp_OjamaAttackDown_87:
	.word	.Lnp_OjamaAttackDown_93
	.word	.Lnp_OjamaAttackDown_89
	.word	.Lnp_OjamaAttackDown_92
	.word	.Lnp_OjamaAttackDown_92
	.word	.Lnp_OjamaAttackDown_92
	.word	.Lnp_OjamaAttackDown_93
.Lnp_OjamaAttackDown_93:
	mov	r2, #0x67
	mov	r0, #0xf
	and	r0, r0, r3
	cmp	r0, #0xf
	bhi	.Lnp_OjamaAttackDown_124	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_96 @ .Lnp_OjamaAttackDown_95
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_97:
	.align	2, 0
.Lnp_OjamaAttackDown_96:
	.word	.Lnp_OjamaAttackDown_95
.Lnp_OjamaAttackDown_95:
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_161
	.word	.Lnp_OjamaAttackDown_100
	.word	.Lnp_OjamaAttackDown_101
	.word	.Lnp_OjamaAttackDown_102
	.word	.Lnp_OjamaAttackDown_103
	.word	.Lnp_OjamaAttackDown_104
	.word	.Lnp_OjamaAttackDown_105
	.word	.Lnp_OjamaAttackDown_106
	.word	.Lnp_OjamaAttackDown_107
	.word	.Lnp_OjamaAttackDown_108
	.word	.Lnp_OjamaAttackDown_109
	.word	.Lnp_OjamaAttackDown_172
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
.Lnp_OjamaAttackDown_100:
	lsl	r0, r2, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_101:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_102:
	lsl	r0, r2, #0x2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_103:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_104:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_105:
	lsl	r0, r2, #0x3
	sub	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_106:
	lsl	r0, r2, #0x3
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_107:
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_108:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_109:
	mov	r0, #0xb
	mul	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_124:
	b	.Lnp_OjamaAttackDown_124
.Lnp_OjamaAttackDown_89:
	mov	r2, #0x5a
	mov	r0, #0xf
	and	r0, r0, r3
	cmp	r0, #0xf
	bhi	.Lnp_OjamaAttackDown_155	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_127 @ .Lnp_OjamaAttackDown_126
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_128:
	.align	2, 0
.Lnp_OjamaAttackDown_127:
	.word	.Lnp_OjamaAttackDown_126
.Lnp_OjamaAttackDown_126:
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_161
	.word	.Lnp_OjamaAttackDown_131
	.word	.Lnp_OjamaAttackDown_132
	.word	.Lnp_OjamaAttackDown_133
	.word	.Lnp_OjamaAttackDown_134
	.word	.Lnp_OjamaAttackDown_135
	.word	.Lnp_OjamaAttackDown_136
	.word	.Lnp_OjamaAttackDown_137
	.word	.Lnp_OjamaAttackDown_138
	.word	.Lnp_OjamaAttackDown_139
	.word	.Lnp_OjamaAttackDown_140
	.word	.Lnp_OjamaAttackDown_172
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
.Lnp_OjamaAttackDown_131:
	lsl	r0, r2, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_132:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_133:
	lsl	r0, r2, #0x2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_134:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_135:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_136:
	lsl	r0, r2, #0x3
	sub	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_137:
	lsl	r0, r2, #0x3
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_138:
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_139:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_140:
	mov	r0, #0xb
	mul	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_155:
	b	.Lnp_OjamaAttackDown_155
.Lnp_OjamaAttackDown_92:
	mov	r2, #0x46
	mov	r0, #0xf
	and	r0, r0, r3
	cmp	r0, #0xf
	bhi	.Lnp_OjamaAttackDown_188	@cond_branch
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_158 @ .Lnp_OjamaAttackDown_157
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_159:
	.align	2, 0
.Lnp_OjamaAttackDown_158:
	.word	.Lnp_OjamaAttackDown_157
.Lnp_OjamaAttackDown_157:
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_161
	.word	.Lnp_OjamaAttackDown_162
	.word	.Lnp_OjamaAttackDown_163
	.word	.Lnp_OjamaAttackDown_164
	.word	.Lnp_OjamaAttackDown_165
	.word	.Lnp_OjamaAttackDown_166
	.word	.Lnp_OjamaAttackDown_167
	.word	.Lnp_OjamaAttackDown_168
	.word	.Lnp_OjamaAttackDown_169
	.word	.Lnp_OjamaAttackDown_170
	.word	.Lnp_OjamaAttackDown_171
	.word	.Lnp_OjamaAttackDown_172
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
	.word	.Lnp_OjamaAttackDown_187
.Lnp_OjamaAttackDown_161:
	mov	r1, ip
	ldrh	r0, [r1, #0x1e]
	add	r0, r0, r2
	strh	r0, [r1, #0x1e]
	b	.Lnp_OjamaAttackDown_187
.Lnp_OjamaAttackDown_162:
	lsl	r0, r2, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_163:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_164:
	lsl	r0, r2, #0x2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_165:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_166:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_167:
	lsl	r0, r2, #0x3
	sub	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_168:
	lsl	r0, r2, #0x3
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_169:
	lsl	r0, r2, #0x3
	add	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_170:
	lsl	r0, r2, #0x2
	add	r0, r0, r2
	lsl	r0, r0, #0x1
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_171:
	mov	r0, #0xb
	mul	r0, r0, r2
	b	.Lnp_OjamaAttackDown_186
.Lnp_OjamaAttackDown_172:
	lsl	r0, r2, #0x1
	add	r0, r0, r2
	lsl	r0, r0, #0x2
.Lnp_OjamaAttackDown_186:
	mov	r2, ip
	ldrh	r2, [r2, #0x1e]
	add	r0, r0, r2
	mov	r1, ip
	strh	r0, [r1, #0x1e]
	b	.Lnp_OjamaAttackDown_187
.Lnp_OjamaAttackDown_188:
	b	.Lnp_OjamaAttackDown_188
.Lnp_OjamaAttackDown_189:
	b	.Lnp_OjamaAttackDown_189
.Lnp_OjamaAttackDown_187:
	ldrb	r0, [r4, #0x6]
	cmp	r0, #0x5
	bls	.Lnp_OjamaAttackDown_190	@cond_branch
	b	.Lnp_OjamaAttackDown_309
.Lnp_OjamaAttackDown_190:
	lsl	r0, r0, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_193 @ .Lnp_OjamaAttackDown_192
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_194:
	.align	2, 0
.Lnp_OjamaAttackDown_193:
	.word	.Lnp_OjamaAttackDown_192
.Lnp_OjamaAttackDown_192:
	.word	.Lnp_OjamaAttackDown_200
	.word	.Lnp_OjamaAttackDown_196
	.word	.Lnp_OjamaAttackDown_199
	.word	.Lnp_OjamaAttackDown_199
	.word	.Lnp_OjamaAttackDown_199
	.word	.Lnp_OjamaAttackDown_200
.Lnp_OjamaAttackDown_200:
	mov	r4, #0x3c
	mov	r3, #0x2c
	mov	r6, #0x17
	mov	r5, #0x8
	mov	r2, #0xc
	cmp	r7, #0x10
	bhi	.Lnp_OjamaAttackDown_235	@cond_branch
	lsl	r0, r7, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_203 @ .Lnp_OjamaAttackDown_202
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_204:
	.align	2, 0
.Lnp_OjamaAttackDown_203:
	.word	.Lnp_OjamaAttackDown_202
.Lnp_OjamaAttackDown_202:
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_207
	.word	.Lnp_OjamaAttackDown_208
	.word	.Lnp_OjamaAttackDown_209
	.word	.Lnp_OjamaAttackDown_210
	.word	.Lnp_OjamaAttackDown_211
	.word	.Lnp_OjamaAttackDown_212
	.word	.Lnp_OjamaAttackDown_213
	.word	.Lnp_OjamaAttackDown_214
	.word	.Lnp_OjamaAttackDown_215
	.word	.Lnp_OjamaAttackDown_216
	.word	.Lnp_OjamaAttackDown_217
	.word	.Lnp_OjamaAttackDown_218
	.word	.Lnp_OjamaAttackDown_219
	.word	.Lnp_OjamaAttackDown_291
	.word	.Lnp_OjamaAttackDown_292
.Lnp_OjamaAttackDown_207:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_208:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_209:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_210:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	b	.Lnp_OjamaAttackDown_296
.Lnp_OjamaAttackDown_211:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_212:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x2a
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_213:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x4
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_214:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x36
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_215:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_216:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x5
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_217:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_218:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x1
	b	.Lnp_OjamaAttackDown_304
.Lnp_OjamaAttackDown_219:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x2
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_235:
	b	.Lnp_OjamaAttackDown_235
.Lnp_OjamaAttackDown_196:
	mov	r4, #0x3c
	mov	r3, #0x2c
	mov	r6, #0x17
	mov	r5, #0x8
	mov	r2, #0xc
	cmp	r7, #0x10
	bhi	.Lnp_OjamaAttackDown_270	@cond_branch
	lsl	r0, r7, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_238 @ .Lnp_OjamaAttackDown_237
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_239:
	.align	2, 0
.Lnp_OjamaAttackDown_238:
	.word	.Lnp_OjamaAttackDown_237
.Lnp_OjamaAttackDown_237:
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_242
	.word	.Lnp_OjamaAttackDown_243
	.word	.Lnp_OjamaAttackDown_244
	.word	.Lnp_OjamaAttackDown_245
	.word	.Lnp_OjamaAttackDown_246
	.word	.Lnp_OjamaAttackDown_247
	.word	.Lnp_OjamaAttackDown_248
	.word	.Lnp_OjamaAttackDown_249
	.word	.Lnp_OjamaAttackDown_250
	.word	.Lnp_OjamaAttackDown_251
	.word	.Lnp_OjamaAttackDown_252
	.word	.Lnp_OjamaAttackDown_253
	.word	.Lnp_OjamaAttackDown_254
	.word	.Lnp_OjamaAttackDown_291
	.word	.Lnp_OjamaAttackDown_292
.Lnp_OjamaAttackDown_242:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_243:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_244:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_245:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	b	.Lnp_OjamaAttackDown_296
.Lnp_OjamaAttackDown_246:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_247:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x2a
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_248:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x4
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_249:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x36
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_250:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_251:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x5
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_252:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_253:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x1
	b	.Lnp_OjamaAttackDown_304
.Lnp_OjamaAttackDown_254:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x2
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_270:
	b	.Lnp_OjamaAttackDown_270
.Lnp_OjamaAttackDown_199:
	mov	r4, #0x3c
	mov	r3, #0x2c
	mov	r6, #0x17
	mov	r5, #0x8
	mov	r2, #0xc
	cmp	r7, #0x10
	bls	.Lnp_OjamaAttackDown_271	@cond_branch
	b	.Lnp_OjamaAttackDown_308
.Lnp_OjamaAttackDown_271:
	lsl	r0, r7, #0x2
	ldr	r1, .Lnp_OjamaAttackDown_274 @ .Lnp_OjamaAttackDown_273
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.Lnp_OjamaAttackDown_275:
	.align	2, 0
.Lnp_OjamaAttackDown_274:
	.word	.Lnp_OjamaAttackDown_273
.Lnp_OjamaAttackDown_273:
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_292
	.word	.Lnp_OjamaAttackDown_278
	.word	.Lnp_OjamaAttackDown_279
	.word	.Lnp_OjamaAttackDown_280
	.word	.Lnp_OjamaAttackDown_281
	.word	.Lnp_OjamaAttackDown_282
	.word	.Lnp_OjamaAttackDown_283
	.word	.Lnp_OjamaAttackDown_284
	.word	.Lnp_OjamaAttackDown_285
	.word	.Lnp_OjamaAttackDown_286
	.word	.Lnp_OjamaAttackDown_287
	.word	.Lnp_OjamaAttackDown_288
	.word	.Lnp_OjamaAttackDown_289
	.word	.Lnp_OjamaAttackDown_290
	.word	.Lnp_OjamaAttackDown_291
	.word	.Lnp_OjamaAttackDown_292
.Lnp_OjamaAttackDown_278:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_279:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_280:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_281:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	b	.Lnp_OjamaAttackDown_296
.Lnp_OjamaAttackDown_282:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_283:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x2a
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_284:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
	add	r0, r0, r5
	lsl	r0, r0, #0x4
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_285:
	add	r0, r4, r3
	add	r0, r0, r6
	mov	r1, #0x36
	mul	r1, r1, r5
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_286:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x4
	sub	r0, r0, r5
	lsl	r0, r0, #0x2
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_287:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x5
	b	.Lnp_OjamaAttackDown_302
.Lnp_OjamaAttackDown_288:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x3
	add	r0, r0, r5
	lsl	r0, r0, #0x3
	b	.Lnp_OjamaAttackDown_303
.Lnp_OjamaAttackDown_289:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x1
	b	.Lnp_OjamaAttackDown_304
.Lnp_OjamaAttackDown_290:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x2
	b	.Lnp_OjamaAttackDown_305
.Lnp_OjamaAttackDown_291:
	add	r0, r4, r3
	add	r0, r0, r6
	lsl	r1, r5, #0x2
.Lnp_OjamaAttackDown_304:
	add	r1, r1, r5
.Lnp_OjamaAttackDown_305:
	add	r0, r0, r1
	add	r0, r0, r2
	mov	r1, ip
	ldrh	r1, [r1, #0x1e]
	add	r0, r0, r1
	mov	r2, ip
	strh	r0, [r2, #0x1e]
	b	.Lnp_OjamaAttackDown_307
.Lnp_OjamaAttackDown_292:
	add	r1, r4, r3
	add	r1, r1, r6
	lsl	r0, r5, #0x1
.Lnp_OjamaAttackDown_302:
	add	r0, r0, r5
.Lnp_OjamaAttackDown_296:
	lsl	r0, r0, #0x1
.Lnp_OjamaAttackDown_303:
	add	r1, r1, r0
	add	r1, r1, r2
	mov	r0, ip
	ldrh	r0, [r0, #0x1e]
	add	r1, r1, r0
	mov	r2, ip
	strh	r1, [r2, #0x1e]
	b	.Lnp_OjamaAttackDown_307
.Lnp_OjamaAttackDown_308:
	b	.Lnp_OjamaAttackDown_308
.Lnp_OjamaAttackDown_309:
	b	.Lnp_OjamaAttackDown_309
.Lnp_OjamaAttackDown_307:
	add	r0, r7, #0
.Lnp_OjamaAttackDown_2:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	thumb_func_end np_OjamaAttackDown
