
#define STRINGIFY(x) XSTRINGIFY(x)
#define XSTRINGIFY(x) #x

    .macro baserom start, size
    .incbin STRINGIFY(BASEROM), \start, \size
    .endm

	.macro thumb_func_start name
	    .align 2, 0
	    .global \name
	    .thumb
	    .thumb_func
	    .type \name, function
	.endm

	.macro thumb_func_end name
	    .size \name, .-\name
	.endm



	.macro voice_keysplit_all voice_group_pointer
	.byte 0x80, 0, 0, 0
	.4byte \voice_group_pointer
	.4byte 0
	.endm

    .macro song label, music_player, unknown
    .4byte \label
    .2byte \music_player
    .2byte \unknown
    .endm


	.macro voice_programmable_wave_alt wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 11, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro voice_programmable_wave wave_samples_pointer, attack, decay, sustain, release
	_voice_programmable_wave 3, \wave_samples_pointer, \attack, \decay, \sustain, \release
	.endm

	.macro _voice_programmable_wave type, wave_samples_pointer, attack, decay, sustain, release
	.byte \type, 60, 0, 0
	.4byte \wave_samples_pointer
	.byte (\attack  & 0x7)
	.byte (\decay   & 0x7)
	.byte (\sustain & 0xF)
	.byte (\release & 0x7)
	.endm