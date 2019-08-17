@********************************************************************
@*          AgbSysSoundDriverInit.s                                 *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-				Sound Driver Initialize 	    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverInit
		.THUMB_FUNC
SoundDriverInit:
				swi		26
				bx		lr


		.END

