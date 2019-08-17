@********************************************************************
@*          AgbSysDiff8bitUnFilterVram.s                            *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress differential filter (8Bit->VRAM)	    -
@--------------------------------------------------------------------
		.GLOBAL	Diff8bitUnFilterVram
		.THUMB_FUNC
Diff8bitUnFilterVram:
				swi		23
				bx		lr


		.END

