@********************************************************************
@*          AgbSysArcTan.s                                          *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Arc Tangent  					    -
@--------------------------------------------------------------------
		.GLOBAL	ArcTan
		.THUMB_FUNC
ArcTan:			swi		9
				bx		lr


		.END

