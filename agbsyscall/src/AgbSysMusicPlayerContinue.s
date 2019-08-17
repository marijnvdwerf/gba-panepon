@********************************************************************
@*          AgbSysMusicPlayerContinue.s                             *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Resume playing music 				    -
@--------------------------------------------------------------------
		.GLOBAL	MusicPlayerContinue
		.THUMB_FUNC
MusicPlayerContinue:
				swi		35
				bx		lr


		.END

