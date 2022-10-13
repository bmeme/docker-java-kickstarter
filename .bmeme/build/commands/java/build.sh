#!/usr/bin/env bash

set -e

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
source "${SCRIPT_DIR}/../../common/lib.sh"

if [[ "$1" == "descr" ]]; then
  echo -n "Build application"
  exit 0
fi

if [[ "$1" == "run" ]]; then
  echo -e "============ ${CB}Building${CN} application ..."
  echo "${LOGPREFIX} CMD ${C_BIN} mvn clean test" >> ${LOGFILE}
  ${C_BIN} mvn clean test
fi
