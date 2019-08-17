@********************************************************************
@*          AgbSysSoundDriverVSyncOn.s                              *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Resume Sound DMA				    -
@--------------------------------------------------------------------
		.GLOBAL	SoundDriverVSyncOn
		.THUMB_FUNC
SoundDriverVSyncOn:
				swi		41
				bx		lr


		.END

