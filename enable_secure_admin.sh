#!/usr/bin/expect

spawn asadmin enable-secure-admin
expect "admin"
send "admin\n"
expect "password"
send "admin\n"
expect eof
exit
