#!/bin/bash
#!/usr/bin/expect

set -e

asadmin start-domain
echo "=> Restarting Glassfish server"
asadmin stop-domain
echo "=> Starting and running Glassfish server"
asadmin start-domain
echo "=> Enabling secure admin login"
set password admin
spawn asadmin enable-secure-admin
expect "admin"
send "admin\n"
expect "password"
send "$password\n"
expect eof
exit

