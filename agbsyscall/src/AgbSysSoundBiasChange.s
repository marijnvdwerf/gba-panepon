@********************************************************************
@*          AgbSysSoundBiasChange.s                                 *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Sound BIAS Change 				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundBiasChange
		.THUMB_FUNC
SoundBiasChange:
				swi		25
				bx		lr


		.END

