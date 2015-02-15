#!/usr/bin/expect

set password admin
spawn asadmin enable-secure-admin
expect "admin"
send "admin\n"
expect "password"
send "$password\n"
expect eof
exit
