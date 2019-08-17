@********************************************************************
@*          AgbSysCpuSet.s                                          *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		CPU Set (DMA Set compatible)  			    -
@--------------------------------------------------------------------
		.GLOBAL	CpuSet
		.THUMB_FUNC
CpuSet:			swi		11
				bx		lr


		.END

