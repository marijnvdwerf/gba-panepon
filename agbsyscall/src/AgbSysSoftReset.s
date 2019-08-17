@********************************************************************
@*          AgbSysSoftReset.s                                       *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-			Soft Reset				    -
@--------------------------------------------------------------------
		.GLOBAL	SoftReset
		.THUMB_FUNC
SoftReset:
				ldr		r3, =REG_IME
				mov		r2, #0
				strb	r2, [r3, #0]
				ldr		r1, =0x3007f00
				mov		sp, r1
				swi		1
				swi		0


		.END

