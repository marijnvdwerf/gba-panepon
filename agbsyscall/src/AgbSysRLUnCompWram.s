@********************************************************************
@*          AgbSysRLUnCompWram.s                                    *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-	Decompress run length compressed data (->Working RAM)       -
@--------------------------------------------------------------------
		.GLOBAL	RLUnCompWram
		.THUMB_FUNC
RLUnCompWram:	swi		20
				bx		lr


		.END

