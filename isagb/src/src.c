typedef unsigned char u8;
typedef unsigned int u32;

void
irq_non(void);

void *const irq_func_table[] = {
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
    irq_non,
};

const u32 irq_beki[] = {
    1,
    2,
    4,
    8,
    0x10,
    0x20,
    0x40,
    0x80,
    0x100,
    0x200,
    0x400,
    0x800,
    0x1000,
    0x2000,
};