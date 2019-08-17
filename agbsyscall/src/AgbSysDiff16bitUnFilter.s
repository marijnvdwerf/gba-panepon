@********************************************************************
@*          AgbSysDiff16bitUnFilter.s                               *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decomppress differential filter (16Bit)		    -
@--------------------------------------------------------------------
		.GLOBAL	Diff16bitUnFilter
		.THUMB_FUNC
Diff16bitUnFilter:
				swi		24
				bx		lr


		.END

