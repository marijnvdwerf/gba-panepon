	thumb_func_start NisSetGameVRamData
NisSetGameVRamData:
	push	{lr}
	ldr	r0, .LNisSetGameVRamData_1 @ 0x40000d4
	ldr	r1, .LNisSetGameVRamData_1 + 4 @ ponagb2m_bga_Acl
	str	r1, [r0]
	mov	r1, #0xa0
	lsl	r1, r1, #0x13
	str	r1, [r0, #0x4]
	ldr	r2, .LNisSetGameVRamData_1 + 8 @ 0x84000080
	str	r2, [r0, #0x8]
	ldr	r1, [r0, #0x8]
	ldr	r1, .LNisSetGameVRamData_1 + 12 @ ponagb2m_obj_Acl
	str	r1, [r0]
	ldr	r1, .LNisSetGameVRamData_1 + 16 @ 0x5000200
	str	r1, [r0, #0x4]
	str	r2, [r0, #0x8]
	ldr	r0, [r0, #0x8]
	bl	NisMoveKabeColorI_Main
	ldr	r0, .LNisSetGameVRamData_1 + 20 @ ponagb2m_bga_Acg_LZ
	mov	r1, #0xc0
	lsl	r1, r1, #0x13
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 24 @ ponagb2m_obj_Acg_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 28 @ 0x6010000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 32 @ ponagb2m_kabe_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 36 @ 0x600f000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 40 @ ponagb2m_frame_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 44 @ 0x600e000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 48 @ ponagb2m_dark_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 52 @ 0x600f800
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 56 @ ponagb2m_gameover_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 60 @ 0x600e800
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 64 @ ponagb2m_pause_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 68 @ 0x600d800
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 72 @ ponagb2m_select_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 76 @ 0x600d000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 80 @ ponagb2m_sel_help_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 84 @ 0x600c000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetGameVRamData_1 + 88 @ ponagb2m_sel_pupu_Asc_LZ
	ldr	r1, .LNisSetGameVRamData_1 + 92 @ 0x600c800
	bl	LZ77UnCompVram
	pop	{r0}
	bx	r0
.LNisSetGameVRamData_2:
	.align	2, 0
.LNisSetGameVRamData_1:
	.word	0x40000d4
	.word	ponagb2m_bga_Acl
	.word	0x84000080
	.word	ponagb2m_obj_Acl
	.word	0x5000200
	.word	ponagb2m_bga_Acg_LZ
	.word	ponagb2m_obj_Acg_LZ
	.word	0x6010000
	.word	ponagb2m_kabe_Asc_LZ
	.word	0x600f000
	.word	ponagb2m_frame_Asc_LZ
	.word	0x600e000
	.word	ponagb2m_dark_Asc_LZ
	.word	0x600f800
	.word	ponagb2m_gameover_Asc_LZ
	.word	0x600e800
	.word	ponagb2m_pause_Asc_LZ
	.word	0x600d800
	.word	ponagb2m_select_Asc_LZ
	.word	0x600d000
	.word	ponagb2m_sel_help_Asc_LZ
	.word	0x600c000
	.word	ponagb2m_sel_pupu_Asc_LZ
	.word	0x600c800
	thumb_func_end NisSetGameVRamData
