OUTPUT_FORMAT(elf32-i386)
ENTRY(_start)

INPUT(boot.obj)
OUTPUT(boot.elf)

SECTIONS{
    . = 0x7c00; /* locator */ 

    /* define a new section .text (we put all shit together, this is BIOS, who cares?) */ 
    .text : AT(0x7C00){
      /* the new section consists of the .text from other object files (the wildcard means `*.o`) 
        for example, boot.o(.text)
      */ 
      *(.text)
    }

    /* the bootable program signature, the magic number 0x7DFE = 510 bytes + 0x7c00 */ 
    .sig : AT(0x7DFE){
      SHORT(0xaa55)
    }
}