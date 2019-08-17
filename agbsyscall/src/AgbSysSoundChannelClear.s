@********************************************************************
@*          AgbSysSoundChannelClear.s                               *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Sound Channel Clear 				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundChannelClear
		.THUMB_FUNC
SoundChannelClear:
				swi		30
				bx		lr


		.END

