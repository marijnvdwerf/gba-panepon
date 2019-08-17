@********************************************************************
@*          AgbSysMidiKey2Freq.s                                    *
@*            AGB System Call Functions (for GAS)                   *
@*                                                                  *
@*          Copyright (C) 1999-2000 NINTENDO Co.,Ltd.               *
@********************************************************************
		.INCLUDE	"AgbDefine.s"
		.INCLUDE	"AgbMemoryMap.s"
		.TEXT
		.CODE 16

@--------------------------------------------------------------------
@-		Calculate musical interval by MIDI key  	    -
@--------------------------------------------------------------------
		.GLOBAL	MidiKey2Freq
		.THUMB_FUNC
MidiKey2Freq:
				swi		31
				bx		lr


		.END

