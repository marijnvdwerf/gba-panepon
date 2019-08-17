@********************************************************************
@*          AgbSysBgAffineSet.s                                     *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			BG affine conversion set 		    -
@--------------------------------------------------------------------
		.GLOBAL	BgAffineSet
		.THUMB_FUNC
BgAffineSet:	swi		14
				bx		lr


		.END

