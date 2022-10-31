CC = /usr/local/bin/gcc-11
GCC = /usr/local/bin/x86_64-elf-g++
AS = /usr/local/bin/x86_64-elf-as
LD = /usr/local/bin/x86_64-elf-ld
OBJCOPY = /usr/local/bin/x86_64-elf-objcopy

BOOT_SRC = boot.s 
BOOT_LINKER_SCRIPT = boot.ld
BOOT_OBJ = boot.obj
BOOT_ELF = boot.elf
BOOT_BIN = boot.bin

all: $(BOOT_BIN) boot_nasm.bin

boot_nasm.bin : boot.asm
	nasm boot.asm -f bin -o boot_nasm.bin

$(BOOT_BIN) : boot.s
	$(AS) $(BOOT_SRC) -o $(BOOT_OBJ)
	$(LD) -T $(BOOT_LINKER_SCRIPT)
	$(OBJCOPY) -O binary $(BOOT_ELF) $(BOOT_BIN)

qemu_boot_nasm:
	qemu-system-x86_64 -drive format=raw,file=boot_nasm.img

qemu_boot:
	qemu-system-x86_64 -drive format=raw,file=$(BOOT_BIN)

clean:
	rm $(BOOT_OBJ) $(BOOT_ELF) $(BOOT_BIN) boot_nasm.bin
