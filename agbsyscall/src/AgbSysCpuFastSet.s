@********************************************************************
@*          AgbSysCpuFastSet.s                                      *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		CPU high-speed Set (DMA set compatible)		    -
@--------------------------------------------------------------------
		.GLOBAL	CpuFastSet
		.THUMB_FUNC
CpuFastSet:		swi		12
				bx		lr


		.END

