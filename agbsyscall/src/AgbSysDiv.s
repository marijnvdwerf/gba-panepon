@********************************************************************
@*          AgbSysDiv.s                                             *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Signed division (quotient)			    -
@--------------------------------------------------------------------
		.GLOBAL	Div
		.THUMB_FUNC
Div:			swi		6
				bx		lr


		.END

