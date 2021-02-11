#!/bin/sh
PASS='Hh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level03@$OVERRIDE -p 4242 << EOF
rm /tmp/leve03
SHELL=/bin/sh
(python -c "print '322424827'"; echo 'cat /home/users/level04/.pass')| ./level03 > /tmp/level03
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level03)\e[39m"
exit
EOF