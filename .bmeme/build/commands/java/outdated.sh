#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/../../common/lib.sh"

if [[ "$1" == "descr" ]]; then
  echo -n "Show outdated dependencies"
  exit 0
fi

if [[ "$1" == "run" ]]; then
  echo -e "============ ${CB}Showing${CN} outdated dependencies ..."
  echo "${LOGPREFIX} CMD ${C_BIN} mvn versions:display-dependency-updates" >> ${LOGFILE}
  ${C_BIN} mvn versions:display-dependency-updates
fi
