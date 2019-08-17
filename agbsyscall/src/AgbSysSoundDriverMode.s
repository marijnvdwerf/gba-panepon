@********************************************************************
@*          AgbSysSoundDriverMode.s                                 *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Sound Driver Working Mode  			    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverMode
		.THUMB_FUNC
SoundDriverMode:
				swi		27
				bx		lr


		.END

