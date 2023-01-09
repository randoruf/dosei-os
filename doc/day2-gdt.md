# DAY 2 : Interrupts, IDT, GDT

- intermezzOS *Transitioning to Long Mode* : <https://intermezzos.github.io/book/first-edition/transitioning-to-long-mode.html>
- Building an OS - 8 - Interrupts, IDT, GDT <https://www.youtube.com/watch?v=5LbXClJhxcs>
- Entering 64-Bit Long Mode | Make a 64 bit OS From Scratch!! | Part 5 <https://www.youtube.com/watch?v=sk_ngabpwXQ>
- Write Your Own 64-bit Operating System Kernel #2 - Stack, long mode and printing using C code <https://www.youtube.com/watch?v=wz9CZBeXR6U>
- CS 134 OS—5.7 Paging on x86 <https://www.youtube.com/watch?v=dn55T2q63RU>
- Writing an OS in Rust (First Edition) - Entering Long Mode <https://os.phil-opp.com/entering-longmode/>
- 《操作系统真象》
- 《X86从实模式到保护模式》

## intermezzOS 这本书

这本书不错，教你如何用 GRUB 引导自己的系统 和 用 Rust 写自己的系统。

<https://intermezzos.github.io/book/first-edition/paging.html>


## Real Mode (segment)

The earliest X86 application, for example **BIOS**. 

## 32-bit Protected Mode 


如何从 'protected mode' 到 'long mode' 呢? 

- Set up something called ‘paging’.
- Set up something called a ‘GDT’.
- Jump to long mode.


## Paging (TLB)


## 64-bit Long Mode 

<https://wiki.osdev.org/Setting_Up_Long_Mode>


