@********************************************************************
@*          AgbSysSoundBiasSet.s                                    *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

		.align 2,0

@--------------------------------------------------------------------
@-		SOUND BIAS Set					    -
@--------------------------------------------------------------------
		.GLOBAL	SoundBiasSet
		.THUMB_FUNC
SoundBiasSet:	mov		r0, #1
				swi		25
				bx		lr

		.align 2,0

		.END


