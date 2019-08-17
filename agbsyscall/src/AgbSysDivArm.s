@********************************************************************
@*          AgbSysDivArm.s                                          *
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
		.GLOBAL	DivArm
		.THUMB_FUNC
DivArm:			swi		7
				bx		lr


		.END

