@********************************************************************
@*          AgbSysMusicPlayerStop.s                                 *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Stop playing music (temporarily)		    -
@--------------------------------------------------------------------
		.GLOBAL	MusicPlayerStop
		.THUMB_FUNC
MusicPlayerStop:
				swi		34
				bx		lr


		.END

