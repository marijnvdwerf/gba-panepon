@********************************************************************
@*          AgbSysBitUnPack.s                                       *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress Bit-compressed data 			    -
@--------------------------------------------------------------------
		.GLOBAL	BitUnPack
		.THUMB_FUNC
BitUnPack:		swi		16
				bx		lr


		.END

