@********************************************************************
@*          AgbSysObjAffineSet.s                                    *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			OBJ affine conversion set  		    -
@--------------------------------------------------------------------
		.GLOBAL	ObjAffineSet
		.THUMB_FUNC
ObjAffineSet:	swi		15
				bx		lr


		.END

