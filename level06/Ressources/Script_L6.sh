#!/bin/sh

PASS='h4GtNnaMs2kZFN92ymTr2DcJHAzMfzLW25Ep59mq'
echo $PASS
echo $OVERRIDE

sshpass -p $PASS ssh -tt -o StrictHostKeyChecking=no level06@$OVERRIDE -p 4242 << EOF
SHELL=/bin/sh
(python -c "print 'victory\n6233784\n'"; echo cat /home/users/level07/.pass; echo pkill -9 level06)| ./level06
exit
EOF