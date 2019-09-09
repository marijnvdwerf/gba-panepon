.macro bs label, size
	.align	1, 0
	.size \label, \size
	.global \label
\label:
	.space \size
.endm

.bss
#if VERSION == 0
    bs counter.153, 0x4
    bs count.268, 0x4
    bs joy_reboot_count.1082, 0x4
    bs joy_reboot_count_work.1083, 0x4
    bs g_bEnableJoyReboot, 0x4
    bs joy_timeout_counter, 0x4
#else
    bs g_bEnableJoyReboot, 0x4
    bs pad6, 0x4
    bs counter.153, 0x4
    bs count.268, 0x4
    bs pad7, 0x54
    bs joy_reboot_count.1082, 0x4
    bs joy_reboot_count_work.1083, 0x4
    bs np_fadr_xy_X, 0x4
    bs np_fadr_xy_Y, 0x4
    bs joy_timeout_counter, 0x4
    bs pad8, 0x150
#endif
    bs OamBak, 0x400
    bs OamIdx, 0x2
    bs OamParaId0, 0x2
    bs OamParaIdx, 0x4
    bs NisCtcListRam, 0x48
    bs NisCtcListIdx, 0x8
    bs NisCtcListp, 0x8
    bs m4a_track000, 0x2D0
    bs m4a_track001, 0xA0
    bs m4a_track002, 0xA0
    bs m4a_track003, 0xA0
    bs m4a_track004, 0xA0
    bs m4a_track005, 0x140
    bs m4a_track006, 0x140
    bs m4a_track007, 0x140
    bs irq_ie, 0x8
    bs irq_ram, 0x200
