@********************************************************************
@*          AgbSysVBlankIntrWait.s                                  *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

		.align 2,0
@--------------------------------------------------------------------
@-  	V-blanking Interrupt Wait 				    -
@--------------------------------------------------------------------
		.GLOBAL	VBlankIntrWait
		.THUMB_FUNC
VBlankIntrWait:
				mov		r2, #0
				swi		5
				bx		lr


		.align 2,0
		.END
