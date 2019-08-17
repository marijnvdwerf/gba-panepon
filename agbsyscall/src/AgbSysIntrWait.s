@********************************************************************
@*          AgbSysIntrWait.s                                        *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16


@--------------------------------------------------------------------
@-		Interrupt Wait 		                            -
@--------------------------------------------------------------------
		.GLOBAL	IntrWait
		.THUMB_FUNC
IntrWait:		mov		r2, #0
				swi		4
				bx		lr


		.END

