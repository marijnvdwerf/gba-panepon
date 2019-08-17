	thumb_func_start NisSetATitleVRamData
NisSetATitleVRamData:
	push	{lr}
	ldr	r1, .LNisSetATitleVRamData_1 @ 0x40000d4
	ldr	r0, .LNisSetATitleVRamData_1 + 4 @ ponagb2m_title_Acl
	str	r0, [r1]
	mov	r0, #0xa0
	lsl	r0, r0, #0x13
	str	r0, [r1, #0x4]
	ldr	r0, .LNisSetATitleVRamData_1 + 8 @ 0x84000080
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	ldr	r0, .LNisSetATitleVRamData_1 + 12 @ ponagb2m_title_obj_Acl
	str	r0, [r1]
	ldr	r0, .LNisSetATitleVRamData_1 + 16 @ 0x5000200
	str	r0, [r1, #0x4]
	ldr	r0, .LNisSetATitleVRamData_1 + 20 @ 0x84000008
	str	r0, [r1, #0x8]
	ldr	r0, [r1, #0x8]
	ldr	r0, .LNisSetATitleVRamData_1 + 24 @ ponagb2m_title_Acg_LZ
	mov	r1, #0xc0
	lsl	r1, r1, #0x13
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetATitleVRamData_1 + 28 @ ponagb2m_title_obj_Acg_LZ
	ldr	r1, .LNisSetATitleVRamData_1 + 32 @ 0x6010000
	bl	LZ77UnCompVram
	ldr	r0, .LNisSetATitleVRamData_1 + 36 @ ponagb2m_title_Asc_LZ
	ldr	r1, .LNisSetATitleVRamData_1 + 40 @ 0x600f800
	bl	LZ77UnCompVram
	pop	{r0}
	bx	r0
.LNisSetATitleVRamData_2:
	.align	2, 0
.LNisSetATitleVRamData_1:
	.word	0x40000d4
	.word	ponagb2m_title_Acl
	.word	0x84000080
	.word	ponagb2m_title_obj_Acl
	.word	0x5000200
	.word	0x84000008
	.word	ponagb2m_title_Acg_LZ
	.word	ponagb2m_title_obj_Acg_LZ
	.word	0x6010000
	.word	ponagb2m_title_Asc_LZ
	.word	0x600f800
	thumb_func_end NisSetATitleVRamData
