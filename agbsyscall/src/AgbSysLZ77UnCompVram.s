@********************************************************************
@*          AgbSysLZ77UnCompVram.s                                  *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress LZ77 compressed data (->VRAM)	    -
@--------------------------------------------------------------------
		.GLOBAL	LZ77UnCompVram
		.THUMB_FUNC
LZ77UnCompVram:
				swi		18
				bx		lr


		.END

