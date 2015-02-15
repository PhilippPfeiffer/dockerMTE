#!/bin/bash

set -e

asadmin start-domain
echo "=> Deploying App"
asadmin deploy /opt/glassfish4/bin/MTE.war
echo "=> Enabling secure admin login"
/enable_secure_admin.sh
echo "=> Restarting Glassfish server"
asadmin stop-domain
echo "=> Starting and running Glassfish server"
asadmin start-domain -w


