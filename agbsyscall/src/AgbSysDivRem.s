@********************************************************************
@*          AgbSysDivRem.s                                          *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Signed division (remainder)			    -
@--------------------------------------------------------------------
		.GLOBAL	DivRem
		.THUMB_FUNC
DivRem:			swi		6
				mov		r0, r1
				bx		lr


		.END

