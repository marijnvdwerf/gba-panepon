@********************************************************************
@*          AgbSysSqrt.s                                            *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Square Root					    -
@--------------------------------------------------------------------
		.GLOBAL	Sqrt
		.THUMB_FUNC
Sqrt:			swi		8
				bx		lr


		.END

