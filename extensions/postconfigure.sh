#!/usr/bin/env bash
echo "Executing actions.cli"

# ENV needed
# JBOSS_HOME
# VAULT_PASS
# VAULT_SALT
# DB_USER
# DB_PASSWORD
 
printenv > $JBOSS_HOME/bin/env.properties
$JBOSS_HOME/bin/jboss-cli.sh --properties=env.propertis --file=$JBOSS_HOME/extensions/actions.cli
