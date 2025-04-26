#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

# Command to run.
COMMAND="${1:-help}"
shift || true

# Download the script, if it exists.
SCRIPT_FILE="/pdsadmin-commands/${COMMAND}.sh"

if [ ! -f "${SCRIPT_FILE}" ]; then
  echo "ERROR: ${COMMAND} not found"
  exit 2
fi

"${SCRIPT_FILE}" "$@"
