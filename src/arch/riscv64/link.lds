ENTRY(kstart)
EXTERN(ARCH);

MEMORY
{
    ram (rx) : ORIGIN = 0x80200000, LENGTH = 256M
}

SECTIONS
{
    .text : { 
        TEXT_START = .;
        *(.text.kstart); # Warning: Should allways be at the top of all sections
        *(.text*);
        TEXT_END = .;
    } > ram

    .data : { 
        DATA_START = .;
        *(.data*);
        *(.rodata*);
        KEEP(*(.rodata.ARCH));
        *(.sdata*);
        DATA_END = .;
    } > ram

    .bss (NOLOAD) : {
        BSS_START = .;
        *(.bss*);
        BSS_END = .;
    } > ram

    . = ALIGN(4096);
    STACK_END = .;
    STACK_START = BSS_END + 1M;
}
