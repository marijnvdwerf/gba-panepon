@********************************************************************
@*          AgbSysMusicPlayerOpen.s                                 *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Open Music Player 				    -
@--------------------------------------------------------------------
		.GLOBAL	MusicPlayerOpen
		.THUMB_FUNC
MusicPlayerOpen:
				swi		32
				bx		lr


		.END

