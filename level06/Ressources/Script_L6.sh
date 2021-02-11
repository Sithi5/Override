#!/bin/sh
PASS='h4GtNnaMs2kZFN92ymTr2DcJHAzMfzLW25Ep59mq'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level06@$OVERRIDE -p 4242 << EOF
rm /tmp/leve06
SHELL=/bin/sh
(python -c "print 'victory\n6233784\n'"; echo cat /home/users/level07/.pass; echo pkill -9 level06)| ./level06 > /tmp/level06
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level06)\e[39m"
exit
exit
EOF