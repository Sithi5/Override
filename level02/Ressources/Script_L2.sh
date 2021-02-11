#!/bin/sh
PASS='PwBLgNa8p8MTKW57S7zxVAQCxnCpV8JqTTs9XEBv'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level02@$OVERRIDE -p 4242 << EOF
rm /tmp/leve02
SHELL=/bin/sh
(python -c "print 'dat_wil\nHh74RPnuQ9sa5JAEXgNWCqz7sXGnh5J5M9KfPg3H\n'";echo 'cat /home/users/level03/.pass') | ./level02 > /tmp/level02
echo -e "\e[32m\$(awk 'NR==1 {print; exit}' /tmp/level02)\e[39m"
exit
EOF