@********************************************************************
@*          AgbSysRegisterRamReset.s                                *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			Register & RAM Reset			    -
@--------------------------------------------------------------------
		.GLOBAL	RegisterRamReset
		.THUMB_FUNC
RegisterRamReset:
				swi		1
				bx		lr


		.END

