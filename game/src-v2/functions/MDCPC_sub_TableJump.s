	thumb_func_start MDCPC_sub_TableJump
MDCPC_sub_TableJump:
	push	{lr}
	add	r2, r0, #0
	ldr	r0, [r2, #0xc]
	ldrb	r0, [r0]
	cmp	r0, #0x19
	bls	.LMDCPC_sub_TableJump_1	@cond_branch
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_1:
	lsl	r0, r0, #0x2
	ldr	r1, .LMDCPC_sub_TableJump_4 @ .LMDCPC_sub_TableJump_3
	add	r0, r0, r1
	ldr	r0, [r0]
	mov	pc, r0
.LMDCPC_sub_TableJump_5:
	.align	2, 0
.LMDCPC_sub_TableJump_4:
	.word	.LMDCPC_sub_TableJump_3
.LMDCPC_sub_TableJump_3:
	.word	.LMDCPC_sub_TableJump_6
	.word	.LMDCPC_sub_TableJump_7
	.word	.LMDCPC_sub_TableJump_8
	.word	.LMDCPC_sub_TableJump_9
	.word	.LMDCPC_sub_TableJump_10
	.word	.LMDCPC_sub_TableJump_11
	.word	.LMDCPC_sub_TableJump_12
	.word	.LMDCPC_sub_TableJump_13
	.word	.LMDCPC_sub_TableJump_14
	.word	.LMDCPC_sub_TableJump_15
	.word	.LMDCPC_sub_TableJump_16
	.word	.LMDCPC_sub_TableJump_17
	.word	.LMDCPC_sub_TableJump_18
	.word	.LMDCPC_sub_TableJump_19
	.word	.LMDCPC_sub_TableJump_20
	.word	.LMDCPC_sub_TableJump_21
	.word	.LMDCPC_sub_TableJump_22
	.word	.LMDCPC_sub_TableJump_23
	.word	.LMDCPC_sub_TableJump_24
	.word	.LMDCPC_sub_TableJump_25
	.word	.LMDCPC_sub_TableJump_26
	.word	.LMDCPC_sub_TableJump_27
	.word	.LMDCPC_sub_TableJump_28
	.word	.LMDCPC_sub_TableJump_29
	.word	.LMDCPC_sub_TableJump_30
	.word	.LMDCPC_sub_TableJump_31
.LMDCPC_sub_TableJump_6:
	ldr	r1, .LMDCPC_sub_TableJump_33 @ np_Msg_Help_00
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_34:
	.align	2, 0
.LMDCPC_sub_TableJump_33:
	.word	np_Msg_Help_00
.LMDCPC_sub_TableJump_7:
	ldr	r1, .LMDCPC_sub_TableJump_36 @ np_Msg_Help_01
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_37:
	.align	2, 0
.LMDCPC_sub_TableJump_36:
	.word	np_Msg_Help_01
.LMDCPC_sub_TableJump_8:
	ldr	r1, .LMDCPC_sub_TableJump_39 @ np_Msg_Help_02
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_40:
	.align	2, 0
.LMDCPC_sub_TableJump_39:
	.word	np_Msg_Help_02
.LMDCPC_sub_TableJump_9:
	ldr	r1, .LMDCPC_sub_TableJump_42 @ np_Msg_Help_03
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_43:
	.align	2, 0
.LMDCPC_sub_TableJump_42:
	.word	np_Msg_Help_03
.LMDCPC_sub_TableJump_30:
	ldr	r1, .LMDCPC_sub_TableJump_45 @ np_Msg_Help_04
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_46:
	.align	2, 0
.LMDCPC_sub_TableJump_45:
	.word	np_Msg_Help_04
.LMDCPC_sub_TableJump_10:
	ldr	r1, .LMDCPC_sub_TableJump_48 @ np_Msg_Help_10
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_49:
	.align	2, 0
.LMDCPC_sub_TableJump_48:
	.word	np_Msg_Help_10
.LMDCPC_sub_TableJump_11:
	ldr	r1, .LMDCPC_sub_TableJump_51 @ np_Msg_Help_11
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_52:
	.align	2, 0
.LMDCPC_sub_TableJump_51:
	.word	np_Msg_Help_11
.LMDCPC_sub_TableJump_12:
	ldr	r1, .LMDCPC_sub_TableJump_54 @ np_Msg_Help_12
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_55:
	.align	2, 0
.LMDCPC_sub_TableJump_54:
	.word	np_Msg_Help_12
.LMDCPC_sub_TableJump_13:
	ldr	r1, .LMDCPC_sub_TableJump_57 @ np_Msg_Help_20
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_58:
	.align	2, 0
.LMDCPC_sub_TableJump_57:
	.word	np_Msg_Help_20
.LMDCPC_sub_TableJump_14:
	ldr	r1, .LMDCPC_sub_TableJump_60 @ np_Msg_Help_21
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_61:
	.align	2, 0
.LMDCPC_sub_TableJump_60:
	.word	np_Msg_Help_21
.LMDCPC_sub_TableJump_15:
	ldr	r1, .LMDCPC_sub_TableJump_63 @ np_Msg_Help_22
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_64:
	.align	2, 0
.LMDCPC_sub_TableJump_63:
	.word	np_Msg_Help_22
.LMDCPC_sub_TableJump_16:
	ldr	r1, .LMDCPC_sub_TableJump_66 @ np_Msg_Help_30
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_67:
	.align	2, 0
.LMDCPC_sub_TableJump_66:
	.word	np_Msg_Help_30
.LMDCPC_sub_TableJump_17:
	ldr	r1, .LMDCPC_sub_TableJump_69 @ np_Msg_Help_31
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_70:
	.align	2, 0
.LMDCPC_sub_TableJump_69:
	.word	np_Msg_Help_31
.LMDCPC_sub_TableJump_18:
	ldr	r1, .LMDCPC_sub_TableJump_72 @ np_Msg_Help_32
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_73:
	.align	2, 0
.LMDCPC_sub_TableJump_72:
	.word	np_Msg_Help_32
.LMDCPC_sub_TableJump_19:
	ldr	r1, .LMDCPC_sub_TableJump_75 @ np_Msg_Help_33
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_76:
	.align	2, 0
.LMDCPC_sub_TableJump_75:
	.word	np_Msg_Help_33
.LMDCPC_sub_TableJump_20:
	ldr	r1, .LMDCPC_sub_TableJump_78 @ np_Msg_Help_34
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_79:
	.align	2, 0
.LMDCPC_sub_TableJump_78:
	.word	np_Msg_Help_34
.LMDCPC_sub_TableJump_21:
	ldr	r1, .LMDCPC_sub_TableJump_81 @ np_Msg_Help_35
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_82:
	.align	2, 0
.LMDCPC_sub_TableJump_81:
	.word	np_Msg_Help_35
.LMDCPC_sub_TableJump_22:
	ldr	r1, .LMDCPC_sub_TableJump_84 @ np_Msg_Help_36
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_85:
	.align	2, 0
.LMDCPC_sub_TableJump_84:
	.word	np_Msg_Help_36
.LMDCPC_sub_TableJump_23:
	ldr	r1, .LMDCPC_sub_TableJump_87 @ np_Msg_Help_37
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_88:
	.align	2, 0
.LMDCPC_sub_TableJump_87:
	.word	np_Msg_Help_37
.LMDCPC_sub_TableJump_24:
	ldr	r1, .LMDCPC_sub_TableJump_90 @ np_Msg_Help_38
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_91:
	.align	2, 0
.LMDCPC_sub_TableJump_90:
	.word	np_Msg_Help_38
.LMDCPC_sub_TableJump_25:
	ldr	r1, .LMDCPC_sub_TableJump_93 @ np_Msg_Help_39
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_94:
	.align	2, 0
.LMDCPC_sub_TableJump_93:
	.word	np_Msg_Help_39
.LMDCPC_sub_TableJump_26:
	ldr	r1, .LMDCPC_sub_TableJump_96 @ np_Msg_Help_3a
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_97:
	.align	2, 0
.LMDCPC_sub_TableJump_96:
	.word	np_Msg_Help_3a
.LMDCPC_sub_TableJump_27:
	ldr	r1, .LMDCPC_sub_TableJump_99 @ np_Msg_Help_3b
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_100:
	.align	2, 0
.LMDCPC_sub_TableJump_99:
	.word	np_Msg_Help_3b
.LMDCPC_sub_TableJump_28:
	ldr	r1, .LMDCPC_sub_TableJump_102 @ np_Msg_Help_3c
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_103:
	.align	2, 0
.LMDCPC_sub_TableJump_102:
	.word	np_Msg_Help_3c
.LMDCPC_sub_TableJump_29:
	ldr	r1, .LMDCPC_sub_TableJump_105 @ np_Msg_Help_3d
	b	.LMDCPC_sub_TableJump_104
.LMDCPC_sub_TableJump_106:
	.align	2, 0
.LMDCPC_sub_TableJump_105:
	.word	np_Msg_Help_3d
.LMDCPC_sub_TableJump_31:
	ldr	r1, .LMDCPC_sub_TableJump_107 @ np_Msg_Help_40
.LMDCPC_sub_TableJump_104:
	str	r1, [r2, #0xc]
	pop	{r0}
	bx	r0
.LMDCPC_sub_TableJump_108:
	.align	2, 0
.LMDCPC_sub_TableJump_107:
	.word	np_Msg_Help_40
	thumb_func_end MDCPC_sub_TableJump
