#!/usr/bin/expect

spawn asadmin --user admin change-admin-password
expect "password"
send "\n"
expect "password"
send "admin\n"
expect "password"
send "admin\n"
expect eof
exit
