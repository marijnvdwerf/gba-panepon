@********************************************************************
@*          AgbSysHuffUnComp.s                                      *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Decompress Huffman coded data			    -
@--------------------------------------------------------------------
		.GLOBAL	HuffUnComp
		.THUMB_FUNC
HuffUnComp:		swi		19
				bx		lr


		.END

