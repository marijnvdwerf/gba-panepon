@********************************************************************
@*          AgbSysMusicPlayerStart.s                                *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			Start playing music 			    -
@--------------------------------------------------------------------
		.GLOBAL	MusicPlayerStart
		.THUMB_FUNC
MusicPlayerStart:
				swi		33
				bx		lr


		.END

