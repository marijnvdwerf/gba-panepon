#include "AgbDefine.s"
#include "AgbMemoryMap.s"
#include "AgbSyscallDefine.s"
#include "AgbMacro.s"
	.section .crt0

	.GLOBAL		_start
_start:
#include "rom_header.s"

	b	multiboot_handshake

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
	.CODE 32
multiboot_handshake_poll:
	ldrh	r1, [r0, #8]	@ REG_SIOCNT
	tst	r1, #SIO_START
	beq	multiboot_handshake_poll
1:
	ldrh	r1, [r0, #8]	@ REG_SIOCNT
	tst	r1, #SIO_START
	bne	1b

	ldrh	r1, [r0, #8]	@ REG_SIOCNT
	tst	r1, #SIO_ERROR
	bxne	lr	@ If error flag on, Error

	ldrh	r1, [r0]
	bx	lr

@ Handshake
@ (Process of telling master that started up okay as multi-play boot slave)
@ If startup with multi-play boot, SIO is in  multi-play boot 115200bps
@ mode.
@ At this point, IME=0 so no interrupt.
	.CODE 32
multiboot_handshake:
	ldr	r0, =REG_SIOMLT_RECV

@ Monitor data sent from master.
@ At first, due to startup timing of slave a communication error flag may be on,@ so monitor if communication error flag not on, and if send from master
@ started.
1:
	bl	multiboot_handshake_poll
	bne	1b	@ Error

@ To indicate startup of slave, return 0x0000.
	mov	r2, #0
	strh	r2, [r0, #0x0a] @ REG_SIODATA8

	cmp	r1, #0
	bne	1b	@ First data must be 0x0000.

	mov	r2, #0x8000	@ r2: Data that should come from master/Data slave returns
2:
	mov	r1, #0
@ Slave also returns data from master.
3:
	strh	r1, [r0, #0x0a]	@ REG_SIODATA8
	bl	multiboot_handshake_poll
	bne	1b	@ Error

	cmp	r1, r2
	bne	2b	@ Error

@ Data required from master came so slave returns same thing.
@ Master data comes in order of 0x8000, 0x0400, 0x0020, 0x0001, 0x0000.
@ Slave returns 0x8000, 0x0400, 0x0020, 0x0001.
@ r1 is 0x8000, 0x0400, 0x0020, 0x0001, 0x0000.
	mov	r2, r2, lsr #5
	cmp	r1, #0
	bne	3b

@ After this if communication error or data doesn't match, slave stops(infinite loop)
@ At this point, 0x0000 has come from master.
@ Slave returns intial code, low.
	ldr	r3, =0x020000ac
	ldrh	r2, [r3]
	strh	r2, [r0, #0x0a]	@ REG_SIODATA8
	bl	multiboot_handshake_poll
5:
	bne	5b	@ Error(Infinite Loop)

	cmp	r1, r2
	bne	5b	@ Error(Infinite Loop)

@ From master, same initial code low has come.
@ Slave returns initial code, high.
	ldrh	r2, [r3, #2]
	strh	r2, [r0, #0x0a]	@ REG_SIODATA8
	bl	multiboot_handshake_poll
	bne	5b	@ Error(Infinite Loop)

	cmp	r1, r2
	bne	5b	@ Error(Infinite Loop)

@ Handshake end.
@ Initialize slave output data register to 0.
@ (Handshake process completed so master doesn't receive this data)
	mov	r1, #0
	strh	r1, [r0, #0x0a]	@ REG_SIODATA8

start_vector:
        b __agb_start_from_arm
	.align
	.pool
	.END



