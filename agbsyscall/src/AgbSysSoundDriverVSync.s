@********************************************************************
@*          AgbSysSoundDriverVSync.s                                *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Sound Driver DMA Reset 				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverVSync
		.THUMB_FUNC
SoundDriverVSync:
				swi		29
				bx		lr


		.END

