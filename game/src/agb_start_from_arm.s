    .EXTERN     agb_start
    .GLOBAL     __agb_start_from_arm
	.arm
__agb_start_from_arm:
        ldr     r12, .start
        bx      r12
.start:
   .word agb_start+1

	.END

