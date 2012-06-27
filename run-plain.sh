#!/bin/bash

JBOSS_DIR="/home/rliu/produtos/epp/jboss-epp-5.2.0/jboss-as"
JBOSS_CONF="summit-epp"

DATA_DIR="$JBOSS_DIR/server/$JBOSS_CONF/data"
DEMO_DIR="$JBOSS_DIR/server/$JBOSS_CONF/deploy/demo"

# kill previous instances
killall -9 java 2> /dev/null

# clean previous data and deployments
rm -rf "$DATA_DIR" "$DEMO_DIR"
mkdir "$DEMO_DIR"

$JBOSS_DIR/bin/run.sh -c $JBOSS_CONF
