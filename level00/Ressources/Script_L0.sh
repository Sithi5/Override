#!/bin/sh
PASS=level00
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level00@$OVERRIDE -p 4242 << EOF
rm /tmp/level00
(python -c "print '5276'"; echo 'cat /home/users/level01/.pass') | ./level00 > /tmp/level00
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level00)\e[39m"
exit
EOF
