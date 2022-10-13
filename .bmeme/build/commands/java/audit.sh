#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/../../common/lib.sh"

if [[ "$1" == "descr" ]]; then
  echo -n "Run a security audit"
  exit 0
fi

if [[ "$1" == "run" ]]; then
  echo -e "============ ${CB}Auditing${CN} application ..."
  echo "${LOGPREFIX} CMD ${C_BIN} mvn org.owasp:dependency-check-maven:check" >> ${LOGFILE}
  ${C_BIN} mvn org.owasp:dependency-check-maven:check
fi
