@********************************************************************
@*          AgbSysMusicPlayerFadeOut.s                              *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			Fade Out Music 				    -
@--------------------------------------------------------------------
		.GLOBAL	MusicPlayerFadeOut
		.THUMB_FUNC
MusicPlayerFadeOut:
				swi		36
				bx		lr



		.END

