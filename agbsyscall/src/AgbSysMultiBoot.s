@********************************************************************
@*          AgbSysMultiBoot.s                                       *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Multi-play boot					    -
@--------------------------------------------------------------------
		.GLOBAL	MultiBoot
		.THUMB_FUNC
MultiBoot:
				mov		r1, #1
				swi		37
				bx		lr


		.END

