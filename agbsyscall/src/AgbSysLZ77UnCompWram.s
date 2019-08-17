@********************************************************************
@*          AgbSysLZ77UnCompWram.s                                  *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress LZ77 compressed data (->Working RAM)	    -
@--------------------------------------------------------------------
		.GLOBAL	LZ77UnCompWram
		.THUMB_FUNC
LZ77UnCompWram:
				swi		17
				bx		lr


		.END

