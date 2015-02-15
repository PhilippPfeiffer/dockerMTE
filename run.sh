#!/bin/bash

set -e

asadmin start-domain
echo "=> Restarting Glassfish server"
asadmin stop-domain
echo "=> Starting and running Glassfish server"
asadmin start-domain -w
echo "=> Enabling secure admin login"
/enable_secure_admin.sh
echo "=> Deploying webapp on Glassfish server"
asadmin deploy MTE.war
