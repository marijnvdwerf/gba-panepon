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
@-		Sound Driver Main				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverMain
		.THUMB_FUNC
SoundDriverMain:
				swi		28
				bx		lr


		.END

