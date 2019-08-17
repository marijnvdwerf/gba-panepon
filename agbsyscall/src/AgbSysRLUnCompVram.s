@********************************************************************
@*          AgbSysRLUnCompVram.s                                    *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress run length compressed data (->VRAM)      -
@--------------------------------------------------------------------
		.GLOBAL	RLUnCompVram
		.THUMB_FUNC
RLUnCompVram:	swi		21
				bx		lr


		.END

