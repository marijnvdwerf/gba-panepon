	.section .rodata
	.align	2

	.equ	sc1dt12, 0
	.equ	sc1dt25, 1
	.equ	sc1dt50, 2
	.equ	sc1dt75, 3
	.equ	sc2dt12, 0
	.equ	sc2dt25, 1
	.equ	sc2dt50, 2
	.equ	sc2dt75, 3
	.equ	sc4st15, 0
	.equ	sc4st07, 1

	.global	__sound_mode_i
	.equ	__sound_mode_i, 0x0094C700

	.align	2


	.global	__total_mplay_n
	.equ	__total_mplay_n, 8

#	.global	mplay_table
mplay_table:
	.global	__total_song_n
	.equ	__total_song_n, 0

#	.global	song_table
song_table:

dmy_song:
	.byte	0,0,0,0

	.comm	m4a_memacc_area, 0

	.global	__only_dma1
	.equ	__only_dma1, 0

	.global	__sys_rom
	.equ	__sys_rom, 0

	.global	__max_line
	.equ	__max_line, 0

	.end
