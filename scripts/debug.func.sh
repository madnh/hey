#!/usr/bin/env bash

step "> Debug"
#--------------------------------
echo "Current path: ${RUNNING_DIR}"
echo "Hey scripts folder: ${SCRIPTS_DIR}"
echo "Running action: ${ACTION}"

step "> All Hey scripts files:"
#--------------------------------
ls -lah ${SCRIPTS_DIR}

shortLine

success