ENTRY(_start)
OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)

MEMORY {
	rom	: ORIGIN = 0x08000000, LENGTH = 32M
	iwram	: ORIGIN = 0x03000000, LENGTH = 32K
	ewram	: ORIGIN = 0x02000000, LENGTH = 0x40000
}

SECTIONS
{

    .text :
    ALIGN(4)
    {
        */crt0_multi_boot.s.obj(.crt0);
        */dummy.s.obj(.text);
        */aob.s.obj(.text);
        */src.s.obj(.text);
        */aob2.s.obj(.text);
        */src2.s.obj(.text);

	    */m4a/libm4a.a:*(.text);
	    */libagbsyscall.a:*(.text);
	    */libisagb.a:*(.text);

	    */libgcc.a:_call_via_rX.o(.text);
	    */libgcc.a:_divsi3.o(.text);
	    */libgcc.a:_dvmd_tls.o(.text);
	    */libgcc.a:_modsi3.o(.text);
	    */libgcc.a:_udivsi3.o(.text);
	    */libgcc.a:_umodsi3.o(.text);

	    */libc.a:sprintf.o(.text);
	    */libc.a:vfprintf.o(.text);
	    */libc.a:wsetup.o(.text);
	    */libc.a:dtoa.o(.text);
	    */libc.a:fflush.o(.text);
	    */libc.a:findfp.o(.text);
	    */libc.a:freer.o(.text);
	    */libc.a:fvwrite.o(.text);
	    */libc.a:fwalk.o(.text);
	    */libc.a:locale.o(.text);
	    */libc.a:makebuf.o(.text);
	    */libc.a:mallocr.o(.text);
	    */libc.a:mbtowc_r.o(.text);
	    */libc.a:memchr.o(.text);
	    */libc.a:memcpy.o(.text);
	    */libc.a:memmove.o(.text);
	    */libc.a:memset.o(.text);
	    */libc.a:mlock.o(.text);
	    */libc.a:mprec.o(.text);
	    */libc.a:s_isinf.o(.text);
	    */libc.a:s_isnan.o(.text);
	    */libc.a:sbrkr.o(.text);
	    */libc.a:stdio.o(.text);
	    */libc.a:strcmp.o(.text);
	    */libc.a:strlen.o(.text);
	    */libc.a:syscalls.o(.text);
	    */libc.a:writer.o(.text);
	    */libc.a:callocr.o(.text);
	    */libc.a:closer.o(.text);
	    */libc.a:errno.o(.text);
	    */libc.a:fstatr.o(.text);
	    */libc.a:libcfunc.o(.text);
	    */libc.a:lseekr.o(.text);
	    */libc.a:readr.o(.text);

	    */libgcc.a:*(.text);

        */agb_start_from_arm.s.obj(.text);
	} >ewram =0

	.rodata :
    ALIGN(4)
	{

	    */data.s.obj(.rodata);
	    */libm4a.a:*(.rodata);
	    */sounddata2.s.obj(.rodata);
	    */libisagb.a:*(.rodata);
    } >ewram

	.rodata2 :
    ALIGN(4)
	{
	    */libc.a:vfprintf.o(.rodata);
	    */libc.a:dtoa.o(.rodata);
	    */libc.a:impure.o(.rodata);
	    */libc.a:locale.o(.rodata);
	    */libc.a:mprec.o(.rodata);
	    */libc.a:syscalls.o(.rodata);
	} >ewram

	.bss2 0x2039000 (NOLOAD) :
    ALIGN(4)
	{
	    */data.c.obj(.data);
	    */libc.a:sbrkr.o(COMMON);
	} >ewram

	.data 0x3001000 (NOLOAD)  : {
	    */libc.a:impure.o(.data);
	    */libc.a:locale.o(.data);
	    */libc.a:mallocr.o(.data);
	} >iwram

	.bss . (NOLOAD) : {
	    */bss2.s.obj(.bss);
	    */libc.a:syscalls.o(.bss);
	    */libgcc.a:dp-bit.o(.bss);
	    */libgcc.a:fp-bit.o(.bss);
	    */sound3.s.obj(COMMON);
	}>iwram

		end = ABSOLUTE(.);

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
