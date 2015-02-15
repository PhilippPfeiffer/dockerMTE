#!/bin/bash

set -e

asadmin start-domain
echo "=> Changing admin password to admin"
/change_admin_password.sh
echo "=> Enabling secure admin login"
/enable_secure_admin.sh
echo "=> Restarting Glassfish server"
asadmin stop-domain
echo "=> Starting and running Glassfish server"
asadmin start-domain -w

