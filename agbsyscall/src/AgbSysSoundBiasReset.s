@********************************************************************
@*          AgbSysSoundBiasReset.s                                  *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Sound BIAS Reset 				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundBiasReset
		.THUMB_FUNC
SoundBiasReset:
				mov		r0, #0
				swi		25
				bx		lr


		.END

