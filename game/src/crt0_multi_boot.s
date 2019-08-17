#include "AgbDefine.s"
#include "AgbMemoryMap.s"
#include "AgbSyscallDefine.s"
#include "AgbMacro.s"
	.section .crt0

	.GLOBAL		_start
_start:
#include "rom_header.s"

	b	start_vector

@ Declare as the following examples from C program:
@ extern u8 boot_method, boot_channel;
@
@ boot_method: 0=ROM boot
@              (1=Reserve)
@              (2=Reserve)
@              3=Multi-play boot
@
@ boot_channel: 0=Master (a value that is not possible in serial boot)
@               1-3: Slave No. 1 to 3.

	.globl	boot_method
	.globl	boot_channel
boot_method:	.byte	0	@ boot method = ROM if it stays as the initial value 0
boot_channel:	.byte	0

	.byte	0	@ reserved
	.byte	0	@ reserved

@ The parameter area from host
@ Declare as the following examples from C program:
@ extern u32 bootparam[6];
@
@ Each parameter that is determined at the time of execution can be sent to slaves by setting here.
@ If there are no parameters that change by the time of execution, it will be sent to slaves as in its initial value.

        .globl  bootparam
bootparam:
        .word   0	@ bootparam[0]
        .word   0	@ bootparam[1]

        .word   0
        .word   0
        .word   0
        .word   0

@ Handshake subroutine
@ Montior data sent from master.
@ return: If CPSR flag bne, error.
	.arm
joyboot_handshake:
        LDR             R3, =0x4000130
        MOV             R1, #0
        STRH            R1, [R3,#0x10]
        MOV             R1, #0xC0
        MOV             R1, R1,LSL#8
        STRH            R1, [R3,#4]

loc_20000F8:
        LDRH            R1, [R3,#0x28]
        ANDS            R1, R1, #8
        BNE             loc_20000F8
        LDR             R2, =0x20000AC
        LDR             R1, [R2]
        STR             R1, [R3,#0x24]

loc_2000110:
        LDRH            R0, [R3,#0x10]
        AND             R0, R0, #7
        CMP             R0, #4
        BNE             loc_2000110
        STRH            R0, [R3,#0x10]

loc_2000124:
        LDRH            R0, [R3,#0x10]
        AND             R0, R0, #7
        CMP             R0, #2
        BNE             loc_2000124
        STRH            R0, [R3,#0x10]
        LDR             R0, [R3,#0x20]
        CMP             R0, R1

loc_2000140:
        BNE             loc_2000140

       .fill   0x6bc,1,0

    .GLOBAL     start_vector
start_vector:
        b __agb_start_from_arm
	.align
	.pool
	.END




