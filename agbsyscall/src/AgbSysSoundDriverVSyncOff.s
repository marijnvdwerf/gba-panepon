@********************************************************************
@*          AgbSysSoundDriverVSyncOff.s                             *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Stop Sound DMA 					    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverVSyncOff
		.THUMB_FUNC
SoundDriverVSyncOff:
				swi		40
				bx		lr


		.END

