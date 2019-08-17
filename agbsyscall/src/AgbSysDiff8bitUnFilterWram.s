@********************************************************************
@*          AgbSysDiff8bitUnFilterWram.s                            *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress differential filter (8Bit->Working RAM)  -
@--------------------------------------------------------------------
		.GLOBAL	Diff8bitUnFilterWram
		.THUMB_FUNC
Diff8bitUnFilterWram:
				swi		22
				bx		lr


		.END

