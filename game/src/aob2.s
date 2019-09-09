#if VERSION == 0
.global Aob_panel_test
Aob_panel_test:
    .2byte 2
    .2byte 0, 0x41F0, 0x1000
    .2byte 0, 0x4000, 0x2004

.align 2, 0
#endif
